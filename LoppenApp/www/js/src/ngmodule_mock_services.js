/* Should only be loaded with RequireJS. */
/**
 *  Mock service.
 *  @class (MOCK)FleaServices
 *  @module Services
 */

define(["angular", "angular-resource"], function(angular)
{
    'use strict';

    // Setup
    var module = angular.module("FleaServices", ["ngResource"]);

    // Services
    /**
     *  Description: REST services for getting fleamarkets.
     *
     *  At current state can only be used to get list of all markets and not get specific market.
     *  @method RESTFleamarkets (module.factory)
     */
    module.factory("RESTFleamarkets", ["$resource", function($resource)
    {
        // Setup
        var fileSource = "js/src/MockData/fleamarkets.json";
        
        return $resource(fileSource);
    }]);

    console.log("NG: Mock services loaded.");
    return module;
});