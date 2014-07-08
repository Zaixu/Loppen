/* Should only be loaded with RequireJS. */
/**
 *  For fleamarket list page.
 *  @class FleamarketListCtrl
 *  @module ViewModels
 */

define(["angular", "language_module"], function(angular, language)
{
    'use strict';
    // Setup
    var module = angular.module("FleamarketControllers", ["FleaServices"]);
    
    module.controller("FleamarketListCtrl", ["$scope", "RESTFleamarkets", function($scope, RESTFleamarkets)
        {
            // Model data
            // :Labels and headers
            $scope.headerName = language.getString("marketlist_table_header_name");
            $scope.headerCity = language.getString("marketlist_table_header_city");
            $scope.labelSearch = language.getString("marketlist_search_text");
            $scope.headerMarkets = language.getString("marketlist_title");
            $scope.headerCategory = language.getString("marketlist_category_header");
            $scope.labelLoadingTitle = language.getString("marketlist_loading_title");
            $scope.labelLoadingMessage = language.getString("marketlist_loading_message");
            $scope.loadingText = language.getString("marketmap_spinnertext");
            
            // :Category selection
            /**
             *  Categories available to sort by.  
             *
             *  @property categories
             */
            $scope.categories =
            [
                {label: language.getString("marketlist_category_all"), value: "all"},
                {label: language.getString("marketlist_category_trunk"), value: "trunk"},
                {label: language.getString("marketlist_category_flea"), value: "flea"},
                {label: language.getString("marketlist_category_charity"), value: "charity"},
                {label: language.getString("marketlist_category_other"), value: "other"}
            ];
            $scope.categorySelected = "all"; // Default value
            
            // :Item selection
            /**
             *  Item categories available to sort by.  
             *
             *  @property itemsAvailable
             */
            $scope.itemsAvailable =
                [
                    {label: language.getString("marketlist_item_clothes"), value: "clothes"},
                    {label: language.getString("marketlist_item_furniture"), value: "furniture"},
                    {label: language.getString("marketlist_item_antic"), value: "antic"},
                    {label: language.getString("marketlist_item_other"), value: "other"}
                ];
            $scope.itemsSelected = ["clothes", "furniture", "antic", "other"]; // All selected to begin with
            
            // :Free search
            $scope.searchText = "";
            
            // :Raw data
            $scope.fleamarketsLoaded = false;
            /**
             *  The flea markets and their data.
             *
             *  @property fleamarkets
             */
            $scope.fleamarkets = RESTFleamarkets.get({}, function(data)
            {
                // Check data
                if(data.status)
                {
                    // Set data
                    $scope.fleamarkets = data.result;
                    $scope.fleamarketsLoaded = true;
                }
                else
                {
                    alert(language.getErrorString(data.error));
                    $scope.fleamarketsLoaded = true;
                }
            }, function(error)
            {
                alert(language.getString("marketlist_server_error_defaultmsg"));
                $scope.fleamarketsLoaded = true;
            });

            /**
             *  Helper function: Checks for the flea market or the name of its city contains the search string.
             *
             *  For filtering fleamarket on category, items and text in searchbox.
             *
             *  Can't use 'just' normal filtering since have special case "all".
             *  @method _nameOrCityContainsString
             *  @param {Object} fleamarket Fleamarket to investigate.
             *  @param {String} searchText Text to search by.
             */
            function _nameOrCityContainsString(fleamarket, searchText)
            {
                searchText = searchText.toLowerCase();
                if(fleamarket.name.toLowerCase().indexOf(searchText) !== -1 || fleamarket.fleamarket_addresses.city.toLowerCase().indexOf(searchText) !== -1)
                {
                    return true;
                }
                return false;
            }
            // 
            /**
             *  Helper function: Checks for the flea market contains atleast one of the items selected.
             *  @method _containsItems
             *  @param {Object} fleamarket Fleamarket to check.
             *  @private
             */
            function _containsItems(fleamarket)
            {
                for(var i = 0; i < fleamarket.fleamarket_items.length; i++)
                {
                    if($scope.itemsSelected.indexOf(fleamarket.fleamarket_items[i].name) > -1)
                        return true;
                } 
                return false;
            }
            /**
             *  Checks that a flea market should be shown according to filtering.
             *  @method shouldShow
             *  @param {Object} fleamarket Fleamarket to show.
             */
            $scope.shouldShow = function(fleamarket)
            {
                // Category
                if($scope.categorySelected == "all" || fleamarket.category == $scope.categorySelected)  // NOTE: In production version should get from language library.
                {
                    // Search
                    if(_nameOrCityContainsString(fleamarket, $scope.searchText))
                    {
                        if(_containsItems(fleamarket))
                            return true;
                    }
                }
                
                return false;
            };

            /**
             *  Function when list is being pushed/clicked - Navigate to info page.
             * 
             *  @method showFleamarketInfo
             *  @parram id Id of fleamarket.
             *  @param shouldNotChangePage Is used for unit testing where page change is not desired.
             */
            $scope.showFleamarketInfo = function(id, shouldNotChangePage)
            {
                shouldNotChangePage = typeof shouldNotChangePage == 'undefined' ?  false : shouldNotChangePage;
                localStorage.setItem("fleamarket_id", id);

                if(!shouldNotChangePage)
                    window.location.href = "fleamarket_info.html";
            };

            /**
             *  Item category selection.
             *  @method itemSelect
             *  @param item Item that is selected.
             */
            $scope.itemSelect = function(item)
            {
                var indexOfItem = $scope.itemsSelected.indexOf(item.value);
                if(indexOfItem > -1)
                    $scope.itemsSelected.splice(indexOfItem, 1);
                else
                    $scope.itemsSelected.push(item.value);
            };
        }]); 
    
    console.log("NG: Controllers loaded.");
    return module;
});
