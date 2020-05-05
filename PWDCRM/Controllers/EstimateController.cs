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
                    var getArea = dbContext.AREAs.ToList();
                    ViewData["ListArea"] = getArea;
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
                        var getArea = dbContext.AREAs.ToList();
                        ViewData["ListArea"] = getArea;
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
                            getData.NameOfWork = model.NameOfWork;
                            getData.SSRRate = model.SSRRate;
                           // getData.HeadOfAccounts = model.HeadOfAccounts;
                            getData.Area = model.Area;
                            getData.SubDivsion = model.SubDivsion;
                            getData.Divison = model.Divison;
                            getData.Circle = model.Circle;
                            getData.Region = model.Region;
                            getData.Remarks = model.Remarks;
                            getData.SubWorkData = model.SubWorkData;
                            getData.Royalty = model.Royalty;
                            getData.SANDPercentage = model.SANDPercentage;
                            getData.CostDiff = model.CostDiff;
                            getData.FundHead = model.FundHead;
                            getData.NameOfAgency = model.NameOfAgency;
                            getData.AgreementNo = model.AgreementNo;
                            getData.WorkOrderNo = model.WorkOrderNo;
                            getData.TypeSAND = model.TypeSAND;
                            getData.VAndQCPercentage = model.VAndQCPercentage;
                            getData.ElectricalINTPer = model.ElectricalINTPer;
                            getData.ElectricalExtPer = model.ElectricalExtPer;
                            getData.WaterSupply = model.WaterSupply;
                            getData.AnyOthercharg1 = model.AnyOthercharg1;
                            getData.AnyOthercharg2 = model.AnyOthercharg2;
                            getData.LabourInsurance = model.LabourInsurance;
                            getData.GST = model.GST;
                            getData.Contingencie = model.Contingencie;
                            getData.ServiceCharges = model.ServiceCharges;
                            getData.Tendered = model.Tendered;
                            getData.ApprovedBy = model.ApprovedBy;
                            getData.PreparedBy = model.PreparedBy;
                            getData.UpdatedOn = DateTime.Now; 
                            dbContext.WorkDataDetails.AddOrUpdate(getData); 
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
            return View(model);
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
                        addIteam.Qty = model.Qty;
                        addIteam.CreatedOn = DateTime.Now.Date;
                        addIteam.UpdateOn = DateTime.Now.Date;
                        addIteam.FloorData = model.FloorData;
                        addIteam.SubWorkID = model.SubWorkID;
                        dbContext.ItemDetails.Add(addIteam);
                        dbContext.SaveChanges();
                    }
                    else
                    {
                        var getItemDetail = dbContext.ItemDetails.Where(s => s.Id == model.Id).FirstOrDefault();
                        if(getItemDetail!=null)
                        {
                            getItemDetail.ItemNo = model.ItemNo;
                            getItemDetail.WorkDataID = model.WorkDataID;
                            getItemDetail.Number = model.Number;
                            getItemDetail.Length = model.Length;
                            getItemDetail.BreadthWidth = model.BreadthWidth;
                            getItemDetail.DepthHeight = model.DepthHeight;
                            //getItemDetail.GeometricalFormulas = "";
                            getItemDetail.Remarks = model.Remarks;
                            getItemDetail.Qty = model.Qty;
                            //getItemDetail.CreatedOn = DateTime.Now.Date;
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
            var listRateAnalisis = new List<RateAnalysisItemVM>();
            try
            {
                var dbContext = new PWDCRMEntities();
                model = dbContext.WorkDataDetails.Where(s => s.Id == id).FirstOrDefault();
                ViewBag.WorkName = model.NameOfWork;
                ViewBag.WorkId = model.Id;
                ViewBag.YearSSR = model.SSRRate;
                ViewBag.SubDivsion = model.SubDivsion;
                ViewBag.Divison = model.Divison;

                var getItemIds = dbContext.ItemDetails.Where(s => s.WorkDataID == id).Select(s => s.ItemNo).Distinct().ToArray();
                var getItemList = dbContext.ITEMS.Where(s => getItemIds.Contains(s.INO)).ToList();
                if(getItemList!=null)
                {
                    var arPer = 0.00;
                    var getArea = dbContext.AREAs.Where(s => s.AName == model.Area).FirstOrDefault();
                    if (getArea != null)
                        arPer = Convert.ToDouble(getArea.Per);

                    foreach (var item in getItemList)
                    {                  
                        var getflo = dbContext.ItemDetails.Where(s => s.ItemNo == item.INO).FirstOrDefault();
                        var splitf =Convert.ToInt32(getflo.FloorData.Split(' ')[1]);

                        var addItem = new RateAnalysisItemVM();
                        var addListRate = new List<RateAnalysisLCVM>();
                        var mainTotalLeadCh = 0.00;
                        var royltyCh = Convert.ToDouble(model.Royalty);
                        var mainDudctroyltyCh = 0.00;
                        addItem.ItemNo = item.INO;
                        addItem.ItemDesc = item.DESCRIP;
                        addItem.CompRate = Convert.ToDouble(item.CompRate);
                        addItem.FloorRise =(Convert.ToDouble(item.CompRate)*(splitf==1?1:(splitf==2?2:(splitf==3?3:(splitf==4?4:(splitf==5?4:(splitf==6?6:6.5)))))));
                        addItem.AddFor = (Convert.ToDouble(item.CompRate) * arPer);
                        addItem.AnyOtherCh = Convert.ToDouble(model.AnyOthercharg1);
                        addItem.SpecialChargesIfAny = Convert.ToDouble(model.AnyOthercharg2);
                        //Add Rate Analisis For the Lead Charges List
                        if (item.MAT1!=null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT1;
                            var rate = item.RATE1;
                            var getLeadCh = dbContext.LeadCharges.Where(s => s.Material == mat).FirstOrDefault();                          

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            if(getLeadCh!=null)
                            {
                                listRate.LeadCh = getLeadCh.InitialLeadCharges;
                                listRate.AddForMaterialDiff = getLeadCh.DiffofRate;
                                listRate.TotalLeadCh = (Convert.ToDouble(getLeadCh.InitialLeadCharges) * listRate.UnitCon);
                                listRate.DeductRoyaltyCh = (royltyCh * listRate.UnitCon);

                                mainTotalLeadCh = mainTotalLeadCh + listRate.TotalLeadCh;
                                mainDudctroyltyCh = mainDudctroyltyCh + listRate.DeductRoyaltyCh;
                            }
                            addListRate.Add(listRate);
                        }
                        if (item.MAT2 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT2;
                            var rate = item.RATE2;
                            var getLeadCh = dbContext.LeadCharges.Where(s => s.Material == mat).FirstOrDefault();

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            if (getLeadCh != null)
                            {
                                listRate.LeadCh = getLeadCh.InitialLeadCharges;
                                listRate.AddForMaterialDiff = getLeadCh.DiffofRate;
                                listRate.TotalLeadCh = (Convert.ToDouble(getLeadCh.InitialLeadCharges) * listRate.UnitCon);
                                listRate.DeductRoyaltyCh = (royltyCh * listRate.UnitCon);

                                mainTotalLeadCh = mainTotalLeadCh + listRate.TotalLeadCh;
                                mainDudctroyltyCh = mainDudctroyltyCh + listRate.DeductRoyaltyCh;
                            }
                            addListRate.Add(listRate);
                        }
                        if (item.MAT3 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT3;
                            var rate = item.RATE3;
                            var getLeadCh = dbContext.LeadCharges.Where(s => s.Material == mat).FirstOrDefault();

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            if (getLeadCh != null)
                            {
                                listRate.LeadCh = getLeadCh.InitialLeadCharges;
                                listRate.AddForMaterialDiff = getLeadCh.DiffofRate;
                                listRate.TotalLeadCh = (Convert.ToDouble(getLeadCh.InitialLeadCharges) * listRate.UnitCon);
                                listRate.DeductRoyaltyCh = (royltyCh * listRate.UnitCon);

                                mainTotalLeadCh = mainTotalLeadCh + listRate.TotalLeadCh;
                                mainDudctroyltyCh = mainDudctroyltyCh + listRate.DeductRoyaltyCh;
                            }
                            addListRate.Add(listRate);
                        }
                        if (item.MAT4 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT4;
                            var rate = item.RATE4;
                            var getLeadCh = dbContext.LeadCharges.Where(s => s.Material == mat).FirstOrDefault();

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            if (getLeadCh != null)
                            {
                                listRate.LeadCh = getLeadCh.InitialLeadCharges;
                                listRate.AddForMaterialDiff = getLeadCh.DiffofRate;
                                listRate.TotalLeadCh = (Convert.ToDouble(getLeadCh.InitialLeadCharges) * listRate.UnitCon);
                                listRate.DeductRoyaltyCh = (royltyCh * listRate.UnitCon);

                                mainTotalLeadCh = mainTotalLeadCh + listRate.TotalLeadCh;
                                mainDudctroyltyCh = mainDudctroyltyCh + listRate.DeductRoyaltyCh;
                            }
                            addListRate.Add(listRate);
                        }
                        if (item.MAT5 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT5;
                            var rate = item.RATE5;
                            var getLeadCh = dbContext.LeadCharges.Where(s => s.Material == mat).FirstOrDefault();

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            if (getLeadCh != null)
                            {
                                listRate.LeadCh = getLeadCh.InitialLeadCharges;
                                listRate.AddForMaterialDiff = getLeadCh.DiffofRate;
                                listRate.TotalLeadCh = (Convert.ToDouble(getLeadCh.InitialLeadCharges) * listRate.UnitCon);
                                listRate.DeductRoyaltyCh = (royltyCh * listRate.UnitCon);

                                mainTotalLeadCh = mainTotalLeadCh + listRate.TotalLeadCh;
                                mainDudctroyltyCh = mainDudctroyltyCh + listRate.DeductRoyaltyCh;
                            }
                            addListRate.Add(listRate);
                        }
                        if (item.MAT6 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT6;
                            var rate = item.RATE6;
                            var getLeadCh = dbContext.LeadCharges.Where(s => s.Material == mat).FirstOrDefault();

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            if (getLeadCh != null)
                            {
                                listRate.LeadCh = getLeadCh.InitialLeadCharges;
                                listRate.AddForMaterialDiff = getLeadCh.DiffofRate;
                                listRate.TotalLeadCh = (Convert.ToDouble(getLeadCh.InitialLeadCharges) * listRate.UnitCon);
                                listRate.DeductRoyaltyCh = (royltyCh * listRate.UnitCon);

                                mainTotalLeadCh = mainTotalLeadCh + listRate.TotalLeadCh;
                                mainDudctroyltyCh = mainDudctroyltyCh + listRate.DeductRoyaltyCh;
                            }
                            addListRate.Add(listRate);
                        }
                        if (item.MAT7 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT7;
                            var rate = item.RATE7;
                            var getLeadCh = dbContext.LeadCharges.Where(s => s.Material == mat).FirstOrDefault();

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            if (getLeadCh != null)
                            {
                                listRate.LeadCh = getLeadCh.InitialLeadCharges;
                                listRate.AddForMaterialDiff = getLeadCh.DiffofRate;
                                listRate.TotalLeadCh = (Convert.ToDouble(getLeadCh.InitialLeadCharges) * listRate.UnitCon);
                                listRate.DeductRoyaltyCh = (royltyCh * listRate.UnitCon);

                                mainTotalLeadCh = mainTotalLeadCh + listRate.TotalLeadCh;
                                mainDudctroyltyCh = mainDudctroyltyCh + listRate.DeductRoyaltyCh;
                            }
                            addListRate.Add(listRate);
                        }
                        if (item.MAT8 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT8;
                            var rate = item.RATE8;
                            var getLeadCh = dbContext.LeadCharges.Where(s => s.Material == mat).FirstOrDefault();

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                           // listRate
                            if (getLeadCh != null)
                            {
                                listRate.LeadCh = getLeadCh.InitialLeadCharges;
                                listRate.AddForMaterialDiff = getLeadCh.DiffofRate;
                                listRate.TotalLeadCh = (Convert.ToDouble(getLeadCh.InitialLeadCharges) * listRate.UnitCon);
                                listRate.DeductRoyaltyCh = (royltyCh * listRate.UnitCon);

                                mainTotalLeadCh = mainTotalLeadCh + listRate.TotalLeadCh;
                                mainDudctroyltyCh = mainDudctroyltyCh + listRate.DeductRoyaltyCh;
                            }
                            addListRate.Add(listRate);
                        }

                        addItem.rateAnalysisLCVMs = addListRate;
                        addItem.MainTotalLeadCh = mainTotalLeadCh;
                        addItem.MainDudRoyltyCh = mainDudctroyltyCh;
                        addItem.CompletedRate =Convert.ToDouble(addItem.CompRate+addItem.AddFor+addItem.FloorRise+addItem.AnyOtherCh+(mainTotalLeadCh- mainDudctroyltyCh)+addItem.SpecialChargesIfAny);
                        listRateAnalisis.Add(addItem);
                    }
                }
                ViewData["RateAnalysisList"] = listRateAnalisis;
                return View();
            }
            catch (Exception ex)
            {
                listRateAnalisis = new List<RateAnalysisItemVM>();
                ViewData["RateAnalysisList"] = listRateAnalisis;
                return View();
            }
        }

        [HttpPost]
        public JsonResult AddIteamBulk(int WorkDataID, string ItemNo, string FloorData,int SubWorkID,int[] ItemDetailIds)
        {
            var getResult = new List<ItemDetail>();
            try
            {
                using (var dbContext = new PWDCRMEntities())
                {
                    foreach (var item in ItemDetailIds)
                    {
                        var getItemDetail = dbContext.ItemDetails.Where(s => s.Id == item).FirstOrDefault();
                        if(getItemDetail!=null)
                        {
                            var addIteam = new ItemDetail();
                            addIteam.ItemNo = ItemNo;
                            addIteam.WorkDataID = WorkDataID;
                            addIteam.Number = getItemDetail.Number;
                            addIteam.Length = getItemDetail.Length;
                            addIteam.BreadthWidth = getItemDetail.BreadthWidth;
                            addIteam.DepthHeight = getItemDetail.DepthHeight;
                            addIteam.GeometricalFormulas = "";
                            addIteam.Remarks = getItemDetail.Remarks;
                            addIteam.Qty = getItemDetail.Qty;
                            addIteam.CreatedOn = DateTime.Now.Date;
                            addIteam.UpdateOn = DateTime.Now.Date;
                            addIteam.FloorData = FloorData;
                            addIteam.SubWorkID = SubWorkID;
                            dbContext.ItemDetails.Add(addIteam);
                            dbContext.SaveChanges();
                        }
                    }
                }
                return Json("Success", JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(ex.Message.ToString(), JsonRequestBehavior.AllowGet);
            }
        }
        //Report
        public ActionResult Report()
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
    
        public ActionResult ItemConsumption(int id)
        {
            var model = new WorkDataDetail();
            var listRateAnalisis = new List<RateAnalysisItemVM>();
            try
            {
                var dbContext = new PWDCRMEntities();
                model = dbContext.WorkDataDetails.Where(s => s.Id == id).FirstOrDefault();
                ViewBag.WorkName = model.NameOfWork;
                ViewBag.WorkId = model.Id;
                ViewBag.YearSSR = model.SSRRate;
                ViewBag.SubDivsion = model.SubDivsion;
                ViewBag.Divison = model.Divison;

                var getItemIds = dbContext.ItemDetails.Where(s => s.WorkDataID == id).Select(s => s.ItemNo).Distinct().ToArray();
                var getItemList = dbContext.ITEMS.Where(s => getItemIds.Contains(s.INO)).ToList();
                if (getItemList != null)
                {                    
                    foreach (var item in getItemList)
                    {
                        var getTotalQty = 0.00;
                        var getQty = dbContext.ItemDetails.Where(s => s.ItemNo == item.INO).Select(s => s.Qty).ToList();
                        foreach (var item3 in getQty)
                        {
                            getTotalQty = getTotalQty + Convert.ToDouble(item3);
                        }
                        var addItem = new RateAnalysisItemVM();
                        var addListRate = new List<RateAnalysisLCVM>();
                       
                        addItem.ItemNo = item.INO;
                        addItem.ItemDesc = item.DESCRIP;
                        addItem.ItemDesc = item.DESCRIP;
                        addItem.TotalQty = getTotalQty;
                        //Add Rate Analisis For the Lead Charges List
                        if (item.MAT1 != null)
                        {
                            var listRate = new RateAnalysisLCVM();
                            var mat = item.MAT1;
                            var rate = item.RATE1;
                           
                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));
                            
                            addListRate.Add(listRate);
                        }
                        if (item.MAT2 != null)
                        {
                            var listRate = new RateAnalysisLCVM();
                            var mat = item.MAT2;
                            var rate = item.RATE2;

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }
                        if (item.MAT3 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT3;
                            var rate = item.RATE3;

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }
                        if (item.MAT4 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT4;
                            var rate = item.RATE4;

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }
                        if (item.MAT5 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT5;
                            var rate = item.RATE5;

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }
                        if (item.MAT6 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT6;
                            var rate = item.RATE6;

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }
                        if (item.MAT7 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT7;
                            var rate = item.RATE7;

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }
                        if (item.MAT8 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT8;
                            var rate = item.RATE8;

                            listRate.ItemNo = item.INO;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }

                       addItem.rateAnalysisLCVMs = addListRate;
                       listRateAnalisis.Add(addItem);
                    }
                }
                ViewData["RateAnalysisList"] = listRateAnalisis;
                return View();
            }
            catch (Exception ex)
            {
                listRateAnalisis = new List<RateAnalysisItemVM>();
                ViewData["RateAnalysisList"] = listRateAnalisis;
                return View();
            }
        }

        public ActionResult MaterialConsumption(int id)
        {
            var model = new WorkDataDetail();
            var listRateAnalisis = new List<RateAnalysisItemVM>();
            var addListRate = new List<RateAnalysisLCVM>();
            try
            {
                var dbContext = new PWDCRMEntities();
                model = dbContext.WorkDataDetails.Where(s => s.Id == id).FirstOrDefault();
                ViewBag.WorkName = model.NameOfWork;
                ViewBag.WorkId = model.Id;
                ViewBag.YearSSR = model.SSRRate;
                ViewBag.SubDivsion = model.SubDivsion;
                ViewBag.Divison = model.Divison;

                var getItemIds = dbContext.ItemDetails.Where(s => s.WorkDataID == id).Select(s => s.ItemNo).Distinct().ToArray();
                var getItemList = dbContext.ITEMS.Where(s => getItemIds.Contains(s.INO)).ToList();
                if (getItemList != null)
                {
                    foreach (var item in getItemList)
                    {
                        //var getTotalQty = 0.00;
                        //var getQty = dbContext.ItemDetails.Where(s => s.ItemNo == item.INO).Select(s => s.Qty).ToList();
                        //foreach (var item3 in getQty)
                        //{
                        //    getTotalQty = getTotalQty + Convert.ToDouble(item3);
                        //}
                        //var addItem = new RateAnalysisItemVM();
                        

                        //addItem.ItemNo = item.INO;
                        //addItem.ItemDesc = item.DESCRIP;
                        //addItem.TotalQty = getTotalQty;
                        //Add Rate Analisis For the Lead Charges List
                        if (item.MAT1 != null)
                        {
                            var listRate = new RateAnalysisLCVM();
                            var mat = item.MAT1;
                            var rate = item.RATE1;

                            listRate.ItemNo = item.INO;
                            listRate.ItemDesc = item.DESCRIP;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                           // listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }
                        if (item.MAT2 != null)
                        {
                            var listRate = new RateAnalysisLCVM();
                            var mat = item.MAT2;
                            var rate = item.RATE2;

                            listRate.ItemNo = item.INO;
                            listRate.ItemDesc = item.DESCRIP;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                           // listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }
                        if (item.MAT3 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT3;
                            var rate = item.RATE3;

                            listRate.ItemNo = item.INO;
                            listRate.ItemDesc = item.DESCRIP;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                           // listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }
                        if (item.MAT4 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT4;
                            var rate = item.RATE4;

                            listRate.ItemNo = item.INO;
                            listRate.ItemDesc = item.DESCRIP;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            //listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }
                        if (item.MAT5 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT5;
                            var rate = item.RATE5;

                            listRate.ItemNo = item.INO;
                            listRate.ItemDesc = item.DESCRIP;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            //listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }
                        if (item.MAT6 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT6;
                            var rate = item.RATE6;

                            listRate.ItemNo = item.INO;
                            listRate.ItemDesc = item.DESCRIP;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            //listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }
                        if (item.MAT7 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT7;
                            var rate = item.RATE7;

                            listRate.ItemNo = item.INO;
                            listRate.ItemDesc = item.DESCRIP;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            //listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }
                        if (item.MAT8 != null)
                        {
                            var listRate = new RateAnalysisLCVM();

                            var mat = item.MAT8;
                            var rate = item.RATE8;

                            listRate.ItemNo = item.INO;
                            listRate.ItemDesc = item.DESCRIP;
                            listRate.Material = mat;
                            listRate.UnitCon = Convert.ToDouble(rate);
                            //listRate.TotalConsumption = (getTotalQty * Convert.ToDouble(rate));

                            addListRate.Add(listRate);
                        }

                        //addItem.rateAnalysisLCVMs = addListRate;
                        //listRateAnalisis.Add(addItem);
                    }
                }
                ViewData["RateAnalysisList"] = addListRate;
                return View();
            }
            catch (Exception ex)
            {
                addListRate = new List<RateAnalysisLCVM>();
                ViewData["RateAnalysisList"] = addListRate;
                return View();
            }
        }
    
        public ActionResult Measurements(int id)
        {
            var getList = new List<MeasurementsVM>();
            var model = new WorkDataDetail();
            try
            {                
                var dbContext = new PWDCRMEntities();
                model = dbContext.WorkDataDetails.Where(s => s.Id == id).FirstOrDefault();
                ViewBag.WorkName = model.NameOfWork;
                ViewBag.WorkId = model.Id;
                ViewBag.YearSSR = model.SSRRate;
                ViewBag.SubDivsion = model.SubDivsion;
                ViewBag.Divison = model.Divison;
                var getSubWorkData = dbContext.ItemDetails.Select(s => new { s.SubWorkID, s.ItemNo, s.WorkDataID,s.FloorData }).Distinct().Where(s => s.WorkDataID == id).ToList();
                foreach (var item in getSubWorkData)
                {
                    var Ino = item.ItemNo;
                    var SubWorkId = Convert.ToInt32(item.SubWorkID);
                    var WorkId = id;

                    var getMeasureDetail = new MeasurementsVM();
                    var ItemMeasList = new List<ItemDetailMeas>();

                    getMeasureDetail.ItemNo = item.ItemNo;                   
                    getMeasureDetail.SubWork = "Sub Work " + item.SubWorkID;
                    getMeasureDetail.SubWorkID = Convert.ToInt32(item.SubWorkID);
                    getMeasureDetail.Floor = item.FloorData;

                    var getItem = dbContext.ITEMS.Where(s => s.INO == Ino).FirstOrDefault();
                    getMeasureDetail.UnitCom = getItem.UnitS;
                    getMeasureDetail.ItemDesc = getItem.DESCRIP;

                    var getItemDetail = dbContext.ItemDetails.Where(s => s.SubWorkID == SubWorkId && s.ItemNo == Ino && s.WorkDataID== WorkId).ToList();

                    foreach (var item1 in getItemDetail)
                    {
                        var addMes = new ItemDetailMeas();
                        addMes.Number = item1.Number;
                        addMes.Length = item1.Length;
                        addMes.BreadthWidth = item1.BreadthWidth;
                        addMes.DepthHeight = item1.DepthHeight;
                        addMes.Qty = item1.Qty;
                        addMes.Remarks = item1.Remarks;

                        ItemMeasList.Add(addMes);
                    }
                    getMeasureDetail.itemDetailMeas = ItemMeasList;

                    getList.Add(getMeasureDetail);
                }
                ViewData["ListMes"] = getList;
            }
            catch (Exception)
            {
                getList = new List<MeasurementsVM>();
                ViewData["ListMes"] = getList;
            }
            return View();
        }
    }   
}