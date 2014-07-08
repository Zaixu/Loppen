package com.crynac.loppen.plugin;
import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.PluginResult;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.content.Intent;
import android.net.Uri;
import android.util.Log;

public class NavigationPlugin extends CordovaPlugin 
{
	private static final String TAG = "NavigationPlugin";
	@Override
	public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException
	{
		try
		{
			if (action.equals("navigate"))
			{
				Log.d(TAG, TAG+" Start");
				return navigateTo(args.getString(0),args.getString(1),callbackContext);
			}
			else
				return false;
		}
		catch (JSONException e)
		{
			Log.e(TAG, e.getMessage());
			return false;
		}
	}
	
	private boolean navigateTo(String latitude, String longitude, CallbackContext callbackContext)
	{
		if (latitude != null && longitude != null && latitude.length() > 0 && longitude.length() > 0)
		{
			Log.d(TAG, TAG+" received latitude: "+latitude+" and longitude: "+longitude);
			Intent intent = new Intent(android.content.Intent.ACTION_VIEW, 
                Uri.parse("geo:0,0?q="+latitude+"+,"+longitude));
			cordova.getActivity().startActivity(intent);
			callbackContext.success();
		
			return true;
		}
		String error = TAG+" received null inputs";
		Log.e(TAG, error);
		callbackContext.error(error);
		return false;
	}
	
}
