﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PWDCRM.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PWDCRMEntities : DbContext
    {
        public PWDCRMEntities()
            : base("name=PWDCRMEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ItemDetail> ItemDetails { get; set; }
        public virtual DbSet<Lead_Statement> Lead_Statement { get; set; }
        public virtual DbSet<MEASUREMENT> MEASUREMENTS { get; set; }
        public virtual DbSet<Office> Offices { get; set; }
        public virtual DbSet<WorkDataDetail> WorkDataDetails { get; set; }
        public virtual DbSet<ITEM> ITEMS { get; set; }
        public virtual DbSet<Rate_Analysis> Rate_Analysis { get; set; }
    }
}