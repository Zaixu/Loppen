/* Should only be loaded with RequireJS. */
/**
 *  @module Directives
 *  @main Directives
 */
/**
 *  Utility directives.
 *  @class FleaDirectives
 *  @module Directives
 */
define(["angular", "jquery", "jquery-mobile"], function(angular)
{
    'use strict';
    // Setup
    var module = angular.module("FleaDirectives", [/* Dependencies */]);
    
    // Directives
    /**
     *  Refreshes element after view have been updated by AngularJS.
     *  @method jqmRefresh
     */
    module.directive('jqmRefresh', function () 
    {
        return function ($scope, el)
        {
            setTimeout(function()
            {
                $scope.$on('$viewContentLoaded', el.trigger("create"));
            }, 1);
        };
    });
    
    /**
     *  Description: Refreshes selectbox after view have been updated by AngularJS.
     *  @method selectRefresh
     */
    module.directive('selectRefresh', function () 
    {
        return function ($scope, el)
        {
            setTimeout(function()
            {
                var select = el.selectmenu();
                
                $scope.$on('$viewContentLoaded', select.selectmenu('refresh', true));
            }, 1);
        };
    });
            
    console.log("NG: Directives loaded.");
    return module;
});
