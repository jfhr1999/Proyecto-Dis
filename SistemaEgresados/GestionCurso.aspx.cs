using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SistemaEgresados.Modelo;





namespace SistemaEgresados
{
    public partial class GestionCurso : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        protected void addCurso(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("agregarCurso", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@codigo", SqlDbType.VarChar).Value = codigo.Text;
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = nombre.Text;
            cmd.Parameters.Add("@precio", SqlDbType.Float).Value = precio.Text;
            cmd.Parameters.Add("@descripcion", SqlDbType.VarChar).Value = comentarios.Text;
            cmd.Parameters.Add("@periodo", SqlDbType.VarChar).Value = periodo.Text;
            cmd.Parameters.Add("@tipoCurso", SqlDbType.VarChar).Value = tipo.Text;

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal1();", true);

        }
    }
}