﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class RestEntities : DbContext
    {
        public RestEntities()
            : base("name=RestEntities")
        {
    		this.Configuration.ProxyCreationEnabled = false;
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<fleamarket_addresses> fleamarket_addresses { get; set; }
        public DbSet<fleamarket_items> fleamarket_items { get; set; }
        public DbSet<fleamarket_openings> fleamarket_openings { get; set; }
        public DbSet<fleamarket_reviews> fleamarket_reviews { get; set; }
        public DbSet<fleamarkets> fleamarkets { get; set; }
        public DbSet<users> users { get; set; }
    }
}