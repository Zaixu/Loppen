/*
 *  Description: For testing of ng services.
 *  
 *  \pre Should only be loaded with RequireJS.
 */
'use strict';

define(["ngmodule_services", "angular-mocks"], function()
{
    describe("Services", function()
    {
        // Setup
        beforeEach(module('FleaServices')); // Ask for module to ready to be injected
        
        // Services
        describe("RESTFleamarkets", function()
        {
            // Setup
            var $httpBackend;
            var fleamarketData = 
                    [
                        {name: "Puppies for sale", city: "Harlev J", category: "trunk", items: ["other"]},
                        {name: "Kittens for sale", city: "Harlev J", category: "trunk", items: ["other"]}
                    ]
            
            // Tests
            it("should ask for data from 'https://www.crynac.com:8888/REST/FleaMarkets'", inject(function(_$httpBackend_, RESTFleamarkets)
            {
                $httpBackend = _$httpBackend_;
                $httpBackend.expectGET("https://www.crynac.com:8888/REST/FleaMarkets").respond(fleamarketData);
                
                RESTFleamarkets.query();
                $httpBackend.flush();
            }));
        });
    });
});