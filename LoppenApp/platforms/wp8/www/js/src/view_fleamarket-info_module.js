/* Should only be loaded with RequireJS. */
/**
 *   Responsible for the view of the flea market info page.
 *   @class ViewFleamarketInfo
 *   @ViewModels
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
        var RATINGMAX = 5;
		
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
            $("#userReviewsTitle > a").text(lang.getString("marketinfo_userreviews_header"));
            $("#reviewButton").text(lang.getString("marketinfo_review_button"));
        }
		/** 
         *  Initializes page.
         *
         *  post: Initialised with provided id and data pulled for id and put on page.
         *  @method init
         */
        this.init = function () 
        {
			// Get id from storage, from which to pull data
            id = localStorage.getItem("fleamarket_id");
			// Initialise language for page
            language();
			// Show stars on page
            showStars(RATINGMAX, "#rating-div", true);
            rest.getMarket(id, putDescription, error);
            
            // Events
            $("#navigateButton").on("click", function ()
            {
                navigateButtonClick();
            });
            $("#reviewButton").click(reviewButtonClick);
        };
        
        /** 
         *  Selects a number of stars for giving a rating.
         *
         * 
         *  @method selectStar
         *  @param {Number} number Number of stars to highlight.
         */
        function selectStar(number)
        {
            $("#rating-div").children().addClass("disabled");
            for (var i = 0; i <= number; i++)
            {
                $("#rating-div img:nth-of-type("+i+")").removeClass("disabled");
            }
        }

        /**
         * Helper function for use when creating the stars.
         *
         * Wrapping each function creation in a new function (closures in loop).
         *
         * Selects and sets starvalue for use when sending a review.
         *
         * @method starClickFunc
         * @param {Number} i Number of stars to select.
         */
        function starClickFunc(i)
        {
            return function()
            {
                selectStar(i);
                starvalue = i;
            };
        }

        /**
         *   Show a number of rating stars on a div.
         *
         *   Determines if they should be clickable for submitting a rating.
         *   @method showStars
         *   @param {Number} number Number of stars to show.
         *   @param {String} attachdiv The div the stars are to be attached to.
         *   $param {Boolean} clickable Are the stars for setting the starvalue or not (when submitting a rating).
         */
        function showStars(number, attachdiv, clickable)
        {
            for (var i = 0; i < number; i++)
            {
                var star = "<img class='star disabled' src='img/star.png'> </img>";
                if (clickable)
                {
                    var $star = $(star).click(starClickFunc(i+1));
                    $(attachdiv).append($star);
                }
                else
                {
                    $(attachdiv).append(star);
                }
            }
        }
        /**
         *  Function called when clicking the navigate button.
         *  @method navigateButtonClick
         */
        function navigateButtonClick()
        {
            navi.navigateTo(lat, lng, name, null, null);
        }

        /**
         *  Function called when clicking the review button.
         *  @method reviewButtonClick
         */
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

            rest.postMarketReview(credentials.username, credentials.password, id, starvalue, $("#textreview").val(), onReviewSuccess, onReviewError);
        }
        
        /**
         *  Function for setting a response text to the user.
         *
         *  @method setReviewResponseText
         *  @param {String} text Informative text to be shown to the user.
         *  @param {String} color Color of the text.
         */
        function setReviewResponseText(text, color)
        {
            var element = $("#responseSpan");
            element.text(text);
            element.css("color", color);
        }
        
        /**
         *  Puts the mean rating of the market in the top and the reviews in the bottom.
         *  @method putReviews
         *  @param {Object} fleamarket takes a list of fleamarket review objects .
         */
        function putReviews(fleamarket)
        {
            userreviewsdiv = $("#userReviews-div");
            var mean = 0;
            $.each(fleamarket.fleamarket_reviews, function(key)
            {
                var id = "userreview-"+fleamarket.fleamarket_reviews[key].users.users_id;
                var starsdiv = "#"+fleamarket.fleamarket_reviews[key].users.users_id+" > .userreview-stars"
                var reviewcontent = "<div class='userreview' id='"+fleamarket.fleamarket_reviews[key].users.users_id+"'>"+
                                "<p class='userreview-user'>"+fleamarket.fleamarket_reviews[key].users.email+"</p>"+
                                "<div class='userreview-stars'></div>"+
                                "<hr>"+
                                "<p class='userreview-text'>"+fleamarket.fleamarket_reviews[key].text+"</p>"
                                "</div>";
                userreviewsdiv.append(reviewcontent);
                showStars(fleamarket.fleamarket_reviews[key].stars,starsdiv, false);
                mean += fleamarket.fleamarket_reviews[key].stars;
            });
            mean = parseInt(mean/fleamarket.fleamarket_reviews.length);
            showStars(mean, "#reviewmean-div",false)
        }
        
        /**
         *  Show all the data on the page.
         *  @method putDescription
         *  @param {Object} data Takes a single fleamarket object.
         */
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

                putReviews(fleamarket);

                name = fleamarket.name;
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
