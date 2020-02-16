using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PWDCRMEntity
{
    public class ItemDetails
    {
        [Key]
        public int Id { get; set; }
        public int WorkDataID { get; set; }
        public string ItemNo { get; set; }
        public int Number { get; set; }
        public int Length { get; set; }
        public int BreadthWidth { get; set; }
        public int DepthHeight { get; set; }
        public string GeometricalFormulas { get; set; }
        public int Qty { get; set; }
        public string Remarks { get; set; }
        public DateTime CreatedOn { get; set; }
        public DateTime UpdateOn { get; set; }
    }
}
