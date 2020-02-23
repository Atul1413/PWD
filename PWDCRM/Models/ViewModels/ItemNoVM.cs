using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PWDCRM.Models.ViewModels
{
    public class ItemNoVM
    {
        public List<ITEM> itemDetailsList { get; set; }
        public ITEM itemDetail { get; set; }
    }
}