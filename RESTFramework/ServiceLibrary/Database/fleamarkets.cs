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
    
    public partial class fleamarkets
    {
        public fleamarkets()
        {
            this.fleamarket_openings = new HashSet<fleamarket_openings>();
            this.fleamarket_reviews = new HashSet<fleamarket_reviews>();
            this.fleamarket_items = new HashSet<fleamarket_items>();
        }
    
        public int id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public string logo { get; set; }
        public System.DateTime created_on { get; set; }
        public System.DateTime modified_on { get; set; }
        public string category { get; set; }
        public int fleamarket_addresses_id { get; set; }
        public int users_id { get; set; }
    
        public virtual fleamarket_addresses fleamarket_addresses { get; set; }
        public virtual ICollection<fleamarket_openings> fleamarket_openings { get; set; }
        public virtual ICollection<fleamarket_reviews> fleamarket_reviews { get; set; }
        public virtual users users { get; set; }
        public virtual ICollection<fleamarket_items> fleamarket_items { get; set; }
    }
}
