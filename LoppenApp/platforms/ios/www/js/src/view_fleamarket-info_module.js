/**
 * \brief Module for fleamarket info functionality
*/
define(["jquery", "language_module", "domReady", "rest_module", "navigation_module", "auth_module"], function(jeq, lang, domReady, rest, navi, auth)
{
    return function ViewFleamarketInfo()
    {
        // Variables
        var lat;
        var lgn;
        var name;
        var id;
        var starvalue = 0;
        var RATINGMAX = 6;
		
        // Setup
        function language()
        {	
			// Change all elements to reflect chosen language
            $(".page").attr("data-title", lang.getString("marketinfo_title"));
            $("#title > a").text(lang.getString("marketinfo_title"));
            $("#infoTitle > a").text(lang.getString("marketinfo_info_title"));
            $("#name").text(lang.getString("marketinfo_info_name"));
            $("#created").text(lang.getString("marketinfo_info_created"));
            $("#modified").text(lang.getString("marketinfo_info_modified"));
            $("#descriptionTitle > a").text(lang.getString("marketinfo_description_title"));
            $("#addressTitle > a").text(lang.getString("marketinfo_address_title"));
            $("#openingsTitle > a").text(lang.getString("marketinfo_openings_title"));
            $("#navigateButton").text(lang.getString("marketinfo_address_navigate"));
            $("#textreview-label").text(lang.getString("marketinfo_textreview_label"));
            $("#reviewTitle > a").text(lang.getString("marketinfo_review_title"));
            $("#reviewButton").text(lang.getString("marketinfo_review_button"));
        }
		/** \brief Initialises page
    
            \post Page initialised with provided id and data pulled for id and put on page
        */
        this.init = function () 
        {
			// Get id from storage, from which to pull data
            id = localStorage.getItem("fleamarket_id");
			// Initialise language for page
            language();
			// Show stars on page
            showStars(RATINGMAX);
            rest.getMarket(id, "GET", putDescription, error);
            
            // Events
            $("#navigateButton").on("click", function ()
            {
                navigateButtonClick();
            });
            $("#reviewButton").click(reviewButtonClick);
        };
        /*
        \brief function for selecting a certain number of stars
        */
        function selectStar(number)
        {
            $("#rating-div").children().addClass("disabled");
            for (var i = 1; i <= number; i++)
            {
                $("#rating-div img:nth-of-type("+i+")").removeClass("disabled");
            }
        }

        /*
        \brief helper function for use when creating the stars
        wrapping each function creation in a new function (closures in loop)

        */
        function starClickFunc(i)
        {
            return function()
            {
                selectStar(i);
                starvalue = i;
            };
        }


        function showStars(number)
        {
            for (var i = 1; i < number; i++)
            {
                var star = "<img class='star disabled'> </img>";
                var $star = $(star).click(starClickFunc(i));
                $("#rating-div").append($star);
            }
        }

        function navigateButtonClick()
        {
            navi.navigateTo(lat, lng, name, null, null);
        }

        function reviewButtonClick()
        {
            var credentials = auth.loadCredentials();
            if (credentials.success == false)
            {
                auth.prompt();
                return;
            }
            
            // if a rating isnt selected or the review field is empty
            if (starvalue == 0 || starvalue > RATINGMAX || (!$.trim($("#textreview").val())))
            {
                setReviewResponseText(lang.getString("marketinfo_post_review_inputerror"),"red");
                return;
            }
            function onReviewSuccess(data)
            {
                if (data.status == true)
                {
                    setReviewResponseText(lang.getString("marketinfo_post_review_success"),"green");
                }
                else
                {
                    setReviewResponseText(data.error+" - "+lang.getErrorString(data.error), "red");
                }
            }
            function onReviewError()
            {
                setReviewResponseText("ajax call failed","red");
            }

            rest.postMarketReview(credentials.username, credentials.password, 2, starvalue, $("#textreview").val(), onReviewSuccess, onReviewError);
        }

        function setReviewResponseText(text, color)
        {
            var element = $("#responseSpan");
            element.text(text);
            element.css("color", color);
        }

        function putDescription(data) 
        {
            domReady(function()
            {
				// Insert all pulled data into page
                var fleamarket = data.result[0];
                
                $("#logo").attr("src", fleamarket.logo);
                $("#nameText").append(fleamarket.name);

                $("#createdText").append(new Date(fleamarket.created_on).toLocaleString());

                $("#modifiedText").append(new Date(fleamarket.modified_on).toLocaleString());
                $("#descriptionText").text(fleamarket.description);

                $("#streetText").append(fleamarket.fleamarket_addresses.street);
                $("#cityText").append(fleamarket.fleamarket_addresses.postcode + " " + fleamarket.fleamarket_addresses.city);

                lat = fleamarket.fleamarket_addresses.latitude;
                lng = fleamarket.fleamarket_addresses.longitude;
                name = data.result.name;
                
                $.each(fleamarket.fleamarket_openings, function (key)
                {
                    //$("#openingsText").append("<p>" + new Date(data[0].fleamarket_openings[key].from).toLocaleString() + " -> " + new Date(data[0].fleamarket_openings[key].to).toLocaleString() + "</p>");
                    $("#openingsText").append("<p>" + fleamarket.fleamarket_openings[key].description + "</p>");
                });
            });
        }

        function error()
        {
            alert("Error: Fetching data");
        }

    };

    
});
