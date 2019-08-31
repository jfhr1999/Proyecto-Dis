using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SistemaEgresados

{
    public partial class Llamadas : System.Web.UI.Page
    {

        SqlConnection myConnection = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        public void conn2(object sender, EventArgs e)
        {


        }


    }
}