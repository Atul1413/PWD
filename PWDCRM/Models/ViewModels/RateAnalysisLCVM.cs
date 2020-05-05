using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PWDCRM.Models.ViewModels
{
    public class RateAnalysisLCVM
    {
        public string ItemNo { get; set; }
        public string ItemDesc { get; set; }
        public string AddForMaterialDiff { get; set; }
        public string Material { get; set; }
        public double UnitCon { get; set; }
        public string LeadCh { get; set; }
        public double TotalLeadCh { get; set; }
        public double DeductRoyaltyCh { get; set; }
        public double TotalConsumption { get; set; }
    }

    public class RateAnalysisItemVM
    {
        public string ItemNo { get; set; }
        public string ItemDesc { get; set; }        
        public double CompRate { get; set; }
        public double AddFor { get; set; }
        public double FloorRise { get; set; }
        public double AnyOtherCh { get; set; }
        public double SpecialChargesIfAny { get; set; }
        public double CompletedRate { get; set; }
        public double MainTotalLeadCh { get; set; }
        public double MainDudRoyltyCh { get; set; }
        public double TotalQty { get; set; }
        public string Remarks { get; set; }
       public List<RateAnalysisLCVM> rateAnalysisLCVMs { get; set; }

    }
}