/* Should only be loaded with RequireJS. */
/**
 *   Module for native navigation calls.
 *   @class NavigationModule
 *   @module Services
 */
define([],
{
    /**
     *  Function handling the navigate to event for the different platforms.
     *
     *  pre: Phonegap is initialized.
     *
     *  post: A native application responsible for handling map events is opened.
     *  @method navigateTo
     *	@param {Number} lat Latitude of position to navigate to.
     *	@param {Number} lng Longitude of position to navigate to.
     *  @param {String} name Name of position to navigate to.
     *	@param {Function} successFn Function to run after position was navigated to.
     *	@param {Function} errorFn Function run when if an error happened (exception was thrown).
     */
    navigateTo: function(lat, lng, name, successFn, errorFn)
    {
        console.log("NavigateTo was called with lat: " + lat + ", ln: " + lng);
        try
        {
            if (device.platform == "Android")
            {
                CDV.WEBINTENT.startActivity(
                {
                    action: CDV.WEBINTENT.ACTION_VIEW,
                    url: "geo:0,0?q="+lat+","+lng}, 
                    successFn, 
                    errorFn
                );
            }
            else if (device.platform == "iOS")
            {
                var url = "maps:daddr="+lat+","+lng;                
                typeof successFn === 'function' && successFn();
                window.location = url;
            }
            // Windows Phone 7 and 8
            else if (device.platform == "Win32NT" || device.platform == "WinCE")
            {
                navigator.plugins.pgMapLauncher.getDirections(lat, lng, name); // Simplified
                typeof successFn === 'function' && successFn();
            }
        }
        catch(e)
        {
            typeof errorFn === 'function' && errorFn();
            console.log("error caught: "+e);
        }
    }
});
