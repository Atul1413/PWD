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
            try
            {
                ViewData["Title"] = "Work Data";
            }
            catch (Exception)
            {

                throw;
            }
            return View();
        }

        public ActionResult AddWorkData()
        {
            try
            {

            }
            catch (Exception ex)
            {
                ViewBag.Error = ex.Message.ToString();
            }
            return View();
        }
        [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult AddWorkData(WorkDataDetails model)
        {
            try
            {
                using (var dbContext=new DbContextPWDCRM())
                {
                    model.CreatedOn = DateTime.Now;
                    model.UpdatedOn = DateTime.Now;
                    dbContext.WorkDataDetails.AddOrUpdate(model); //requires using System.Data.Entity.Migrations;
                    dbContext.SaveChanges();

                    return View("AddItem");
                }
            }
            catch (Exception ex)
            {
                ViewBag.Error = ex.Message.ToString();
            }
            return View();
        }

        public ActionResult AddItem()
        {
            try
            {
                using (var dbContext=new DbContextPWDCRM())
                {
                    var workData = dbContext.WorkDataDetails.ToList();
                    ViewData["workData"] = workData;
                }
            }
            catch (Exception ex)
            {
                ViewBag.Error = ex.Message.ToString();
            }
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult AddItem(ItemVM itemVM)
        {
            try
            {
                using (var dbContext = new DbContextPWDCRM())
                {
                    var addList = new List<ItemDetails>();
                    var count = 0;
                    foreach (var item in itemVM.Number)
                    {
                        var model = new ItemDetails();
                        model.ItemNo = itemVM.ItemNo;
                        model.WorkDataID = 1;
                        model.Number = Convert.ToInt32(item);
                        model.Length = Convert.ToInt32(itemVM.Length[count]);
                        model.BreadthWidth = Convert.ToInt32(itemVM.BreadthWidth[count]);
                        model.DepthHeight = Convert.ToInt32(itemVM.DepthHeight[count]);
                        model.GeometricalFormulas = itemVM.GeometricalFormulas[count];
                        model.Remarks = itemVM.Remarks[count].ToString();
                        model.CreatedOn = DateTime.Now;
                        model.UpdateOn = DateTime.Now;
                        
                        count++;
                        addList.Add(model);
                    }
                    dbContext.ItemDetails.AddRange(addList); 

                    dbContext.SaveChanges();

                    var workData = dbContext.WorkDataDetails.ToList();

                    ViewData["workData"] = workData;
                }
            }
            catch (Exception ex)
            {
                ViewBag.Error = ex.Message.ToString();
            }
            return View();
        }
    }
}