using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using ServiceLibrary.Database;
using Newtonsoft.Json;
using System.ServiceModel.Web;
using System.IO;
using System.Threading;
using System.Diagnostics;
using System.Net;
using System.Security.Cryptography;

namespace ServiceLibrary
{
    public class RestService : IRestService
    {
        public Stream fleamarketList()
        {
            using (RestEntities rest = new RestEntities())
            {
                // Select all neccessary info about fleamarkets and sort only columns needed
                var selectedData = rest.fleamarkets.Include("fleamarket_addresses").Include("fleamarket_openings").Include("fleamarket_items").
                    Select(x => new {x.id, x.name, x.description, x.category, x.fleamarket_addresses, x.fleamarket_items, x.logo});
                // Return serialization to user in JSON
                return Response.Serialize(true, 0, selectedData);
            }
        }

        public Stream fleamarketDescription(string id)
        {
            // Parse id if invalid return error
            int intId;
            if (int.TryParse(id, out intId))
            {
                // Use database and get data for a specific fleamarket id and serialize it into json within wrapper
                using (RestEntities rest = new RestEntities())
                {
                    return Response.Serialize(true, 0, rest.fleamarkets.Include("fleamarket_addresses").
                        Include("fleamarket_openings").Include("fleamarkets_reviews").
                        Include("users").Where(b => b.id == intId).
                        Select(b => new { b.created_on, b.modified_on, b.description, b.logo, b.name, b.fleamarket_addresses, b.fleamarket_openings, 
                            fleamarket_reviews = b.fleamarket_reviews.Select(x => new {x.fleamarkets_id, x.stars, x.text, users = new {x.users_id, x.users.email}})}));
                }
            }
            else
                return Response.Serialize(false, 1, null);
        }

        public Stream register(string username, string password)
        {
            // Check if user can be registered
            Wrapper temp = Auth.register(username, password);
            // Return response with status
            return Response.Serialize(temp.status, temp.error, null);
        }

        public Stream login(string username, string password)
        {
            // Check if user is eligible
            Wrapper temp = Auth.login(username, password);
            // Return response with status
            return Response.Serialize(temp.status, temp.error, null);
        }

        public Stream createReview(string username, string password, string fleamarketId, string stars, string text)
        {
            // Check for invalid parameters, if so return error.
            Wrapper resRules = Utility.reviewValidateRules(fleamarketId, stars, text);
            if (resRules.status)
            {
                // Check if user provided info is eligible else just return error
                Wrapper authResult = Auth.login(username, password);
                if (authResult.status)
                {
                    // Use database
                    using (RestEntities rest = new RestEntities())
                    {
                        // Check database for review and if it corresponds to user else return error
                        fleamarket_reviews review = rest.fleamarket_reviews.Where(b => b.fleamarkets_id == ((fleamarket_reviews)resRules.result).fleamarkets_id && b.users_id == ((users)authResult.result).id).FirstOrDefault();
                        if (review == null)
                        {
                            // Add new review and save changes
                            ((fleamarket_reviews)resRules.result).users_id = ((users)authResult.result).id;
                            rest.fleamarket_reviews.Add((fleamarket_reviews)resRules.result);
                            rest.SaveChanges();
                            // Return success
                            return Response.Serialize(true, 0, null);
                        }
                        else
                            return Response.Serialize(false, 11, null);
                    }
                }
                else
                    return Response.Serialize(false, authResult.error, null);
            }
            else
                return Response.Serialize(false, resRules.error, null);
        }

        public Stream updateReview(string username, string password, string fleamarketId, string stars, string text)
        {
            // Check and validate parameters, else return error
            Wrapper resRules = Utility.reviewValidateRules(fleamarketId, stars, text);
            if (resRules.status)
            {
                // Check if user exists, else return error
                Wrapper authResult = Auth.login(username, password);
                if (authResult.status)
                {
                    // Use database
                    using (RestEntities rest = new RestEntities())
                    {
                        // Check if user got access to update review, and get review, else return error
                        fleamarket_reviews review = rest.fleamarket_reviews.Where(b => b.fleamarkets_id == ((fleamarket_reviews)resRules.result).fleamarkets_id && b.users_id == ((users)authResult.result).id).FirstOrDefault();
                        if (review != null)
                        {
                            // Update review with new data and save changes
                            review.stars = ((fleamarket_reviews)resRules.result).stars;
                            review.text = ((fleamarket_reviews)resRules.result).text;
                            rest.SaveChanges();
                            // Return success
                            return Response.Serialize(true, 0, null);
                        }
                        else
                            return Response.Serialize(false, 12, null);
                    }
                }
                else
                    return Response.Serialize(false, authResult.error, null);
            }
            else
                return Response.Serialize(false, resRules.error, null);
        }

        public Stream deleteReview(string username, string password, string fleamarketId)
        {
            // Parse fleamarket id else return error
            int parseId;
            if (int.TryParse(fleamarketId, out parseId))
            {
                // Check if user is valid else return error
                Wrapper authResult = Auth.login(username, password);
                if (authResult.status)
                {
                    // Use database
                    using (RestEntities rest = new RestEntities())
                    {
                        // Find review for fleamarket and check user has access else return error
                        fleamarket_reviews review = rest.fleamarket_reviews.Where(b => b.fleamarkets_id == parseId && b.users_id == ((users)authResult.result).id).FirstOrDefault();
                        if (review != null)
                        {
                            // Remove found review and save changes
                            rest.fleamarket_reviews.Remove(review);
                            rest.SaveChanges();
                            // Return success
                            return Response.Serialize(true, 0, null);
                        }
                        else
                            return Response.Serialize(false, 14, null);
                    }
                }
                else
                    return Response.Serialize(false, authResult.error, null);
            }
            else
                return Response.Serialize(false, 13, null);

        }

        public Stream createFleaMarket(string username, string password, string name, string description, string logo, string category, string city, string street, string postcode, string latitude, string longitude)
        {
            // Check if parameters are valid, else return error
            Wrapper validateResult = Utility.fleamarketValidateRules(name, description, logo, category, city, street, postcode, latitude, longitude);
            if (validateResult.status)
            {
                // Check if user is valid, else return error
                Wrapper authResult = Auth.login(username, password);
                if (authResult.status)
                {
                    // Use database
                    using (RestEntities rest = new RestEntities())
                    {
                        // Add info to market and add it to database
                        ((fleamarkets)validateResult.result).users_id = ((users)authResult.result).id;
                        ((fleamarkets)validateResult.result).created_on = DateTime.UtcNow;
                        ((fleamarkets)validateResult.result).modified_on = DateTime.UtcNow;
                        rest.fleamarkets.Add((fleamarkets)validateResult.result);
                        rest.SaveChanges();
                        // Return success
                        return Response.Serialize(true, 0, null);
                    }
                }
                else
                    return Response.Serialize(false, authResult.error, null);
            }
            else
                return Response.Serialize(false, validateResult.error, null);
        }

        public Stream updateFleaMarket(string username, string password, string fleamarketId, string name, string description, string logo, string category, string city, string street, string postcode, string latitude, string longitude)
        {
            // Parse id, else return error
            int parsedIdInt;
            if (int.TryParse(fleamarketId, out parsedIdInt))
            {
                // Check for valid parameters, else return error
                Wrapper validateResult = Utility.fleamarketValidateRules(name, description, logo, category, city, street, postcode, latitude, longitude);
                if (validateResult.status)
                {
                    // Check for valid user
                    Wrapper authResult = Auth.login(username, password);
                    if (authResult.status)
                    {
                        // Use database
                        using (RestEntities rest = new RestEntities())
                        {
                            // Check for market and that user is authorised else return error
                            fleamarkets fleamarket = rest.fleamarkets.Include("fleamarket_addresses").Where(b => b.id == parsedIdInt && b.users_id == ((users)authResult.result).id).FirstOrDefault();
                            if (fleamarketId != null)
                            {
                                // Add info to fleamarket address
                                fleamarket.fleamarket_addresses.city = ((fleamarkets)validateResult.result).fleamarket_addresses.city;
                                fleamarket.fleamarket_addresses.postcode = ((fleamarkets)validateResult.result).fleamarket_addresses.postcode;
                                fleamarket.fleamarket_addresses.street = ((fleamarkets)validateResult.result).fleamarket_addresses.street;
                                fleamarket.fleamarket_addresses.latitude = ((fleamarkets)validateResult.result).fleamarket_addresses.latitude;
                                fleamarket.fleamarket_addresses.longitude = ((fleamarkets)validateResult.result).fleamarket_addresses.longitude;

                                // Add fleamarket info and save it
                                fleamarket.name = ((fleamarkets)validateResult.result).name;
                                fleamarket.description = ((fleamarkets)validateResult.result).description;
                                fleamarket.logo = ((fleamarkets)validateResult.result).logo;
                                fleamarket.modified_on = DateTime.UtcNow;

                                rest.SaveChanges();
                                // Return success
                                return Response.Serialize(true, 0, null);
                            }
                            else
                                return Response.Serialize(false, 19, null);
                        }
                    }
                    else
                        return Response.Serialize(false, authResult.error, null);
                }
                else
                    return Response.Serialize(false, validateResult.error, null);
            }
            else
                return Response.Serialize(false, 18, null);
        }

        public Stream deleteFleaMarket(string username, string password, string fleamarketId)
        {
            // Parse id, else return error
            int parseId;
            if (int.TryParse(fleamarketId, out parseId))
            {
                // Check if user is valid, else return error
                Wrapper authResult = Auth.login(username, password);
                if (authResult.status)
                {
                    // Use database
                    using (RestEntities rest = new RestEntities())
                    {
                        // Find fleamarket and check if user got access, else return error
                        fleamarkets fleamarket = rest.fleamarkets.Where(b => b.users_id == ((users)authResult.result).id && b.id == parseId).FirstOrDefault();
                        if (fleamarket != null)
                        {
                            // Delete fleamarket
                            rest.fleamarkets.Remove(fleamarket);
                            rest.SaveChanges();
                            // Return success
                            return Response.Serialize(true, 0, null);
                        }
                        else
                            return Response.Serialize(false, 21, null);
                    }
                }
                else
                    return Response.Serialize(false, authResult.error, null);
            }
            else
                return Response.Serialize(false, 20, null);
        }

        public Stream createOpening(string username, string password, string fleamarketId, string from, string to, string description)
        {
            // Parse id, else return error
            int parseId;
            if (int.TryParse(fleamarketId, out parseId))
            {
                // Check parameters else return error
                Wrapper validateResult = Utility.openingValidateRules(from, to, description);
                if (validateResult.status)
                {
                    // Check if user is valid, else return error
                    Wrapper authResult = Auth.login(username, password);
                    if (authResult.status)
                    {
                        // Use database
                        using (RestEntities rest = new RestEntities())
                        {
                            // Find market and its opening if user is authorised, else just return error
                            fleamarkets fleamarket = rest.fleamarkets.Include("fleamarket_openings").Where(b => b.users_id == ((users)authResult.result).id && b.id == parseId).FirstOrDefault();
                            if (fleamarket != null)
                            {
                                // Insert opening into fleamarket
                                ((fleamarket_openings)validateResult.result).fleamarkets_id = parseId;
                                fleamarket.fleamarket_openings.Add((fleamarket_openings)validateResult.result);
                                rest.SaveChanges();
                                // Return success
                                return Response.Serialize(true, 0, null);
                            }
                            else
                                return Response.Serialize(false, 25, null);
                        }
                    }
                    else
                        return Response.Serialize(false, authResult.error, null);
                }
                else
                    return Response.Serialize(false, validateResult.error, null);
            }
            else
                return Response.Serialize(false, 24, null);
        }

        public Stream updateOpening(string username, string password, string openingId, string from, string to, string description)
        {
            // Parse id, else return error
            int parseId;
            if (int.TryParse(openingId, out parseId))
            {
                // Check for invalid parameters, else return error
                Wrapper validateResult = Utility.openingValidateRules(from, to, description);
                if (validateResult.status)
                {
                    // Check for valid user
                    Wrapper authResult = Auth.login(username, password);
                    if (authResult.status)
                    {
                        // Use database
                        using (RestEntities rest = new RestEntities())
                        {
                            // Find opening and check user is authorised, else return error
                            fleamarket_openings opening = rest.fleamarket_openings.Include("fleamarkets").Where(b => b.id == parseId && b.fleamarkets.users_id == ((users)authResult.result).id).FirstOrDefault();
                            if (opening != null)
                            {
                                // Update opening
                                opening.description = ((fleamarket_openings)validateResult.result).description;
                                opening.from = ((fleamarket_openings)validateResult.result).from;
                                opening.to = ((fleamarket_openings)validateResult.result).to;
                                rest.SaveChanges();
                                // Return success
                                return Response.Serialize(true, 0, null);
                            }
                            else
                                return Response.Serialize(false, 27, null);
                        }
                    }
                    else
                        return Response.Serialize(false, authResult.error, null);
                }
                else
                    return Response.Serialize(false, validateResult.error, null);
            }
            else
                return Response.Serialize(false, 26, null);
        }

        public Stream deleteOpening(string username, string password, string openingId)
        {
            // Parse id, else return error
            int parseId;
            if (int.TryParse(openingId, out parseId))
            {
                // Check for valid user
                Wrapper authResult = Auth.login(username, password);
                if (authResult.status)
                {
                    // Use database
                    using (RestEntities rest = new RestEntities())
                    {
                        // Check for opening given and if user is authorised, else return error
                        fleamarket_openings opening = rest.fleamarket_openings.Include("fleamarkets").Where(b => b.id == parseId && b.fleamarkets.users_id == ((users)authResult.result).id).FirstOrDefault();
                        if (opening != null)
                        {
                            // Delete opening
                            rest.fleamarket_openings.Remove(opening);
                            rest.SaveChanges();
                            // Return success
                            return Response.Serialize(true, 0, null);
                        }
                        else
                            return Response.Serialize(false, 29, null);
                    }
                }
                else
                    return Response.Serialize(false, authResult.error, null);
            }
            else
                return Response.Serialize(false, 28, null);
        }
    }
}
