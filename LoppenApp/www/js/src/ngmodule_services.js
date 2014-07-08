/* Should only be loaded with RequireJS. */
/* AngularJS services. 
 * For now put in single file but can later be split up.
 */
/**
 *  Utility services.
 *  @class FleaServices
 *  @module Services
 */
define(["angular", "angular-resource"], function(angular)
{
    'use strict';

    // Setup
    var module = angular.module("FleaServices", ["ngResource"]);

    /**
     *  REST services for getting fleamarkets.
     *
     *  At current state can only be used to get list of all markets and not get specific market.
     *  @method RESTFleamarkets
     */
    module.factory("RESTFleamarkets", ["$resource", function($resource)
    {
        // Setup
        var urlDomain = "https://www.crynac.com:8888/REST";
        var dataSource = urlDomain + "/FleaMarkets";
        
        // Return data
        return $resource(dataSource);
    }]);

    console.log("NG: Services loaded.");
    return module;
});