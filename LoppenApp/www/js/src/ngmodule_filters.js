/* Should only be loaded with RequireJS. */
/**
 *  Filters to be used by pages.
 *  @class FleaFilters
 *  @module Services
 */
define(["angular"], function(angular)
{
    'use strict';
    var module = angular.module("FleaFilters", []);

    /**
     *  Truncation of string.
     *
     *  Source: http://jsfiddle.net/tUyyx/ slightly modificated.
     *  @method truncate
     *  @param {String} text Text to be truncated.
     *  @param {Number} length Length to truncate to (default 10).
     *  @param {String} end String to put after the truncated string (default: "...").
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
