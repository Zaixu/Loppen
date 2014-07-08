/*
 *  Description: Top level module for bootstrapping page and choosing which files to load.
 *  \pre Should only be loaded with RequireJS.
 */
define(["angular", "ngmodule_controllers", "ngmodule_directives", "ngmodule_filters", "ngmodule_services"], function(angular)
{
    'use strict';
    var module = angular.module("AppModule", ["FleamarketControllers", "FleaDirectives", "FleaFilters"]);
    
    console.log("NG: App loaded.");
    return module;
});
