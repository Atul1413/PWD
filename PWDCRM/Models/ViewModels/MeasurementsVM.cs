using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PWDCRM.Models.ViewModels
{
    public class MeasurementsVM
    {
        public string ItemNo { get; set; }
        public string ItemDesc { get; set; }
        public string Floor { get; set; }
        public string SubWork { get; set; }
        public int SubWorkID { get; set; }
        public string UnitCom { get; set; }
        public List<ItemDetailMeas> itemDetailMeas { get; set; }
    }
    public class ItemDetailMeas
    {
        public string ItemNo { get; set; }
        public string Number { get; set; }
        public string Length { get; set; }
        public string BreadthWidth { get; set; }
        public string DepthHeight { get; set; }       
        public string Qty { get; set; }
        public string Remarks { get; set; }
        public Nullable<int> SubWorkID { get; set; }
        public string FloorData { get; set; }
    }
}