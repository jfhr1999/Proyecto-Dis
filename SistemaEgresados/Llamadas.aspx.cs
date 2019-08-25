using System;
using System.Collections.Generic;
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

            myConnection.Open();
            SqlDataReader dataReader;
            string query = "Select Nombre from Informacion$ where Cedula = 107040037";
            SqlCommand exec = new SqlCommand(query, myConnection);
            dataReader = exec.ExecuteReader();
            while (dataReader.Read())
            {
                System.Diagnostics.Debug.WriteLine(dataReader.GetValue(0) + "</br>");

            }
            //exec.ExecuteNonQuery();
            //System.Diagnostics.Debug.WriteLine(a.ToString());
            myConnection.Close();
        }


    }
}