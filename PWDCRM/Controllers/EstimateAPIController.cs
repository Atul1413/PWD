using PWDCRM.Models.ViewModels;
using PWDCRMEntity.DbContextClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace PWDCRM.Controllers
{
    public class EstimateAPIController : ApiController
    {
        public static DbContextPWDCRM dbContext = new DbContextPWDCRM();
        [HttpPost]
        public HttpResponseMessage GetListWorkData()
        {
            var workDataResponse = new WorkDataResponse();
            try
            {
                var seriptSerialization = new System.Web.Script.Serialization.JavaScriptSerializer();
                var request = Request.Content.ReadAsStringAsync();
                var getdata = seriptSerialization.Deserialize<WorkDataRequest>(request.Result);//Get Values For Requst
                workDataResponse.Token = "";
                workDataResponse.StatusCode = "200";
                workDataResponse.Message = "OK";
                workDataResponse.workDataList = dbContext.WorkDataDetails.ToList();

                return Request.CreateResponse(HttpStatusCode.OK, workDataResponse);
            }
            catch (Exception)
            {
                //Write Log
                workDataResponse.Token = "";
                workDataResponse.StatusCode = "500";
                workDataResponse.Message = "Something went wrong";
                workDataResponse.workDataList = null;
                return Request.CreateResponse(HttpStatusCode.ExpectationFailed, workDataResponse);
            }

        }
    }
}
