//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Lead_Statement
    {
        public int ID { get; set; }
        public string Material { get; set; }
        public string Source { get; set; }
        public Nullable<int> Initial_Lead { get; set; }
        public Nullable<int> Lead { get; set; }
        public Nullable<int> Total_Lead { get; set; }
        public Nullable<int> Lead_Charges { get; set; }
        public string Remarks { get; set; }
    }
}
