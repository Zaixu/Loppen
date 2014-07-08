/* Should only be loaded with RequireJS. */
/**
 *  Wrapper class for Google Maps Javascript API.
 *  @class MapWrapper
 *  @module Services
 */
define(["async!http://maps.google.com/maps/api/js?sensor=false", "language_module"], function(googapi, lang)
{
    return function MapWrapper(canvasid) 
    {
        // optional parameter
        var canvas = (typeof canvasid === "undefined" ? "marketmap-canvas" : canvasid);
        
        var googlemap;
        var marketmarkers = new Array();
        var currentlocationmarker;
        /**
         *  The function responsible for setting up the module.
         *
         *  Note: Should be the first function to run.
         *  @method init
         */
       this.init = function() 
        {
            googlemap = showMap();
        };
        /**
         * Initializes the map variable.
         * @method showMap 
         * @return {GoogleMap} Returns the google map object.
         */
        var showMap = function() 
        {
            var mapOptions = 
            {
                zoom: 7,
                center: new google.maps.LatLng(56,10), // Approximate location for Denmark
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById(canvas), mapOptions);
            return map;
        };
        /**
         *   Centers the map on a position.
         *   @method centerOn
         *   @param {Number} lat Latitude of position to zoom in on.
         *   @param {Number} long Longitude of position to zoom in on.
         *   @param {Number} zoom Degree of zoom onto the position.
         */
        this.centerOn = function(lat, lng, zoom)
        {
            googlemap.setZoom(zoom);
            googlemap.panTo(new google.maps.LatLng(lat, lng))
        };
        /**
         *  Sets the argument marker as the currentlocationmarker.
         *  @method setCurrentLocationMarker
         *  @param {GoogleMarker} market The marker to set.
         *
         */
        this.setCurrentLocationMarker = function(marker)
        {
            currentlocationmarker = marker;
        };

        /**
         *   A function for creating a marker on the map.
         *
         *   pre: Map should be initialized.
         *   @method createMarker
         *   @param {Number} lat Latitude to place marker on.
         *   @param {Number} lng Longitude to place marker on.
         *   @param {Number} id Id of market (for keeping track).
         *   @param {String} img Path to image for marker.
         *   @return {GoogleMarker} returns the Google Marker.
		 */
        this.createMarker = function(lat, lng, id, img)
        {
            var latlng = new google.maps.LatLng(lat, lng);
            var marker = new google.maps.Marker({
                position: latlng,
                map: googlemap,
                title: id.toString(),
                icon: img});
            marketmarkers.push(marker);
            console.log("added marker with id: "+id.toString()+" successfully");
            return marker;
        };
        /**
         *   Putting an InfoWindow on a marker that opens when clicked.
         *   @method addInfoWindowToMarker
         *   @param {GoogleMarker} marker Market to set infowindow on.
         *   @param {String} windowcontent HTML content for the infowindow.
         *   @param {Function} callback Callback for things like setting a onclick on a button created in infowindow.  
         */
        this.addInfoWindowToMarker = function(marker, windowcontent, callback)
        {
            var infowindow = new google.maps.InfoWindow({content: windowcontent});
            google.maps.event.addListener(marker, 'click', function() 
            {
                infowindow.open(googlemap, marker);
                callback();
            });
        };

        /**
         *   Removes all markers from the map.
         *
         *   Notice: Market and current location markers.
         *   @method removeAllMarkers
         */
        this.removeAllMarkers = function()
        {
            for (var i = 0; i < marketmarkers.length; i++)
            {
                this.removeMarker(marketmarkers[i]);
            }
                this.removeMarker(currentlocationmarker);
        }
        /**
         *  Clears a marker of events, removes it from the map and the marketmarkers array.
         *	@method removeMarker
         *	@param {GoogleMarker} marker Marker to be removed from the map.
         */
        this.removeMarker = function(marker)
        {
            google.maps.event.clearInstanceListeners(marker);
            marker.setMap(null);
            var arraypos = marketmarkers.indexOf(marker);
            if (arraypos != -1)
            {
            	marketmarkers.splice(arraypos, 1);
            }
        };
    };
});