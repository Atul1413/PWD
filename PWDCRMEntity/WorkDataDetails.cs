using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PWDCRMEntity
{
    public class WorkDataDetails
    {
        [Key]
        public int Id { get; set; }
        public string NameOfWork { get; set; }
        public string SSRRate { get; set; }
        public string Department { get; set; }
        public string HeadOfAccounts { get; set; }
        public string Area { get; set; }
        public string SubDivsion { get; set; }
        public string Divison { get; set; }
        public string Circle { get; set; }
        public string Region { get; set; }
        public string Remarks { get; set; }
        public DateTime CreatedOn { get; set; }
        public DateTime UpdatedOn { get; set; }
    }
}
