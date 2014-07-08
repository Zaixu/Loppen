using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.ServiceModel.Web;
using System.Text;
using System.Threading.Tasks;

namespace ServiceLibrary
{
    /// <summary>
    /// Class to handle response of the rest framework
    /// </summary>
    public static class Response
    {
        /// <summary>
        /// Serialises the object into json.
        /// </summary>
        /// <param name="status">Bool for whether function succeeded</param>
        /// <param name="error">Error code to return</param>
        /// <param name="result">Object for which result is contained</param>
        /// <returns>Returns memorystream for full control of output data</returns>
        public static Stream Serialize(bool status, int error, object result)
        {
            // Create wrapper and insert parameters
            Wrapper response = new Wrapper(status, error, result);
            
            // Create serializer and setup settings
            JsonSerializerSettings jsonSettings = new JsonSerializerSettings();
            jsonSettings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;

            // Serialize object
            string serializedObject = JsonConvert.SerializeObject(response, Formatting.None, jsonSettings);

            // Encode
            byte[] resultBytes = System.Text.Encoding.UTF8.GetBytes(serializedObject);
            // Set response content type
            WebOperationContext.Current.OutgoingResponse.ContentType = "application/json; charset=utf-8";
            // Return bytes of serialized data in a memorystream
            return new MemoryStream(resultBytes);
        }
    }
}
