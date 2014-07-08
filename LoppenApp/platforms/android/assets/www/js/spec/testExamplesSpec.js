/**
    \brief Module for showing different ways of testing.

    Note: If want to show and example please put it here :)
*/
define(["testExamples"], function (test)
{
    describe("Hello world", function ()
    {
        it("says hello", function ()
        {
            expect(test.helloWorld()).toEqual("Hello world!");
        });
    });
});