using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiceLibrary
{
    /// <summary>
    /// Wrapper class which is used throughout to convert results to json output for rest framework
    /// </summary>
    public class Wrapper
    {
        /// <summary>
        /// Constructor for wrapper class that takes arguments for status, error and a result object and stores em for json conversion
        /// </summary>
        /// <param name="status">Bool for whether something is successfull or not</param>
        /// <param name="error">Int for which error code is to be written</param>
        /// <param name="result">Object for which to show results in</param>
        public Wrapper(bool status, int error, object result)
        {
            this.status = status;
            this.error = error;
            this.result = result;
        }

        public bool status;
        public int error;
        public object result;
    }
}
