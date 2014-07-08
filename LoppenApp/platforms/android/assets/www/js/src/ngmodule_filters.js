/*
 * Description: Filters...*cough*... Don't know what else to say.
 *
 * \pre Should only be loaded with RequireJS.
 */
define(["angular"], function(angular)
{
    'use strict';
    var module = angular.module("FleaFilters", []);

    /*
     * Description: Truncation of string.
     * Source: http://jsfiddle.net/tUyyx/ slightly modificated.
     * Args:
     *          text: Text to be truncated.
     *          length: The length to truncate to.(Default: 10)
     *          end: String to put after the truncated string.(Default: "...")
     */
    module.filter("truncate", function()
        {
            return function(text, length, end)
            {
                if (isNaN(length))
                    length = 10;

                if (end === undefined)
                    end = "...";

                if (text.length <= length || text.length - end.length <= length)
                {
                    return text;
                }
                else
                {
                    return String(text).substring(0, length - end.length) + end;
                }
            };
        });
        
    console.log("NG: Filters loaded.");
    return module;
});
