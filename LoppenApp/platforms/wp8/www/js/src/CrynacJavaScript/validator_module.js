/* Should only be loaded with RequireJS. */
/**
 *  WebsiteServices
 *
 *  Utility services for the website.
 *  @module WebsiteServices
 *  @main WebsiteServices
 */
/**
 *  Class for validating input of all sorts.
 *  @class ValidatorModule
 *  @module WebsiteServices
 */
define(function()
{
    return {
        /**
         *   Validates address of the form: word whitespace number wildcard/anything.
         *   @method validateAddress
         *   @param {String} address Address to be validated.
         *   @return {Boolean} returns Return about validation was succesful or not.
         */
        validateAddress: function(address)
        {
            var re = new RegExp("^[a-zA-ZæøåÆØÅ]+\\s+\\d+[\\s\\S]*$");
            return re.test(address);
        },
        /**
         *  Validates zipcode and matches exactly 4 numbers.
         *  @method validateAddress
         *  @param {String} zipcode Zipcode to be validated.
         *  @return {Boolean} returns Return about validation was succesful or not.
         */
        validateZipCode: function(zipcode)
        {
            var re = new RegExp("^[0-9]{4}$");
            return re.test(zipcode);
        },
        /**
         *  Validates city and matches a word and allows whitespace and hyphen.
         *  @method validateCity
		 *  @param {String} city City to be validated.
		 *  @return {Boolean} returns Returns about validation was succesful or not.
         */
        validateCity: function(city)
        {
            var re = new RegExp("^[a-zA-ZæøåÆØÅ]+((\\s|-)[a-zA-zæøåÆØÅ]+)?$");
            return re.test(city);
        },
        
        /**
         *  Validates market description, right now restriction is only a length max of 200 chars.
         *  @method validateMarketDescription
         *  @param {String} description Description to be validated.
         *  @return {Boolean} returns Return about validation was succesful or not.
         */
        validateMarketDescription: function(description)
        {
            // matches 200 chars
            var re = new RegExp("{0-200}");
            return re.test(description);
        }
    }
});