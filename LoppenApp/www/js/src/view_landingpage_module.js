/* Should only be loaded with RequireJS. */
/**
 *  ViewModels
 *  @module ViewModels
 *  @main ViewModels
 */
/**
 *  Module for index page functionality
 *  @class ViewLandingPage
 */
define(["jquery","language_module", "auth_module"], function(jeq,lang, auth)
{
	/**
	 *   Change all elements on page according to current language.
	 *   @method language
	 */
	function language()
	{

		$("#title_home").html(lang.getString("home_title"));
		$("#index-div > #index-header").text(lang.getString("landingpage_header"));
		$("#index-div > #index-subheader").text(lang.getString("landingpage_subheader"));
		$("#index-platforms-div > p").text(lang.getString("landingpage_platformstext"));
		$("#index-navigationtext").text(lang.getString("landingpage_navigationtext"));
		$("#loginButton").text(lang.getString("landingpage_loginbutton"));
		$("#settingsButton").text(lang.getString("landingpage_settingsbutton"));
		var indextext = $.parseHTML(lang.getString("landingpage_infotext"));

		$("#index-text").append(indextext);
	}
	
    /**
	 *  Initializes buttons.
	 *  @method buttons
	 */
	function buttons()
	{
		// Bind click bunction to auth button
		$("#loginButton").on("click", function ()
                {	
                    // Open auth
                    auth.prompt();

                    // Remove active state
                    $("#loginButton").removeClass("ui-btn-active");
                });
	}
    
	/**
	 * Initializes the class.
	 * @method init
	 */
	function init()
	{
		// Initialise language
		language();
		// Initialise buttons
		buttons();
	}
	// export functions
	return {init : init};
});
