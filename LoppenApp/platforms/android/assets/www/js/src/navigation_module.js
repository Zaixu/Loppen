/*
Module for native navigation calls
*/

define([],
{
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