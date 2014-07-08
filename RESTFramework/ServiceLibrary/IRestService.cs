using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using ServiceLibrary.Database;
using System.ServiceModel.Description;
using System.IO;

namespace ServiceLibrary
{
    /// <summary>
    /// Interface for rest framework interfaced from the outside
    /// </summary>
    [ServiceContract(Namespace = "http://crynac.com")]
    public interface IRestService
    {
        /// <summary>
        /// Function that shows all fleamarkets
        /// </summary>
        /// <returns>JSON of a wrapper with all fleamarkets</returns>
        [OperationContract]
        [WebInvoke(Method = "GET", UriTemplate = "/Fleamarkets")]
        Stream fleamarketList();

        /// <summary>
        /// Function that gets info about a specific market
        /// </summary>
        /// <param name="id">Id of the market to get details about</param>
        /// <returns>JSON of a wrapper with details of a specific market</returns>
        [OperationContract]
        [WebInvoke(Method = "GET", UriTemplate = "/Fleamarkets/{id}")]
        Stream fleamarketDescription(string id);

        /// <summary>
        /// Creates a fleamarket on the database if authorised for it
        /// </summary>
        /// <param name="username">Username of the user that wanna add market</param>
        /// <param name="password">Password of the user that wanna add market</param>
        /// <param name="name">Name of the fleamarket</param>
        /// <param name="description">Description of the fleamarket</param>
        /// <param name="logo">Logo of the fleamarket</param>
        /// <param name="category">Category of the fleamarket</param>
        /// <param name="city">City of the fleamarket</param>
        /// <param name="street">Street of the fleamarket</param>
        /// <param name="postcode">Postcode of the fleamarket</param>
        /// <param name="latitude">Latitude of the fleamarket</param>
        /// <param name="longitude">Longitude of the fleamarket</param>
        /// <returns>JSON of a wrapper with status</returns>
        [OperationContract]
        [WebInvoke(Method = "POST", UriTemplate = "/Fleamarkets/{username}/{password}/{name}/{description}/{logo}/{category}/{city}/{street}/{postcode}/{latitude}/{longitude}")]
        Stream createFleaMarket(string username, string password, string name, string description, string logo, string category, string city, string street, string postcode, string latitude, string longitude);

        /// <summary>
        /// Updates a certain fleamarket if authorised for it
        /// </summary>
        /// <param name="username">Username of the user that wanna update market</param>
        /// <param name="password">Password of the user that wanna update market</param>
        /// <param name="fleamarketId">Fleamarket id of the market to update</param>
        /// <param name="name">Name of which to change fleamarket to</param>
        /// <param name="description">Description of which to change fleamarket to</param>
        /// <param name="logo">Logo of which to change fleamarket to</param>
        /// <param name="category">Category of which to change fleamarket to</param>
        /// <param name="city">City of which to change fleamarket to</param>
        /// <param name="street">Street of which to change fleamarket to</param>
        /// <param name="postcode">Postcode of which to change fleamarket to</param>
        /// <param name="latitude">Latitude of which to change fleamarket to</param>
        /// <param name="longitude">Longitude of which to change fleamarket to</param>
        /// <returns>JSON of a wrapper with status</returns>
        [OperationContract]
        [WebInvoke(Method = "PUT", UriTemplate = "/Fleamarkets/{username}/{password}/{fleamarketId}/{name}/{description}/{logo}/{category}/{city}/{street}/{postcode}/{latitude}/{longitude}")]
        Stream updateFleaMarket(string username, string password, string fleamarketId, string name, string description, string logo, string category, string city, string street, string postcode, string latitude, string longitude);

        /// <summary>
        /// Function that deletes a certain fleamarket if authorised for it
        /// </summary>
        /// <param name="username">Username of the user wanting to delete a market</param>
        /// <param name="password">Password of the user wanting to delete a market</param>
        /// <param name="fleamarketId">Id of the market to be deleted</param>
        /// <returns>JSON of a wrapper with status</returns>
        [OperationContract]
        [WebInvoke(Method = "DELETE", UriTemplate = "/Fleamarkets/{username}/{password}/{fleamarketId}")]
        Stream deleteFleaMarket(string username, string password, string fleamarketId);

        /// <summary>
        /// Function that creates fleamarket openings if authorised for it
        /// </summary>
        /// <param name="username">Username of the user wanting to add opening</param>
        /// <param name="password">Password of the user wanting to add opening</param>
        /// <param name="fleamarketId">Id of the fleamarket to add opening</param>
        /// <param name="from">Datetime of the from time</param>
        /// <param name="to">Datetime of the to time</param>
        /// <param name="description">Description of the time</param>
        /// <returns>JSON of a wrapper with status</returns>
        [OperationContract]
        [WebInvoke(Method = "POST", UriTemplate = "/Fleamarkets/Openings/{username}/{password}/{fleamarketId}/{from}/{to}/{description}")]
        Stream createOpening(string username, string password, string fleamarketId, string from, string to, string description);

        /// <summary>
        /// Function that updates an existing opening if authorised for it
        /// </summary>
        /// <param name="username">Username of the user wanting to edit opening</param>
        /// <param name="password">Password of the user wanting to edit opening</param>
        /// <param name="openingId">Id of the opening to be updated</param>
        /// <param name="from">Datetime of from time</param>
        /// <param name="to">Datetime of to time</param>
        /// <param name="description">Description of the time</param>
        /// <returns>JSON of a wrapper with status</returns>
        [OperationContract]
        [WebInvoke(Method = "PUT", UriTemplate = "/Fleamarkets/Openings/{username}/{password}/{openingId}/{from}/{to}/{description}")]
        Stream updateOpening(string username, string password, string openingId, string from, string to, string description);

        /// <summary>
        /// Function that deletes an existing opening if authorised for it
        /// </summary>
        /// <param name="username">Username of the user wanting to delete opening</param>
        /// <param name="password">Password of the user wanting to delete opening</param>
        /// <param name="openingId">Id of opening to be deleted</param>
        /// <returns>JSON of a wrapper with status</returns>
        [OperationContract]
        [WebInvoke(Method = "DELETE", UriTemplate = "/Fleamarkets/Openings/{username}/{password}/{openingId}")]
        Stream deleteOpening(string username, string password, string openingId);

        /// <summary>
        /// Function that registers a user with given parameters
        /// </summary>
        /// <param name="username">Username the user wants</param>
        /// <param name="password">Password the user wants</param>
        /// <returns>JSON of a wrapper with status</returns>
        [OperationContract]
        [WebInvoke(Method = "POST", UriTemplate = "/Auth/Register/{username}/{password}")]
        Stream register(string username, string password);

        /// <summary>
        /// Function that checks if a username/password is a valid user
        /// </summary>
        /// <param name="username">Username of the user wanting to log in</param>
        /// <param name="password">Password of the user wanting to log in</param>
        /// <returns>JSON of a wrapper with status</returns>
        [OperationContract]
        [WebInvoke(Method = "POST", UriTemplate = "/Auth/Login/{username}/{password}")]
        Stream login(string username, string password);

        /// <summary>
        /// Function to create review of a fleamarket, if authorised
        /// </summary>
        /// <param name="username">Username of the user wanting to create review</param>
        /// <param name="password">Password of the user wanting to create review</param>
        /// <param name="fleamarketId">Id of fleamarket to add review</param>
        /// <param name="stars">Amount of stars for review</param>
        /// <param name="text">Text for the review</param>
        /// <returns>JSON of a wrapper with status</returns>
        [OperationContract]
        [WebInvoke(Method = "POST", UriTemplate = "/Fleamarkets/Review/{username}/{password}/{fleamarketId}/{stars}/{text}")]
        Stream createReview(string username, string password, string fleamarketId, string stars, string text);

        /// <summary>
        /// Function to update an existing review if authorised
        /// </summary>
        /// <param name="username">Username of the user updating review</param>
        /// <param name="password">Password of the user updating review</param>
        /// <param name="fleamarketId">Fleamarket id for which to change review on</param>
        /// <param name="stars">Amount of stars for review change</param>
        /// <param name="text">Text for which to change on review</param>
        /// <returns>JSON of a wrapper with status</returns>
        [OperationContract]
        [WebInvoke(Method = "PUT", UriTemplate = "/Fleamarkets/Review/{username}/{password}/{fleamarketId}/{stars}/{text}")]
        Stream updateReview(string username, string password, string fleamarketId, string stars, string text);

        /// <summary>
        /// Function to delete existing reviews if authorised
        /// </summary>
        /// <param name="username">Username of the user wanting to delete review</param>
        /// <param name="password">Password of the user wanting to delete review</param>
        /// <param name="fleamarketId">Id of fleamarket to delete review from</param>
        /// <returns>JSON of a wrapper with status</returns>
        [OperationContract]
        [WebInvoke(Method = "DELETE", UriTemplate = "/Fleamarkets/Review/{username}/{password}/{fleamarketId}")]
        Stream deleteReview(string username, string password, string fleamarketId);
    }

}
