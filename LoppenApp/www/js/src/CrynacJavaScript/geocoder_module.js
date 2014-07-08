/* Should only be loaded with RequireJS. */
/**
 *  @class GeocoderWrapper
 *  @module WebsiteServices
 */
define(["jquery", "async!http://maps.google.com/maps/api/js?sensor=false"], function()
{
	return function GeocoderWrapper()
	{
		var geocoder;
		/**
		 *  Inits the module.
		 *  Note: should be called first.
		 *  @method init
		 */
		init = function()
		{
			geocoder = new google.maps.Geocoder();
		}
		/**
		 * Returns first result from googles api if it has a street address.
		 * @method geocodeAddress
		 * @param {String} fulladdress Full address to be geocoded.
		 * @param {Function} success Success callback.
		 * @param {Function} error Error callback.
		 * @return {Object} returns First geocode match.
		 */
		this.geocodeAddress = function(fulladdress, success, error)
		{
			// strips address of whitespaces and inserts +
			var stripped_address = fulladdress.replace(/ /g,"+");
			
			geocoder.geocode( { 'address': stripped_address}, function(result, status)
			{
				// only return success if status is ok and the best match is a street address 
				if (status == google.maps.GeocoderStatus.OK && $.inArray("street_address",result[0].types) >= 0)
				{
					success(result[0], status);
				}
				else
				{
					error(result[0], status);
				}
			});
		}

		init();

	}
});