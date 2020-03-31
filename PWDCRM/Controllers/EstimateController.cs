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
            catch (Exception ex)
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

        public ActionResult EditWorkData(int id)
        {
            try
            {
                using (var dbContext = new PWDCRMEntities())
                {
                    var getDetails = dbContext.WorkDataDetails.Where(s => s.Id == id).FirstOrDefault();
                    if(getDetails!=null)
                    {
                        return View(getDetails);
                    }
                    else
                    {
                        return RedirectToAction("WorkData");
                    }
                }
            }
            catch (Exception ex)
            {
                ViewData["Error"] = ex.Message.ToString();
            }
            return View();
        }

        [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult EditWorkData(WorkDataDetail model)
        {
            try
            {
                using (var dbContext = new PWDCRMEntities())
                {
                    if(model.Id!=0)
                    {
                        var id = model.Id;
                        var getData = dbContext.WorkDataDetails.Where(s => s.Id == id).FirstOrDefault();
                        if(getData!=null)
                        {
                            //model.CreatedOn = DateTime.Now;
                            getData.GST = model.GST;

                            model.UpdatedOn = DateTime.Now;
                            dbContext.WorkDataDetails.AddOrUpdate(model); //requires using System.Data.Entity.Migrations;
                            dbContext.SaveChanges();
                        }
                        else
                        {
                            return RedirectToRoute("WorkData");
                        }
                    }                    
                    return RedirectToAction("WorkData", "Estimate");
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
                    var workData = dbContext.ItemDetails.Where(s=>s.WorkDataID==id).OrderBy(s=>s.ItemNo).ToList();
                    ViewData["ItemDetailList"] = workData;
                    //model = dbContext.ItemDetails.ToList();
                    //ViewData["ItemDetail"] = model;
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
                var finalData = getDetails.Select(s => new { s.Chap}).Distinct().ToList();
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
                    if(model.Id==0)
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
                    }
                    else
                    {
                        var getItemDetail = dbContext.ItemDetails.Where(s => s.Id == model.Id).FirstOrDefault();
                        if(getItemDetail!=null)
                        {
                            getItemDetail.ItemNo = model.ItemNo;

                            getItemDetail.Number = model.Number;
                            getItemDetail.Length = model.Length;
                            getItemDetail.BreadthWidth = model.BreadthWidth;
                            getItemDetail.DepthHeight = model.DepthHeight;
                            getItemDetail.GeometricalFormulas = "";
                            getItemDetail.Remarks = model.Remarks;                           
                            getItemDetail.UpdateOn = DateTime.Now.Date;
                            getItemDetail.FloorData = model.FloorData;
                            getItemDetail.SubWorkID = model.SubWorkID;
                            dbContext.ItemDetails.AddOrUpdate(getItemDetail);
                            dbContext.SaveChanges();
                        }
                    }          
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
        [HttpPost]
        public JsonResult GetItemDetailById(int id)
        {
            try
            {
                var dbContext = new PWDCRMEntities();
                var finalData = dbContext.ItemDetails.Where(s => s.Id == id).FirstOrDefault();
                if (finalData != null)
                    return Json(finalData, JsonRequestBehavior.AllowGet);
                return Json("Error", JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("Error", JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public JsonResult DeleteItemDetails(int id)
        {
            try
            {
                var dbContext = new PWDCRMEntities();
                var finalData = dbContext.ItemDetails.Where(s => s.Id == id).FirstOrDefault();
                if (finalData != null)
                {
                    dbContext.ItemDetails.Remove(finalData);
                    dbContext.SaveChanges();
                    return Json("Success", JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json("Not found", JsonRequestBehavior.AllowGet);
                }

            }
            catch (Exception ex)
            {
                return Json(ex.ToString(), JsonRequestBehavior.AllowGet);
            }
        }

        //
        public ActionResult AddLeadCharges(int id)
        {
            var workDataid = id;
            var getWorkdata = new WorkDataDetail();
            try
            {
                using (var dbContext = new PWDCRMEntities())
                {
                    getWorkdata = dbContext.WorkDataDetails.Find(id);
                    var getMATERIAL = dbContext.MATERIALs.ToList();
                    var getList = dbContext.LeadCharges.Where(s=>s.WorkID==id).ToList();                   
                    ViewData["ListCharges"] = getList;
                    //Get Material
                    var MATERIAL = new List<string>();
                    var itemList = dbContext.ItemDetails.Where(s => s.WorkDataID == id).Select(f => f.ItemNo).Distinct().ToList();
                    if (itemList != null)
                    {
                        var getItemList = dbContext.ITEMS.Where(s => itemList.Contains(s.INO)).ToList();
                        foreach (var item in getItemList)
                        {
                            if (item.MAT1 != null)
                                MATERIAL.Add(item.MAT1);
                            if (item.MAT2 != null)
                                MATERIAL.Add(item.MAT2);
                            if (item.MAT3 != null)
                                MATERIAL.Add(item.MAT3);
                            if (item.MAT4 != null)
                                MATERIAL.Add(item.MAT4);
                            if (item.MAT5 != null)
                                MATERIAL.Add(item.MAT5);
                            if (item.MAT6 != null)
                                MATERIAL.Add(item.MAT6);
                            if (item.MAT7 != null)
                                MATERIAL.Add(item.MAT7);
                            if (item.MAT8 != null)
                                MATERIAL.Add(item.MAT8);
                        }
                    }
                    List<string> getmatLIst = MATERIAL.Distinct().ToList();
                    ViewData["MATERIAL"] = getmatLIst;
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
                var getList = MATERIAL.Distinct();


                return Json(getList, JsonRequestBehavior.AllowGet);
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
                    var round = Math.Round(Convert.ToDouble(getData.FACTOR), MidpointRounding.ToEven) ;
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
                    else
                    {
                        MATERIAL.Add("NA");
                    }
                    var getDiff = dbContext.DMATs.Where(s => s.MAT == materialName).FirstOrDefault();
                    if(getDiff!=null)
                    {
                        MATERIAL.Add(getDiff.Rate.ToString());
                    }
                    else
                    {
                        MATERIAL.Add("0");
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
        public JsonResult AddLeadCharges(LeadCharge addModel)
        {
            try
            {
                var list = new List<LeadCharge>();
                using (var dbContext = new PWDCRMEntities())
                {
                    if(addModel.Id==0)
                    {
                        var addLeadCharges = new LeadCharge();
                        addLeadCharges.InitialLeadCharges = addModel.InitialLeadCharges;
                        addLeadCharges.LeadInKM = addModel.LeadInKM;
                        addLeadCharges.Material = addModel.Material;
                        addLeadCharges.Source = addModel.Source;
                        addLeadCharges.SourceOfMaterial = addModel.SourceOfMaterial;
                        addLeadCharges.Remarks = addModel.Remarks;
                        addLeadCharges.InitialLeadInKM = "NA";
                        addLeadCharges.WorkID = addModel.WorkID;
                        addLeadCharges.ItemNo = "NA";
                        addLeadCharges.SSRRate = addModel.SSRRate;
                        addLeadCharges.CurrentDiff = addModel.CurrentDiff;
                        addLeadCharges.DiffofRate = addModel.DiffofRate;
                        addLeadCharges.CreatedOn = DateTime.Now;
                        addLeadCharges.UpdatedOn = DateTime.Now;
                        dbContext.LeadCharges.Add(addLeadCharges);
                        dbContext.SaveChanges();
                    }
                    else
                    {
                        var id = addModel.Id;
                        var getModelDetails = dbContext.LeadCharges.Where(s => s.Id == addModel.Id).FirstOrDefault();
                        if(getModelDetails!=null)
                        {
                            getModelDetails.Material = addModel.Material;
                            getModelDetails.Source = addModel.Source;
                            getModelDetails.SourceOfMaterial = addModel.SourceOfMaterial;
                            getModelDetails.LeadInKM = addModel.LeadInKM;
                            getModelDetails.InitialLeadCharges = addModel.InitialLeadCharges;
                            getModelDetails.Remarks = addModel.Remarks;
                            getModelDetails.SSRRate = addModel.SSRRate;
                            getModelDetails.CurrentDiff = addModel.CurrentDiff;
                            getModelDetails.DiffofRate = addModel.DiffofRate;
                            getModelDetails.UpdatedOn = DateTime.Now;
                            dbContext.LeadCharges.AddOrUpdate(getModelDetails);
                            dbContext.SaveChanges();
                        }
                        else
                        {
                            return Json("Error", JsonRequestBehavior.AllowGet);
                        }
                    }

                }
                using (var dbContext = new PWDCRMEntities())
                {
                    list = dbContext.LeadCharges.Where(s => s.WorkID == addModel.WorkID).ToList();
                }
                return Json(list, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json("Error", JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public JsonResult GetLeadCharges(int id)
        {
            try
            {              
                var dbContext = new PWDCRMEntities();
                var finalData = dbContext.LeadCharges.Where(s => s.Id == id).FirstOrDefault();    
                if(finalData!=null)
                    return Json(finalData, JsonRequestBehavior.AllowGet);
                return Json("Error", JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("Error", JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public JsonResult DeleteLeadCharges(int id)
        {
            try
            {

                var dbContext = new PWDCRMEntities();
                var finalData = dbContext.LeadCharges.Where(s => s.Id == id).FirstOrDefault();
                if(finalData!=null)
                {
                    dbContext.LeadCharges.Remove(finalData);
                    dbContext.SaveChanges();
                    return Json("Success", JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json("Not found", JsonRequestBehavior.AllowGet);
                }
                
            }
            catch (Exception ex)
            {
                return Json(ex.ToString(), JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public JsonResult GetFactorDetail(string materialName,double FACTOR)
        {
            try
            {
                var dbContext = new PWDCRMEntities();
                var getData = dbContext.MATERIALs.Where(s => s.MATERIAL1 == materialName).FirstOrDefault();
                var MATERIAL = new List<string>();
                if (getData != null)
                {
                    var round = Math.Round(Convert.ToDouble(getData.FACTOR), MidpointRounding.ToEven);
                    MATERIAL.Add(getData.FACTOR.ToString());
                    MATERIAL.Add(getData.MTYPE);
                    var getLead = dbContext.LEAD_CHART.Where(s => s.KM == FACTOR).FirstOrDefault();
                    if (getLead != null)
                    {
                        if (getData.MTYPE == "MANUAL")
                        {
                            MATERIAL.Add(getLead.TCostManual.ToString());
                        }
                        else if (getData.MTYPE == "MACHINE")
                        {
                            MATERIAL.Add(getLead.TCostMachine.ToString());
                        }
                        else
                        {
                            MATERIAL.Add("NA");
                        }
                    }
                    else
                    {
                        MATERIAL.Add("NA");
                    }
                    var getDiff = dbContext.DMATs.Where(s => s.MAT == materialName).FirstOrDefault();
                    if (getDiff != null)
                    {
                        MATERIAL.Add(getDiff.Rate.ToString());
                    }
                    else
                    {
                        MATERIAL.Add("0");
                    }
                }

                return Json(MATERIAL, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("", JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult RateAnalysisData(int id)
        {
            var model = new WorkDataDetail();
            try
            {
                var dbContext = new PWDCRMEntities();
                model = dbContext.WorkDataDetails.Where(s => s.Id == id).FirstOrDefault();
                return View(model);
            }
            catch (Exception ex)
            {
                return View(model);
            }
        }
    }
    
}