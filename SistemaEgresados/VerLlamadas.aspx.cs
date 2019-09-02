using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaEgresados
{
    public partial class VerLlamadas : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)          //paginador de resultados
        {
            GridView1.PageIndex = e.NewPageIndex;
            verLlamadasBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void verLlamadas(object sender, EventArgs e)
        {

            verLlamadasBind();

        }
        protected void verLlamadasBind()
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("verLlamadas", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cedula", SqlDbType.VarChar).Value = cedula.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);                            //ejecuta el sp con un adapter
            conn.Open();
            da.Fill(dt);                                                            //llena la data table
            GridView1.DataSource = dt;
            GridView1.DataBind();                                                   //hace binding a la tabla final

            conn.Close();
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "visible1();", true);

        }
    }
}