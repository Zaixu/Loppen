/**
    \brief For testing language module.
*/
define(["language_module"], function (lang)
{
    describe("Language Module", function ()
    {
        // Helpers
        function arraySize(array)
        {
            var size = 0;
            for (var key in array)
                size++;

            return (size);
        }

        // Matchers
        beforeEach(function()
        {
            this.addMatchers(
            {
                /**
                    \brief Tests that an array of arrays contains the same size of arrays.
                    \pre An array which consists of arrays.
                */
                arraysSameLength: function()
                {
                    var firstLength = 0;
                    for (var language in this.actual)
                    {
                        if (firstLength == 0)
                            firstLength = arraySize(this.actual[language]);
                        else if (arraySize(this.actual[language]) != firstLength)
                            return false;
                    }
                    return true;
                },
                /**
                    \brief Tests that and array of arrays contains arrays with the same keys.
                    \pre An array which consists of arrays.
                */
                arraysSameKeys: function ()
                {
                    var keyList = [];
                    for (var language in this.actual)
                    {
                        if (keyList.length == 0)
                        {
                            for (key in this.actual[language])
                            {
                                keyList.push(key);
                            }
                        }
                        else
                        {
                            for (var i = 0; i < keyList.length; i++)
                            {
                                if (!(keyList[i] in this.actual[language]))
                                {
                                    return false;
                                }
                            }
                        }
                    }
                    return true;
                }
            });
        });

        // Tests
        // :Model
        it("uses danish as default language", function ()
        {
            expect(lang.languageInUse).toEqual("dk");
        });
        
        it("has all languages with same amount of strings", function ()
        {
            expect(lang.library).arraysSameLength();
        });
        
        it("has the same keys in languages", function ()
        {
            expect(lang.library).arraysSameKeys();
        });
        
        // :Functions
        it("'changeLanguage' should when given 'en' change language to 'en'", function ()
        {
            var defaultLanguage = lang.languageInUse;
            lang.changeLanguage("en");
            expect(lang.languageInUse).toEqual("en");
            lang.changeLanguage(defaultLanguage);
        });
        
        it("'changeLanguage' should only change language to language that exists in library", function ()
        {
            var defaultLanguage = lang.languageInUse;
            lang.changeLanguage("gb");
            expect(lang.languageInUse).toEqual(defaultLanguage);

            var exists = "gb" in lang.library;
            expect(exists).toBe(false);
        });
        
        it("'getString' should return the language value asked for", function()
        {
            var libraryBackup = lang.library;
            lang.library = 
                {
                    "dk":
                    {
                        "home_title": "Start",
                    }
                };
            expect(lang.getString("home_title")).toEqual("Start");
            lang.library = libraryBackup;
        });
        
        it("'getString' should return the key given if key was not found", function()
        {
            var libraryBackup = lang.library;
            lang.library = 
                {
                    "dk":
                    {
                        "home_title": "Start",
                    }
                };
            expect(lang.getString("home_title_NOT_EXIST")).toEqual("home_title_NOT_EXIST");
            lang.library = libraryBackup;
        });
    });
});
