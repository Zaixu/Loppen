define(["validator_module"],function(valid)
{
    describe("Validator Module", function()
    {
        it("validateAddress will accept an address with a number and a letter", function()
        {
            expect(valid.validateAddress("Fyrrebakken 21A")).toEqual(true);
        });

        it("validateAddress will accept a normal address of the form road + number", function()
        {
            expect(valid.validateAddress("Paradisæblevej 111")).toEqual(true);
        });

        it("validateAddress will accept an address with a floor", function()
        {
            expect(valid.validateAddress("Røddingevej 2 th.")).toEqual(true);
        });

        it("validateAddress won't accept address without number", function()
        {
            expect(valid.validateAddress("Fyrrebakken")).toEqual(false);
        });

        it("validateZipCode won't accept zipcode with fewer numbers than 4", function()
        {
            expect(valid.validateZipCode("123")).toEqual(false);
        });

        it("validateZipCode won't accept zipcode with more numbers than 4", function()
        {
            expect(valid.validateZipCode("12345")).toEqual(false);
        });

        it("validateZipCode won't accept a zipcode that consists of letters", function()
        {
            expect(valid.validateZipCode("abcd")).toEqual(false);
        });

        it("validateCity will accept a normal city", function()
        {
            expect(valid.validateCity("Aarhus")).toEqual(true);
        });

        it("validateCity will accept a city that contains a whitespace", function()
        {
            expect(valid.validateCity("Kongens Lyngby")).toEqual(true);
        });

        it("validateCity will accept a city that contains a hyphen", function()
        {
            expect(valid.validateCity("Beder-Malling")).toEqual(true);
        });

        it("validateCity will accept a city with danish letters like ÆØÅ", function()
        {
            expect(valid.validateCity("Helsingør")).toEqual(true);
        });
    });
});