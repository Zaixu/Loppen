/* Should only be loaded with RequireJS. */
/**
 *  Services
 *  @module Services
 *  @main Services
 */
/**
 *	Class for REST calls
 *  @class RestModule
 *  @module Services
*/
define(["jquery"],
{
    /// Config
    // URLS here
    /**
     *  Where the REST calls should be made.
     *  @property URL_DOMAIN
     *  @final
     */
    URL_DOMAIN: "https://www.crynac.com:8888/REST",
    /**
     *  URL for getting all flea markets.
     *  @property URL_GET_ALL_FLEAMARKETS
     *  @final
     */
    URL_GET_ALL_FLEAMARKETS: "/FleaMarkets",
    /**
     *  URL for getting a specific market.
     *  @property URL_GET_FLEAMARKET
     *  @final
     */
    URL_GET_FLEAMARKET: "/FleaMarkets/",
    /**
     *  URL for getting reviews for a market.
     *  @property URL_POST_REVIEW
     *  @final
     */
    URL_POST_REVIEW: "/FleaMarkets/Review",
    /**
     *  URL for posting a market review.
     *  @property URL_POST_MARKET
     *  @final
     */
    URL_POST_MARKET: "/FleaMarkets/",
    
    /**
    *   Gets all markets available.
    *   @method getAllMarkets
    *   @param {Function} callback provides a callback of version func(data)
    *   @param {Function} error error callback when something went wrong
    */
    getAllMarkets: function(callback, error)
    {
        var items = [];
        url = this.URL_DOMAIN + this.URL_GET_ALL_FLEAMARKETS;
        $.getJSON
        (
            url,
            function(data)
            {
                $.each(data.result, function (entryIndex, entry)
                {
                    items.push({id : entry.id, name : entry.name, category : entry.category, description : entry.description, addressInfo : entry.fleamarket_addresses, logo : entry.logo});
                });
                callback(items);
            }
        ).fail(error);
    },
	/**
    *   Creates review on rest framework for fleamarket.
    *
    *   pre: user needs to be logged in (takes user and pass).
    *
    *   post: Review will be created and put into database for that fleamarket and success function is called unless theres error.
    *   @method postMarketReview
    *   @param {String} user Username of user from login.
    *   @param {String} pass Password of user from login.
    *   @param {Number} fleamarketid Id of the fleamarket.
    *   @param {Number} rating Users rating of the market.
    *   @param {String} review Users review of the market.
    *   @param {Function} success Success callback.
    *   @param {Function} error Error callback when something went wrong.
    */
    postMarketReview: function(user, pass, fleamarketid, rating, review, success, error)
    {
        var url = this.URL_POST_REVIEW+"/"+user+"/"+pass+"/"+fleamarketid+"/"+rating+"/"+encodeURIComponent(review);
        this.getData(url, 'POST', success, error);
    },
	/**
    *   Common function to interact with rest framework.
    *   
    *   post: Returns result from query of rest framework to success function, if error call error function.
    *   @method getData
    *   @param {String} component URIComponent of the Crynac url.
    *   @param {String} type Type of the call (GET, PUT, POST, DELETE).
    *   @param {Function} success Success callback.
    *   @param {Function} error Error callback when something went wrong.
    */
    getData: function(component, type, success, error)
    {
		// Build url string
        var url = encodeURI(this.URL_DOMAIN+component);
		// Ajax call rest framework
        $.ajax({
            type: type,
            url: url,
            dataType: 'json',
            success: success,
            error: error
        });
    },
    /**
    *   Gets a fleamarkets detailed info.
    *   
    *   post: Success function will be called with data returned from query.
    *   @method getMarket
    *   @param {Number} fleamarketid Id of fleamarket.
    *   @param {Function} success Success callback will be of the form func(data).
    *   @param {Function} error Error callback when something went wrong.
    */
    getMarket: function(fleamarketid, success, error)
    {
        this.getData(this.URL_GET_FLEAMARKET+fleamarketid, "GET", success, error);
    }
});