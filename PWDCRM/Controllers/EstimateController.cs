using PWDCRM.Models;
using PWDCRM.Models.ViewModels;
using PWDCRMEntity;
using PWDCRMEntity.DbContextClass;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PWDCRM.Controllers
{
    public class EstimateController : Controller
    {
        // GET: Estimate
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult WorkData()
        {
            var workList = new List<WorkDataDetail>();
            try
            {
                using (var dbContext = new PWDCRMEntities())
                {
                    workList = dbContext.WorkDataDetails.ToList();                   
                }
                ViewData["Title"] = "Work Data";
               
            }
            catch (Exception)
            {
                workList = new List<WorkDataDetail>();
            }
            return View(workList);
        }

        public ActionResult AddWorkData()
        {
            try
            {
                using (var dbContext = new PWDCRMEntities())
                {
                    var getdata = dbContext.SubWorkDataDetails.Where(s => s.IsActive == true).ToList();
                    ViewData["SubData"] = getdata;
                }
            }
            catch (Exception ex)
            {
                ViewBag.Error = ex.Message.ToString();
            }
            return View();
        }
        [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult AddWorkData(WorkDataDetail model)
        {
            try
            {
                using (var dbContext = new PWDCRMEntities())
                {
                    model.CreatedOn = DateTime.Now;
                    model.UpdatedOn = DateTime.Now;
                    dbContext.WorkDataDetails.AddOrUpdate(model); //requires using System.Data.Entity.Migrations;
                    dbContext.SaveChanges();
                    return RedirectToAction("AddItem", "Estimate", new { id = model.Id });
                   // return View("AddItem");
                }
            }
            catch (Exception ex)
            {
                ViewBag.Error = ex.Message.ToString();
            }
            return View();
        }

        public ActionResult AddItem(int id)
        {
            var model = new List<ItemDetail>();
            var getWorkdata = new WorkDataDetail();
            try
            {
                using (var dbContext = new PWDCRMEntities())
                {
                    getWorkdata = dbContext.WorkDataDetails.Find(id);
                    var workData = dbContext.WorkDataDetails.ToList();
                    ViewData["workData"] = workData;
                    model = dbContext.ItemDetails.ToList();
                    ViewData["ItemDetail"] = model;
                }
            }
            catch (Exception ex)
            {
                getWorkdata = new WorkDataDetail();
                ViewBag.Error = ex.Message.ToString();
            }
            return View(getWorkdata);
        }
        [HttpPost]
        public JsonResult GetCategoryAutocomplete(string Chap)
        {
            try
            {
                var dbContext = new PWDCRMEntities();
                var getDetails = dbContext.ITEMS.Where(s => s.Chap.Contains(Chap)).ToList();
                var finalData = getDetails.GroupBy(g => new { g.Chap, g.ANO }).Select(s => new { s.Key.ANO, s.Key.Chap }).Distinct().ToList();
                return Json(finalData, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("", JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public JsonResult GetIteamAutocomplete(string INO)
        {
            try
            {
                var dbContext = new PWDCRMEntities();
                var finalData = dbContext.ITEMS.Select(s => new { s.INO, s.DESCRIP, s.UnitF, s.CompRate, s.ANO }).Where(s => s.INO.Contains(INO)).ToList();
                return Json(finalData, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("", JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public JsonResult GetIteamDescripation(string CategoryName)
        {
            try
            {
                var dbContext = new PWDCRMEntities();
                var getIteamData = dbContext.ITEMS.Select(s => new { s.ANO, s.DESCRIP, s.Chap }).Where(s => s.Chap == CategoryName).ToList();
                return Json(getIteamData, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("", JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult GetIteamNoDetails(string Prefix)
        {
            try
            {
                var id = Convert.ToInt32(Prefix);
                var dbContext = new PWDCRMEntities();
                var finalData = dbContext.ITEMS.Where(s => s.ANO == id).FirstOrDefault();
                return Json(finalData, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("", JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult GetIteamDetailsByINo(string Prefix)
        {
            try
            {
                var dbContext = new PWDCRMEntities();
                var result = new ItemNoVM();
                var getItemDetails = dbContext.ITEMS.Where(s => s.INO == Prefix).FirstOrDefault();
                if (getItemDetails != null)
                {
                    var getChap = getItemDetails.Chap;
                    var getIteamList = dbContext.ITEMS.Where(s => s.Chap == getChap).ToList();
                    result.itemDetail = getItemDetails;
                    result.itemDetailsList = getIteamList;
                }
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("", JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public JsonResult AddIteamQty(ItemDetail model)
        {
            var getResult = new List<ItemDetail>();
            try
            {
                using (var dbContext = new PWDCRMEntities())
                {
                    var addIteam = new ItemDetail();
                    addIteam.ItemNo = model.ItemNo;
                    addIteam.WorkDataID = model.WorkDataID;
                    addIteam.Number = model.Number;
                    addIteam.Length = model.Length;
                    addIteam.BreadthWidth = model.BreadthWidth;
                    addIteam.DepthHeight = model.DepthHeight;
                    addIteam.GeometricalFormulas = "";
                    addIteam.Remarks = model.Remarks;
                    addIteam.CreatedOn = DateTime.Now.Date;
                    addIteam.UpdateOn = DateTime.Now.Date;
                    addIteam.FloorData = model.FloorData;
                    addIteam.SubWorkID = model.SubWorkID;
                    dbContext.ItemDetails.Add(model);
                    dbContext.SaveChanges();


                    var workData = dbContext.WorkDataDetails.ToList();
                    ViewData["workData"] = workData;

                    getResult = dbContext.ItemDetails.Where(s=>s.WorkDataID== model.WorkDataID).ToList();
                }
                return Json(getResult, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(getResult, JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public JsonResult GetAllWorkIteam(int workIteamId)
        {
            try
            {
                var dbContext = new PWDCRMEntities();              
                var getItemDetails = dbContext.ItemDetails.Where(s => s.WorkDataID == workIteamId).ToList();               
                return Json(getItemDetails, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("", JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult AddLeadCharges(int id)
        {
            var workDataid = id;
            var getWorkdata = new WorkDataDetail();
            try
            {
                using (var dbContext = new PWDCRMEntities())
                {
                    getWorkdata = dbContext.WorkDataDetails.Find(id);
                    var getItemData = dbContext.ItemDetails.Select(s=>new LeadChargesVM { ItemNo=s.ItemNo,WorkDataID=s.WorkDataID }).Where(s => s.WorkDataID == workDataid).Distinct().ToList();
                    ViewData["ItemData"] = getItemData;
                }
            }
            catch (Exception ex)
            {
                getWorkdata = new WorkDataDetail();
            }
            return View(getWorkdata);
        }

        [HttpPost]
        public JsonResult GetIteamMete(string itemNo)
        {
            try
            {
                var dbContext = new PWDCRMEntities();
                var getIteamData = dbContext.ITEMS.Where(s => s.INO == itemNo).FirstOrDefault();
                var MATERIAL = new List<string>();
                if (getIteamData!=null)
                {
                    if (getIteamData.MAT1 != null)
                        MATERIAL.Add(getIteamData.MAT1);
                    if (getIteamData.MAT2 != null)
                        MATERIAL.Add(getIteamData.MAT2);
                    if (getIteamData.MAT3 != null)
                        MATERIAL.Add(getIteamData.MAT3);
                    if (getIteamData.MAT4 != null)
                        MATERIAL.Add(getIteamData.MAT4);
                    if (getIteamData.MAT5 != null)
                        MATERIAL.Add(getIteamData.MAT5);
                    if (getIteamData.MAT6 != null)
                        MATERIAL.Add(getIteamData.MAT6);
                    if (getIteamData.MAT7 != null)
                        MATERIAL.Add(getIteamData.MAT7);
                    if (getIteamData.MAT8 != null)
                        MATERIAL.Add(getIteamData.MAT8);
                }
               
                return Json(MATERIAL, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("", JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult GetmaterialDetail(string materialName)
        {
            try
            {
                var dbContext = new PWDCRMEntities();
                var getData = dbContext.MATERIALs.Where(s => s.MATERIAL1 == materialName).FirstOrDefault();
                var MATERIAL = new List<string>();
                if (getData != null)
                {
                    MATERIAL.Add(getData.FACTOR.ToString());
                    MATERIAL.Add(getData.MTYPE);                    
                    var getLead = dbContext.LEAD_CHART.Where(s => s.KM == getData.FACTOR).FirstOrDefault();
                    if(getLead != null)
                    {
                        if (getData.MTYPE == "MANUAL")
                        {
                            MATERIAL.Add(getLead.TCostManual.ToString());
                        }                           
                        else if(getData.MTYPE == "MACHINE")
                        {
                            MATERIAL.Add(getLead.TCostMachine.ToString());
                        }
                        else
                        {
                            MATERIAL.Add("NA");
                        }
                    }                   
                }

                return Json(MATERIAL, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("", JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult AddLeadCharges(string ItemName, string Material,string LeadinKM,string SourceOfMaterail,string InitialLead,string Remark,int WorkId)
        {
            try
            {
                var list = new List<LeadCharge>();
                using (var dbContext = new PWDCRMEntities())
                {
                    var addLeadCharges = new LeadCharge();
                    addLeadCharges.InitialLeadCharges = InitialLead;
                    addLeadCharges.LeadInKM = LeadinKM;
                    addLeadCharges.Material = Material;
                    addLeadCharges.Source = SourceOfMaterail;
                    addLeadCharges.Remarks = Remark;
                    addLeadCharges.InitialLeadInKM = LeadinKM;
                    addLeadCharges.WorkID = WorkId;
                    addLeadCharges.ItemNo = ItemName;
                    addLeadCharges.CreatedOn = DateTime.Now;
                    addLeadCharges.UpdatedOn = DateTime.Now;
                    dbContext.LeadCharges.Add(addLeadCharges);
                    dbContext.SaveChanges();
                }
                using (var dbContext = new PWDCRMEntities())
                {
                    list = dbContext.LeadCharges.Where(s => s.WorkID == WorkId).ToList();
                }
                return Json(list, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json("", JsonRequestBehavior.AllowGet);
            }
        }
    }
    
}