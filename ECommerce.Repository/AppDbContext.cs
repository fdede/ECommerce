using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ECommerce.Repository
{
    public class AppDbContext
    {
        private static SqlConnection _connection;

        public static SqlConnection Connection
        {
            get
            {
                // TODO ConfigurationManager.ConnectionStrings["SqlConnection"].ConnectionString
                _connection = _connection ?? new SqlConnection("Data Source=DESKTOP-D2H9PEB\\SQLEXPRESS;Initial Catalog=ECommerce;User ID=sa;Password=123;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                return _connection;
            }
        }

    }
}
