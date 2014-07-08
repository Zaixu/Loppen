/*
 *  Description: For testing of ng filters.
 *  
 *  \pre Should only be loaded with RequireJS.
 */
 'use strict';
 
 
define(["ngmodule_filters", "angular-mocks"], function()
{
    describe("Filters", function()
    {
        // Setup
        beforeEach(module('FleaFilters')); // Ask for module to ready to be injected
        
        // Filters
        describe("truncate", function()
        {
            // Tests
            it("should when the text with the truncation end length subtracted, is equal to the truncation length, not be truncated", inject(function(truncateFilter)
            {
                expect(truncateFilter("abcdef", 5, ".")).toBe("abcdef");
            }));
            
            it("should when the text with the truncation end length subtracted, is shorter than the truncation length, not be truncated", inject(function(truncateFilter)
            {
                expect(truncateFilter("abcdefe", 5, "...")).toBe("abcdefe");
            }));
            
            it("should when the text with the truncation end length subtracted is longer than the truncation length, be truncated", inject(function(truncateFilter)
            {
                expect(truncateFilter("abcdefhi", 5, "..")).toBe("abc..");
            }));
            
            it("should have a default truncation string of '...'", inject(function(truncateFilter)
            {
                expect(truncateFilter("abcdefhi", 3)).toBe("...");
            }));
            
            it("should have a default truncation value of 10", inject(function(truncateFilter)
            {
                expect(truncateFilter("12345678912345")).toBe("1234567...");
            }));
        });
    });
});