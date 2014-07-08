/**
 * \brief Module for index page functionality
*/
define(["./jquery","./language_module", "./auth_module"], function(jeq,lang, auth)
{
	function language()
	{
		// Change all elements on page to chosen language
		$("#title_home").html(lang.getString("home_title"));
		$("#index-div > #index-header").text(lang.getString("landingpage_header"));
		$("#index-div > #index-subheader").text(lang.getString("landingpage_subheader"));
		$("#index-platforms-div > p").text(lang.getString("landingpage_platformstext"));
		$("#index-navigationtext").text(lang.getString("landingpage_navigationtext"));
		var indextext = $.parseHTML(lang.getString("landingpage_infotext"));

		$("#index-text").append(indextext);
	}

	function buttons()
	{
		// Bind click bunction to auth button
		$("#loginButton").on("click", function ()
        {	
			// Open auth
            auth.prompt();
            // remove active state
            $("#loginButton").removeClass("ui-btn-active");
        });
	}
	
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