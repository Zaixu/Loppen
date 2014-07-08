/*
 *  Description: For testing of navigationmenu.
 *  
 *  \pre Should only be loaded with RequireJS.
 */
 'use strict';
 
define(["navigationmenu", "language_module"], function (navmenu, lang)
{
    describe("Navigationmenu", function()
    {
        // Helpers
        function arraySize(array)
        {
            var size = 0;
            for (var key in array)
                size++;

            return (size);
        }
        
        // Tests
        // :Model
        it("should have 4 menu points", function() // So know when extra point has been added so have to update tests
        {
            expect(arraySize(navmenu.menu)).toBe(4);
        });
        
        it("should have home title set as the same as 'navigation_menu_item_home_title' from language module", function()
        {
            expect(navmenu.menu["home"].title).toBe(lang.getString("navigation_menu_item_home_title"));
        });
        
        it("should have map title set as the same as 'navigation_menu_item_map_title' from language module", function()
        {
            expect(navmenu.menu["map"].title).toBe(lang.getString("navigation_menu_item_map_title"));
        });
        
        it("should have marketlist title set as the same as 'navigation_menu_item_marketlist_title' from language module", function()
        {
            expect(navmenu.menu["marketlist"].title).toBe(lang.getString("navigation_menu_item_marketlist_title"));
        });
        
        it("should have about title set as the same as 'navigation_menu_item_about_title' from language module", function()
        {
            expect(navmenu.menu["about"].title).toBe(lang.getString("navigation_menu_item_about_title"));
        });
    });
});