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
    
    public partial class LeadCharge
    {
        public int Id { get; set; }
        public Nullable<int> WorkID { get; set; }
        public string ItemNo { get; set; }
        public string Material { get; set; }
        public string Source { get; set; }
        public string LeadInKM { get; set; }
        public string TotalLeadCharges { get; set; }
        public string InitialLeadInKM { get; set; }
        public string InitialLeadCharges { get; set; }
        public string NetLeadCharges { get; set; }
        public string Remarks { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public Nullable<System.DateTime> UpdatedOn { get; set; }
        public string SSRRate { get; set; }
        public string CurrentDiff { get; set; }
        public string DiffofRate { get; set; }
        public string SourceOfMaterial { get; set; }
    }
}