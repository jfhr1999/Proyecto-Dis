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
    public partial class Consultas : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            filtroAproximadoBind();
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void filtroAproximado(object sender, EventArgs e)
        {
            
            filtroAproximadoBind();
            
        }
        
        protected void filtroAproximadoBind()
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("fuzzySearch", conn);                     //usa el sp
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = nombre.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            conn.Open();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
            conn.Close();
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "visible1();", true);
            
        }

    }
}