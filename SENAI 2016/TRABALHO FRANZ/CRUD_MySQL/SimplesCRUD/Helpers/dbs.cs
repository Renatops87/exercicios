using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace SampleCRUD.Helpers
{
    class dbs
    {
        private String connectionString;

        public String getConnectionString()
        {
            connectionString = ConfigurationManager.ConnectionStrings["SampleCRUD.Properties.Settings.crudConnectionString"].ConnectionString;
            return connectionString;
        }
    }
}
