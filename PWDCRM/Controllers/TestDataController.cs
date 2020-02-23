using PWDCRM.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PWDCRM.Controllers
{
    public class TestDataController : Controller
    {
        // GET: TestData
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(HttpPostedFileBase postedFile)
        {
            string filePath = string.Empty;
            if (postedFile != null)
            {
                string path = Server.MapPath("~/Uploads/");
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }

                filePath = path + Path.GetFileName(postedFile.FileName);
                string extension = Path.GetExtension(postedFile.FileName);
                postedFile.SaveAs(filePath);

                string conString = string.Empty;
                switch (extension)
                {
                    case ".xls": //Excel 97-03.
                        conString = ConfigurationManager.ConnectionStrings["Excel03ConString"].ConnectionString;
                        break;
                    case ".xlsx": //Excel 07 and above.
                        conString = ConfigurationManager.ConnectionStrings["Excel07ConString"].ConnectionString;
                        break;
                }

                DataTable dt = new DataTable();
                conString = string.Format(conString, filePath);

                using (OleDbConnection connExcel = new OleDbConnection(conString))
                {
                    using (OleDbCommand cmdExcel = new OleDbCommand())
                    {
                        using (OleDbDataAdapter odaExcel = new OleDbDataAdapter())
                        {
                            cmdExcel.Connection = connExcel;

                            //Get the name of First Sheet.
                            connExcel.Open();
                            DataTable dtExcelSchema;
                            dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
                            string sheetName = dtExcelSchema.Rows[0]["TABLE_NAME"].ToString();
                            connExcel.Close();




                            //dgdfgd
                            //Read Data from First Sheet.
                            connExcel.Open();
                            cmdExcel.CommandText = "SELECT * From [" + sheetName + "]";
                            odaExcel.SelectCommand = cmdExcel;
                            odaExcel.Fill(dt);
                            connExcel.Close();
                        }
                    }
                }

                conString = ConfigurationManager.ConnectionStrings["Constring"].ConnectionString;
                using (SqlConnection con = new SqlConnection(conString))
                {
                    using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con))
                    {
                        //Set the database table name.
                        sqlBulkCopy.DestinationTableName = "dbo.ITEMS";

                        //[OPTIONAL]: Map the Excel columns with that of the database table
                        sqlBulkCopy.ColumnMappings.Add("ANO", "ANO");
                        sqlBulkCopy.ColumnMappings.Add("SrNO", "SrNO");
                        sqlBulkCopy.ColumnMappings.Add("Chap", "Chap");
                        sqlBulkCopy.ColumnMappings.Add("Ref", "Ref");
                        sqlBulkCopy.ColumnMappings.Add("INO", "INO");
                        sqlBulkCopy.ColumnMappings.Add("PgNo", "PgNo");
                        sqlBulkCopy.ColumnMappings.Add("CAT", "CAT");
                        sqlBulkCopy.ColumnMappings.Add("DESCRIP", "DESCRIP");
                        sqlBulkCopy.ColumnMappings.Add("Spec", "Spec");
                        sqlBulkCopy.ColumnMappings.Add("UnitF", "UnitF");
                        sqlBulkCopy.ColumnMappings.Add("UnitS", "UnitS");
                        sqlBulkCopy.ColumnMappings.Add("CompRate", "CompRate");
                        sqlBulkCopy.ColumnMappings.Add("LRate", "LRate");
                        sqlBulkCopy.ColumnMappings.Add("MAT1", "MAT1");
                        sqlBulkCopy.ColumnMappings.Add("MAT2", "MAT2");
                        sqlBulkCopy.ColumnMappings.Add("MAT3", "MAT3");
                        sqlBulkCopy.ColumnMappings.Add("MAT4", "MAT4");
                        sqlBulkCopy.ColumnMappings.Add("MAT5", "MAT5");
                        sqlBulkCopy.ColumnMappings.Add("MAT6", "MAT6");
                        sqlBulkCopy.ColumnMappings.Add("MAT7", "MAT7");
                        sqlBulkCopy.ColumnMappings.Add("MAT8", "MAT8");
                        sqlBulkCopy.ColumnMappings.Add("RATE1", "RATE1");
                        sqlBulkCopy.ColumnMappings.Add("RATE2", "RATE2");
                        sqlBulkCopy.ColumnMappings.Add("RATE3", "RATE3");
                        sqlBulkCopy.ColumnMappings.Add("RATE4", "RATE4");
                        sqlBulkCopy.ColumnMappings.Add("RATE5", "RATE5");
                        sqlBulkCopy.ColumnMappings.Add("RATE6", "RATE6");
                        sqlBulkCopy.ColumnMappings.Add("RATE7", "RATE7");
                        sqlBulkCopy.ColumnMappings.Add("RATE8", "RATE8");
                        sqlBulkCopy.ColumnMappings.Add("XCelX", "XCelX");
                        sqlBulkCopy.ColumnMappings.Add("XcelY", "XcelY");
                        sqlBulkCopy.ColumnMappings.Add("XLPath", "XLPath");
                        sqlBulkCopy.ColumnMappings.Add("RATYPE", "RATYPE");
                        sqlBulkCopy.ColumnMappings.Add("SCADA", "SCADA");
                        sqlBulkCopy.ColumnMappings.Add("SCADAPer", "SCADAPer");
                        sqlBulkCopy.ColumnMappings.Add("Plastic", "Plastic");
                        con.Open();
                        sqlBulkCopy.WriteToServer(dt);
                        con.Close();
                    }
                }
            }

            return View();
        }
        [HttpPost]
        public JsonResult IndexData(string Prefix)
        {
            var dbContext = new PWDCRMEntities();
            //Searching records from list using LINQ query  
            var d = dbContext.ITEMS.Where(s => s.Chap.Contains(Prefix)).ToList();
            var d1=d.GroupBy(g => new { g.Chap, g.ANO }).Select(s=>new { s.Key.ANO,s.Key.Chap}).Distinct().ToList();
            //var CityList =  (from N in dbContext.ITEMS
            //                where N.CAT.StartsWith(Prefix)
            //                select new { N.CAT });
            //List<Product> result = pr.GroupBy(g => new { g.Title, g.Price })
            //             .Select(g => g.First())
            //             .ToList();
            return Json(d1, JsonRequestBehavior.AllowGet);
        }
    }
}