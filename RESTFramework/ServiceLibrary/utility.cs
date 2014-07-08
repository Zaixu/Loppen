using ServiceLibrary.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiceLibrary
{
    /// <summary>
    /// Utility class that serves functions that doesnt belong anywhere specific.
    /// </summary>
    public static class Utility
    {
        /// <summary>
        /// Containing enum from database
        /// </summary>
        public enum FleamarketCategory
        {
            flea,
            charity,
            trunk,
            other
        }

        /// <summary>
        /// Function that checks all parameters for a review
        /// </summary>
        /// <param name="fleamarketid">Id of the fleamarket that needs to be parsed</param>
        /// <param name="stars">Stars to be parsed</param>
        /// <param name="text">Text that needs to be checked</param>
        /// <returns>Returns a review in wrapper for other functions to take data from thats been parsed</returns>
        public static Wrapper reviewValidateRules(string fleamarketid, string stars, string text)
        {         
            // Parse fleamarket id, if invalid return error
            int parsedIdInt;
            if (!int.TryParse(fleamarketid, out parsedIdInt))
                return new Wrapper(false, 8, null);
            
            // Parse stars, if invalid return error
            int parsedStarsInt;
            if (int.TryParse(stars, out parsedStarsInt))
            {
                // Check for stars being within range, else return error
                if (!(parsedStarsInt >= 0 && parsedStarsInt <= 5))
                    return new Wrapper(false, 10, null);
            }
            else
                return new Wrapper(false, 9, null);

            // Create review placeholder and insert data
            fleamarket_reviews review = new fleamarket_reviews();
            review.text = text;
            review.stars = parsedStarsInt;
            review.fleamarkets_id = parsedIdInt;

            // Return wrapper with no error and status true with the review object
            return new Wrapper(true, 0, review);     
        }

        /// <summary>
        /// Function that parses and checks opening parameters
        /// </summary>
        /// <param name="from">Datetime representing from</param>
        /// <param name="to">Datetime representing to</param>
        /// <param name="description">Description for opening</param>
        /// <returns></returns>
        public static Wrapper openingValidateRules(string from, string to, string description)
        {
            // Parse from datetime, else return error
            DateTime parsedFromDateTime;
            if(!DateTime.TryParse(from, out parsedFromDateTime))
                return new Wrapper(false, 22, null);

            // Parse to datetime, else return error
            DateTime parsedToDateTime;
            if(!DateTime.TryParse(from, out parsedToDateTime))
                return new Wrapper(false, 23, null);

            // Create opening placeholder and insert data
            fleamarket_openings opening = new fleamarket_openings();
            opening.description = description;
            opening.from = parsedFromDateTime;
            opening.to = parsedToDateTime;

            // Return no error and success with the opening object
            return new Wrapper(true, 0, opening);
        }

        /// <summary>
        /// Function that checks parameters for a fleamarket and parses them
        /// </summary>
        /// <param name="name">Name of the fleamarket</param>
        /// <param name="description">Description of the fleamarket</param>
        /// <param name="logo">Logo of the fleamarket</param>
        /// <param name="category">Category of the fleamarket</param>
        /// <param name="city">City of the fleamarket</param>
        /// <param name="street">Street of the fleamarket</param>
        /// <param name="postcode">Postcode of the fleamarket</param>
        /// <param name="latitude">Latitude of the fleamarket</param>
        /// <param name="longitude">Longitude of the fleamarket</param>
        /// <returns>Return wrapper with a fleamarket and address object to take info out of</returns>
        public static Wrapper fleamarketValidateRules(string name, string description, string logo, string category, string city, string street, string postcode, string latitude, string longitude)
        {
            // Parse category else return error
            FleamarketCategory cat;
            if (!Enum.TryParse<FleamarketCategory>(category, out cat))
                return new Wrapper(false, 15, null);

            // Parse latitude else return error
            float parsedLatitudeFloat;
            if (!float.TryParse(latitude, out parsedLatitudeFloat))
                return new Wrapper(false, 16, null);

            // Parse longitude, else return error
            float parsedLongitudeFloat;
            if (!float.TryParse(longitude, out parsedLongitudeFloat))
                return new Wrapper(false, 17, null);

            // Create fleamarket and address placeholders
            fleamarkets fleamarket = new fleamarkets();
            fleamarket_addresses address = new fleamarket_addresses();
            // Insert data into placeholders
            fleamarket.name = name;
            fleamarket.description = description;
            fleamarket.logo = logo;
            fleamarket.category = cat.ToString();
            address.city = city;
            address.street = street;
            address.postcode = postcode;
            address.latitude = parsedLatitudeFloat;
            address.longitude = parsedLongitudeFloat;
            // Add address to fleamarket
            fleamarket.fleamarket_addresses = address;
            // Return no error and placeholder with fleamarket data
            return new Wrapper(true, 0, fleamarket);
        }
    }
}
