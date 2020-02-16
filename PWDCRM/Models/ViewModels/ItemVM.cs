using PWDCRMEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PWDCRM.Models.ViewModels
{
    public class ItemVM
    {
        public int Id { get; set; }      
        
        public string ItemNo { get; set; }
        public string Description { get; set; }
        public string[] Number { get; set; }
        public string[] Length { get; set; }
        public string[] BreadthWidth { get; set; }
        public string[] DepthHeight { get; set; }
        public string[] GeometricalFormulas { get; set; }
        public string[] Qty { get; set; }
        public int Total { get; set; }
        public string Remarks { get; set; }
        public DateTime CreatedOn { get; set; }
        public DateTime UpdateOn { get; set; }
        public List<WorkDataDetails> workDataDetails{ get; set; }

    }
}