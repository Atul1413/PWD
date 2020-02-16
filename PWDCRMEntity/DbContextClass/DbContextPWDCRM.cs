using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PWDCRMEntity.DbContextClass
{
    public class DbContextPWDCRM:DbContext
    {
        public DbSet<WorkDataDetails> WorkDataDetails { get; set; }
        public DbSet<ItemDetails> ItemDetails { get; set; }
    }
}
