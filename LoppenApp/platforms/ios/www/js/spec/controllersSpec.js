/*
 *  Description: For testing of ng controllers.
 *  
 *  \pre Should only be loaded with RequireJS.
 */
'use strict';

define(["ngmodule_controllers", "ngmodule_services", "angular-mocks", "language_module"], function(c, ms, m, lang)
{
    describe("Controllers", function()
    {
        // Helpers
        /*
         *  Description: Gets item from list with property set to value.
         */
        function getItemFromArray(list, property, value)
        {
            for(key in list)
            {
                if(list[key][property] == value)
                    return list[key];
            }
        }
        
        // Matchers
        beforeEach(function()
        {
            this.addMatchers(
            {
                /*
                 *  Description: Checks for data and not reference being the same.
                 */
                toEqualData: function(expected) // From AngularJS tutorial step 11: http://docs.angularjs.org/tutorial/step_11
                {
                    return angular.equals(this.actual, expected);
                },
                /*
                 *  Description: Test for the list have same values for the property given.
                 */
                toHaveSameValuesForProperty: function(list, property)
                {
                    for(var i = 0; i < this.actual.length; i++)
                    {
                        var propFound = false;
                        for(var n = 0; n < list.length; n++)
                        {
                            if(this.actual[i][property] == list[n][property])
                            {
                                propFound = true;
                                break;
                            }
                        }
                        if(!propFound)
                        {
                            this.message = function()
                            {
                                var propertyValues = "";
                                for(var k = 0; k < list.length; k++)
                                    propertyValues += list[k][property] + "; ";
                                return [ "Expected " + jasmine.pp(this.actual[i][property]) + " to be be one of the properties: " + propertyValues];
                            };
                            return false;
                        }
                    }
                    return true;
                }
            });
        });
        
        // Setup
        beforeEach(module('FleamarketControllers')); // Ask for module to ready to be injected
        
        // Controllers
        describe("FleamarketListCtrl", function()
        {
            // Setup
            var scope;
            var ctrl;
            var $httpBackend;
            var fleamarketData = 
                    {
                        "status": true, "error": 0,
                        "result": 
                        [
                            {
                                "name": "Puppies for sale", "fleamarket_addresses": {"city": "Harlev J"}, "category": "trunk",
                                "fleamarket_items": [{"name": "furniture"}, {"name": "antic"}]
                            },
                            {
                                "name": "Kittens for sale", "fleamarket_addresses": {"city": "Harlev J"}, "category": "trunk",
                                "fleamarket_items": [{"name": "furniture"}, {"name": "antic"}]
                            }
                        ] 
                    }

            beforeEach(inject(function(_$httpBackend_, $rootScope, $controller)
            {
                $httpBackend = _$httpBackend_;
                $httpBackend.expectGET("https://www.crynac.com:8888/REST/FleaMarkets").respond(fleamarketData);

                scope = $rootScope.$new();
                ctrl = $controller("FleamarketListCtrl", {$scope: scope});
            }));
            
            // Tests
            // :Model data
            describe("Language strings", function()
            {
                it("should have header for name set as the same as 'marketlist_table_header_name' from language module", function()
                {
                    expect(scope.headerName).toBe(lang.getString("marketlist_table_header_name"));
                });
                
                it("should have header for city set as the same as 'marketlist_table_header_city' from language module", function()
                {
                    expect(scope.headerCity).toBe(lang.getString("marketlist_table_header_city"));
                });
                
                it("should have label for search set as the same as 'marketlist_search_text' from language module", function()
                {
                    expect(scope.labelSearch).toBe(lang.getString("marketlist_search_text"));
                });
                
                it("should have header for markets set as the same as 'marketlist_title' from language module", function()
                {
                    expect(scope.headerMarkets).toBe(lang.getString("marketlist_title"));
                });
                
                it("should have header for category set as the same as 'marketlist_category_header' from language module", function()
                {
                    expect(scope.headerCategory).toBe(lang.getString("marketlist_category_header"));
                });
                
                it("should have loading title set as the same as 'marketlist_loading_title' from language module", function()
                {
                    expect(scope.labelLoadingTitle).toBe(lang.getString("marketlist_loading_title"));
                });
                
                it("should have loading message set as the same as 'marketlist_loading_message' from language module", function()
                {
                    expect(scope.labelLoadingMessage).toBe(lang.getString("marketlist_loading_message"));
                });
                
                it("should have 'all' category label property from 'categories' set as the same as 'marketlist_category_all' from language module", function()
                {
                    expect(getItemFromArray(scope.categories, "value", "all").label).toBe(lang.getString("marketlist_category_all"));
                });
                
                it("should have 'trunk' category label property from 'categories' set as the same as 'marketlist_category_trunk' from language module", function()
                {
                    expect(getItemFromArray(scope.categories, "value", "trunk").label).toBe(lang.getString("marketlist_category_trunk"));
                });
                
                it("should have 'flea' category label property from 'categories' set as the same as 'marketlist_category_flea' from language module", function()
                {
                    expect(getItemFromArray(scope.categories, "value", "flea").label).toBe(lang.getString("marketlist_category_flea"));
                });
                
                it("should have 'charity' category label property from 'categories' set as the same as 'marketlist_category_charity' from language module", function()
                {
                    expect(getItemFromArray(scope.categories, "value", "charity").label).toBe(lang.getString("marketlist_category_charity"));
                });
                
                it("should have 'other' category label property from 'categories' set as the same as 'marketlist_category_other' from language module", function()
                {
                    expect(getItemFromArray(scope.categories, "value", "other").label).toBe(lang.getString("marketlist_category_other"));
                });
                
                it("should have 'clothes' item label property from 'itemsAvailable' set as the same as 'marketlist_item_clothes' from language module", function()
                {
                    expect(getItemFromArray(scope.itemsAvailable, "value", "clothes").label).toBe(lang.getString("marketlist_item_clothes"));
                });
                
                it("should have 'furniture' item label property from 'itemsAvailable' set as the same as 'marketlist_item_furniture' from language module", function()
                {
                    expect(getItemFromArray(scope.itemsAvailable, "value", "furniture").label).toBe(lang.getString("marketlist_item_furniture"));
                });
                
                it("should have 'antic' item label property from 'itemsAvailable' set as the same as 'marketlist_item_antic' from language module", function()
                {
                    expect(getItemFromArray(scope.itemsAvailable, "value", "antic").label).toBe(lang.getString("marketlist_item_antic"));
                });
                
                it("should have 'other' item label property from 'itemsAvailable' set as the same as 'marketlist_item_other' from language module", function()
                {
                    expect(getItemFromArray(scope.itemsAvailable, "value", "other").label).toBe(lang.getString("marketlist_item_other"));
                });
            });
            
            it("should contain the fleamarkets from the REST request", function()
            {
                $httpBackend.flush();
                expect(scope.fleamarkets).toEqual(fleamarketData.result);
            });
            
            it("should have all 5 categories available as selections", function()
            {
                var valueList = 
                        [
                            {value: "all"},
                            {value: "trunk"},
                            {value: "flea"},
                            {value: "charity"},
                            {value: "other"}
                        ]
                expect(scope.categories).toHaveSameValuesForProperty(valueList, "value");
            });
            
            it("should have a default category of 'all'", function()
            {
                expect(scope.categorySelected).toBe("all");
            });
            
            it("should have all 4 items available as selections", function()
            {
                var valueList = 
                        [
                            {value: "clothes"},
                            {value: "furniture"},
                            {value: "antic"},
                            {value: "other"}
                        ]
                expect(scope.itemsAvailable).toHaveSameValuesForProperty(valueList, "value");
            });
            
            it("should have all item categories selected to begin with", function()
            {
                expect(scope.itemsSelected).toEqual(["clothes", "furniture", "antic", "other"]);
            });
            
            it("should have blank search text to begin with", function()
            {
                expect(scope.searchText).toEqual("");
            });
            
            // :Functions
            // ::shouldShow
            it("'shouldShow' function should return true for puppies market when searching for 'puppies'", function()
            {
                scope.searchText = "puppies";
                var fleamarket = {name: "Puppies for sale", fleamarket_addresses: {city: "Harlev J"}, category: "trunk", fleamarket_items: [{name: "other"}]};
                expect(scope.shouldShow(fleamarket)).toBe(true);
            });
            
            it("'shouldShow' function should return false for kitten market when searching for 'puppies'", function()
            {
                scope.searchText = "puppies";
                var fleamarket = {name: "Kittens for sale", fleamarket_addresses: {city: "Harlev J"}, category: "trunk", fleamarket_items: [{name: "other"}]};
                expect(scope.shouldShow(fleamarket)).toBe(false);
            });
            
            it("'shouldShow' function should show market in 'Harlev' when searching for 'Harlev'", function()
            {
                scope.searchText = "Harlev";
                var fleamarket = {name: "Kittens for sale", fleamarket_addresses: {city: "Harlev J"}, category: "trunk", fleamarket_items: [{name: "other"}]};
                expect(scope.shouldShow(fleamarket)).toBe(true);
            });
            
            it("'shouldShow' function should not show market in 'Harlev' when searching for 'Aalborg'", function()
            {
                scope.searchText = "Aalborg";
                var fleamarket = {name: "Kittens for sale", fleamarket_addresses: {city: "Harlev J"}, category: "trunk", fleamarket_items: [{name: "other"}]};
                expect(scope.shouldShow(fleamarket)).toBe(false);
            });
            
            it("'shouldShow' function should show charity market when 'charity' category is selected", function()
            {
                scope.categorySelected = "charity";
                var fleamarket = {name: "Kittens for sale", fleamarket_addresses: {city: "Harlev J"}, category: "charity", fleamarket_items: [{name: "other"}]};
                expect(scope.shouldShow(fleamarket)).toBe(true);
            });
            
            it("'shouldShow' function should not show charity market when 'trunk' category is selected", function()
            {
                scope.categorySelected = "trunk";
                var fleamarket = {name: "Kittens for sale", fleamarket_addresses: {city: "Harlev J"}, category: "charity", fleamarket_items: [{name: "other"}]};
                expect(scope.shouldShow(fleamarket)).toBe(false);
            });
            
            it("'shouldShow' function should show market with only furniture when 'furniture' is selected as one of the items to show", function()
            {
                scope.itemsSelected = ["furniture"];
                var fleamarket = {name: "Kittens for sale", fleamarket_addresses: {city: "Harlev J"}, category: "charity", fleamarket_items: [{name: "furniture"}]};
                expect(scope.shouldShow(fleamarket)).toBe(true);
            });
            
            it("'shouldShow' function should not show market with only furniture when 'antic' is selected as one of the items to show", function()
            {
                scope.itemsSelected = ["antic"];
                var fleamarket = {name: "Kittens for sale", fleamarket_addresses: {city: "Harlev J"}, category: "charity", fleamarket_items: [{name: "furniture"}]};
                expect(scope.shouldShow(fleamarket)).toBe(false);
            });
            
            // ::showFleamarketInfo
            it("'showFleamarketInfo' should save 'id' in localStorage under 'fleamarket_id'", function()
            {
                localStorage.setItem("fleamarket_id", 22);
                scope.showFleamarketInfo(11, true);
                expect(parseInt(localStorage.getItem("fleamarket_id"))).toEqual(11);
            });
            
            // ::itemSelect
            it("'itemSelect' should add 'clothes' to 'itemsSelected' when it is not already selected", function()
            {
                scope.itemsSelected = [];
                scope.itemSelect({value: "clothes"});
                expect(scope.itemsSelected[0]).toEqual("clothes");
            });
            
            it("'itemSelect' should remove 'clothes' to 'itemsSelected' when it is already selected", function()
            {
                scope.itemsSelected = ["clothes"];
                scope.itemSelect({value: "clothes"});
                expect(scope.itemsSelected.length).toEqual(0);
            });
        });
    });
});