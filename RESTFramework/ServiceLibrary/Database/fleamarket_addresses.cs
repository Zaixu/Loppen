//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ServiceLibrary.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class fleamarket_addresses
    {
        public fleamarket_addresses()
        {
            this.fleamarkets = new HashSet<fleamarkets>();
        }
    
        public int id { get; set; }
        public string city { get; set; }
        public string street { get; set; }
        public string postcode { get; set; }
        public float latitude { get; set; }
        public float longitude { get; set; }
    
        public virtual ICollection<fleamarkets> fleamarkets { get; set; }
    }
}
