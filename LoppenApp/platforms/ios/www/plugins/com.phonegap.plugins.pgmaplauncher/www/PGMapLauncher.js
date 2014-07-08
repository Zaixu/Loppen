cordova.define("com.phonegap.plugins.pgmaplauncher.PGMapLauncher", function(require, exports, module) {﻿(function() {
    
    var LabeledLocation = function(label,lat,lon)
    {
        this.label = label;
        if(lat && lon)
        {
            this.coordinates = {"latitude":lat,"longitude":lon};
        }
    };

    navigator.plugins.pgMapLauncher =
    {
        /**
            \brief Search for locations nearby.
        */
        searchNear:function(searchTerm, nearToCoords )
        {
            var options = {"searchTerm":searchTerm,"center":nearToCoords};
            cordova.exec(null,null,"PGMapLauncher","searchNear",options);
        },

        /**
            \brief Navigate from current location to destination specified.
        */
        getDirections:function(latitude, longitude, name)
        {
            var endLocationObject = { label: name, coordinates: {latitude: latitude, longitude: longitude}};
            cordova.exec(null, null, "PGMapLauncher", "getDirections", [{ endPosition: endLocationObject }]);
        }
    }
})();
});
