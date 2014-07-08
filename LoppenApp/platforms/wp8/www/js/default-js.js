/**
    \brief For default JS libraries.

    \pre Should only be loaded with RequireJS.
*/
require.config(
    {
        baseUrl: 'js/src',
        paths: 
        {
            async: '../lib/requirejs-plugins/async',
            font: '../lib/requirejs-plugins/font',
            goog: '../lib/requirejs-plugins/goog',
            image: '../lib/requirejs-plugins/image',
            json: '../lib/requirejs-plugins/json',
            noext: '../lib/requirejs-plugins/noext',
            mdown: '../lib/requirejs-plugins/mdown',
            domReady : '../lib/requirejs-plugins/domReady',
            propertyParser: '../lib/requirejs-plugins/propertyParser',
            markdownConverter: '../lib/requirejs-plugins/markdownConverter',
            geocoder_module : './CrynacJavaScript/geocoder_module',
            language_module : './CrynacJavaScript/language_module',
            rest_module : './CrynacJavaScript/rest_module',
            validator_module : './CrynacJavaScript/validator_module',
            mapwrapper_module : './CrynacJavaScript/mapwrapper_module',
            auth_module : './CrynacJavaScript/auth_module',
            jquery : '../lib/jquery',
            'jquery-impromptu' : '../lib/jquery-impromptu',
            'jquery-mobile' : '../lib/jquery-mobile',
            'jquery-mobile-simpledialog2' : '../lib/jquery-mobile-simpledialog2'
        },
        shim:
            {
                "jquery-mobile":
                    {
                        deps: ["jquery", "init"]
                    },
                "jquery-mobile-simpledialog2":
                    {
                        deps: ["jquery", "jquery-mobile"]
                    }
            }
    });
require(["jquery", "jquery-mobile", "navigationmenu", "init", "jquery-mobile-simpledialog2"],
function ($)
{
    // Tweaks to make jquery mobile cooperate with phonegap
    // Prevents all anchor click handling
    $.mobile.linkBindingEnabled = false;

    // Disabling this will prevent jQuery Mobile from handling hash changes
    $.mobile.hashListeningEnabled = false;
    //  To support cross-domain requests
    $.support.cors = true;
    $.mobile.allowCrossDomainPages = true;
    // For removing a bit of the delay between page transitions
    $.mobile.buttonMarkup.hoverDelay = 0;

    // for showing the page only when it's fully loaded asynchronously
    $(".page").show();

    console.log("All default libraries loaded.");
});