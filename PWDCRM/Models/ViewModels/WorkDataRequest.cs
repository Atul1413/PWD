using PWDCRMEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PWDCRM.Models.ViewModels
{
    public class WorkDataRequest
    {
        public string StatusCode { get; set; }
        public string Token { get; set; }
        public WorkDataDetails WorkDataDetails { get; set; }
    }
    public class WorkDataResponse
    {
        public string StatusCode { get; set; }
        public string Token { get; set; }
        public string Message { get; set; }
        public List<WorkDataDetails> workDataList { get; set; }
    }
}