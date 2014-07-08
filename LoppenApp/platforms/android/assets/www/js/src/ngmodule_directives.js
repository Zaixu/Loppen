/*
 *  Description: Utility directives.
 *  \pre Should only be loaded with RequireJS.
 */
 
define(["angular", "jquery", "jquery-mobile"], function(angular)
{
    'use strict';
    // Setup
    var module = angular.module("FleaDirectives", [/* Dependencies */]);
    
    // Directives
    /*
     * Description: Refreshes element after view have been updated by AngularJS.
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
    
    /*
     * Description: Refreshes selectbox after view have been updated by AngularJS.
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
