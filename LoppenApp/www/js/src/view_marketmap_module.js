/* Should only be loaded with RequireJS. */
/**
 *   Responsible for the view of the market map page.
 *   @class ViewMarketMap
 *   @module ViewModels
 */
define(["jquery", "language_module", "mapwrapper_module", "rest_module", "navigation_module"], function(jeq, lang, mapwrap, rest, navmod)
{
    return function ViewMarketMap()
    {
        var map;
        /**
         *  Initializes the ViewMarketMap module.
         *  @method init
         */
        this.init = function()
        {
            map = new mapwrap();
            map.init();
            $("#marketmap-header").text(lang.getString("marketmap_title"));
            $("#spinner-text").text(lang.getString("marketmap_spinnertext"));
            
            function onCurrentPositionError(error)
            {
                console.log("failed to get position - error: "+error.message);
            }

            function onCurrentPositionSuccess(pos)
            {
                addCurrentLocationMarker(pos.coords.latitude, pos.coords.longitude);
            }

            function onGetMarketsSuccess(data)
            {
                populateMarketMap(data);
                $("#spinner-background").hide();
            }

            function onGetMarketsError()
            {
                alert(lang.getString("marketmap_getmarkets_error"));
            }

            rest.getAllMarkets(onGetMarketsSuccess,onGetMarketsError);
            navigator.geolocation.getCurrentPosition(onCurrentPositionSuccess, onCurrentPositionError);
        };
        /**
         *  Populates the map with all of our markets.
         *  
         *  pre: Map should be initialized.
         *  @method populateMarketMap
         *  @param {Object} markets A list of markets with every market as a javascript object.
         */
        populateMarketMap = function(markets)
        {
            for (var i = 0; i < markets.length; i++)
            {
                var lat = markets[i].addressInfo.latitude;
                var lng = markets[i].addressInfo.longitude;
                var name = markets[i].name;
                var marketID = "map-marker-"+markets[i].id;
            
                var content = "<div class='map-marker' id='"+marketID+"'>"+
                                "<div class='logo'><img src='"+markets[i].logo+"'/></div>"+
                                "<p class='title'>"+markets[i].name+"</p>"+
                                "<div>"+
                                "<p class='description'>"+markets[i].description+"</p>"+
                                "<p class='address'>"+markets[i].addressInfo.street+"<br>"+markets[i].addressInfo.postcode+" "+markets[i].addressInfo.city+"</p>"+
                                "</div>"+
                                "<button class='navigatebutton'>"+lang.getString("marketinfo_address_navigate")+"</button>"+
                                "</div>";
                var marker = map.createMarker(lat, lng, marketID, "img/logo-mini.png");
                
                // Sets navigateTo for the navigate button in the infowindow, returns function to preserve market id variable (closure in loops)
                function callback(marketID)
                {
                    return function()
                    {
                        $("#"+marketID+" > .navigatebutton").click(function ()
                        {
                            navmod.navigateTo(lat, lng, name, null, null);
                        });
                    }
                }
                map.addInfoWindowToMarker(marker, content, callback(marketID));
            }
        };

        /**
         *  Adds the users current position to the map and zooms into the location.
         *
         *  pre: Map should be initialized.
         *  @method addCurrentLocationMarker
         *  @param {number} lat Latitude of self.
         *  @param {number} lng Longitude of self
         */
        addCurrentLocationMarker = function(lat, lng)
        {
            var content = "<div class='map-marker currentlocation'>"+
                            "<p class='title'>"+
                            lang.getString("marketmap_currentlocationtext")+
                            "</p>"+
                          "</div>";
            var img = "img/user-icon.png";

            var marker = map.createMarker(lat, lng, "map-marker-self", img);
            map.setCurrentLocationMarker(marker);
            map.addInfoWindowToMarker(marker, content, null);
            map.centerOn(marker.position.lat(), marker.position.lng(), 10);
        };
    }
});