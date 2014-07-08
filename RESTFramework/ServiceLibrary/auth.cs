using ServiceLibrary.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace ServiceLibrary
{
    /// <summary>
    /// Class that handles user authentication calls towards database
    /// </summary>
    public static class Auth
    {
        private static string salt(int size)
        {
            // Create a crypto instance
            RNGCryptoServiceProvider salter = new RNGCryptoServiceProvider();
            byte[] holder = new byte[size];
            // Create a random salt of size given in function parameter.
            salter.GetNonZeroBytes(holder);
            // Return the random bytes as string
            return Encoding.Default.GetString(holder);
        }

        private static string hash(string salt, string password)
        {
            // Create SHA256 encryption service
            HashAlgorithm hasher = new SHA256CryptoServiceProvider();
            // Create hash bytes from byte of password added with salt
            byte[] hash = hasher.ComputeHash(Encoding.Default.GetBytes(password+salt));
            // Return hash as string
            return Encoding.Default.GetString(hash);
        }

        /// <summary>
        /// Function registers a user with given username and password for the rest framework on the database
        /// </summary>
        /// <param name="username">Users username string</param>
        /// <param name="password">Users password string</param>
        /// <returns>Returns a class wrapper with user info, error code and whether it succeded</returns>
        public static Wrapper register(string username, string password)
        {
            // Check for errors with username and password, if any errors end function and return wrapper with error.
            int res = validateRules(username, password);
            if (res > 0)
                return new Wrapper(false, res, null);

            // Use database
            using (RestEntities rest = new RestEntities())
            {
                // Does a user exist with given username else return wrapper error
                if (rest.users.Where(b => b.email == username).FirstOrDefault() == null)
                {
                    // Create salt
                    string salted = Auth.salt(16);
                    // Create hash
                    string hashed = Auth.hash(salted, password);

                    // Create database user placeholder and insert created data
                    users user = new users();
                    user.email = username;
                    user.salt = salted;
                    user.password_hash = hashed;
                    user.created_on = DateTime.Now;
                    user.modified_on = DateTime.Now;

                    // Insert user into database
                    rest.users.Add(user);
                    // Save the database changes
                    rest.SaveChanges();
                    // Return wrapper with function succeeded and user info
                    return new Wrapper(true, 0, user);
                }
                else
                    return new Wrapper(false, 5, null);
            }
        }

        /// <summary>
        /// Function checks whether a user with given username and password exists and is valid
        /// </summary>
        /// <param name="username">User username string</param>
        /// <param name="password">User password string</param>
        /// <returns>Returns wrapper with status and error code</returns>
        public static Wrapper login(string username, string password)
        {
            // Validate parameters for errors and end function if there is with error code
            int res = validateRules(username, password);
            if (res > 0)
                return new Wrapper(false, res, null);

            // Utilize database
            using (RestEntities rest = new RestEntities())
            {
                // Check if user exists in database
                users user = rest.users.Where(b => b.email == username).FirstOrDefault();
                if (user != null)
                {
                    // Calculate hash with given password, check it against database hash
                    // Return user with status true if its correct, else return error code
                    if (Auth.hash(user.salt, password) == user.password_hash)
                        return new Wrapper(true, 0, user);
                    else
                        return new Wrapper(false, 6, null);
                }
                else
                    return new Wrapper(false, 7, null);
            }
        }

        private static int validateRules(string username, string password)
        {
            //Check that email isnt empty
            if (username.Length == 0)
                return 2;
            //Check that password isnt empty
            if (password.Length == 0)
                return 3;
            //check there is atleast a @ and a dot
            if ((!username.Contains('@')) | (!username.Contains('.')))
                return 4;
            //Return no errors
            return 0;
        }
    }
}
