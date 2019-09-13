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
    public partial class AgregarEstudiante : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void agregarEstudiante(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("agregarEstudiante", conn);                     //usa el sp
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cedula", SqlDbType.Float).Value = Convert.ToDecimal(TextBoxCedula.Text);
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = TextBoxNombre.Text;
            cmd.Parameters.Add("@genero", SqlDbType.VarChar).Value = TextBoxGenero.Text;
            cmd.Parameters.Add("@carnet", SqlDbType.Float).Value = Convert.ToDecimal(TextBoxCarnet.Text);
            cmd.Parameters.Add("@correo", SqlDbType.VarChar).Value = TextBoxCorreo.Text;
            cmd.Parameters.Add("@telefonoCasa", SqlDbType.Float).Value = Convert.ToDecimal(TextBoxTelefono.Text);
            cmd.Parameters.Add("@celular", SqlDbType.Float).Value = Convert.ToDecimal(TextBoxCel.Text);
            cmd.Parameters.Add("@provincia", SqlDbType.VarChar).Value = TextBoxProvincia.Text;
            cmd.Parameters.Add("@distrito", SqlDbType.VarChar).Value = TextBoxDistrito.Text;
            cmd.Parameters.Add("@canton", SqlDbType.VarChar).Value = TextBoxCanton.Text;
            cmd.Parameters.Add("@pais", SqlDbType.VarChar).Value = TextBoxPais.Text;
            cmd.Parameters.Add("@direccion", SqlDbType.VarChar).Value = TextBoxDireccion.Text;
            cmd.Parameters.Add("@acta", SqlDbType.Float).Value = Convert.ToDecimal(TextBoxActa.Text);
            cmd.Parameters.Add("@plan", SqlDbType.Float).Value = Convert.ToDecimal(TextBoxPlan.Text);
            cmd.Parameters.Add("@carrera", SqlDbType.VarChar).Value = TextBoxCarrera.Text;
            cmd.Parameters.Add("@sede", SqlDbType.VarChar).Value = TextBoxSede.Text;
            cmd.Parameters.Add("@grado", SqlDbType.VarChar).Value = TextBoxGrado.Text;
            cmd.Parameters.Add("@titulo", SqlDbType.VarChar).Value = TextBoxTitulo.Text;
            cmd.Parameters.Add("@enfasis", SqlDbType.VarChar).Value = TextBoxEnfasis.Text;
            cmd.Parameters.Add("@fecha", SqlDbType.DateTime).Value = graduacion1.SelectedDate;


            try
            {
                conn.Open();
                Int32 rowsAffected = cmd.ExecuteNonQuery();
                System.Diagnostics.Debug.WriteLine("RowsAffected: {0}", rowsAffected);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }
            conn.Close();
            ScriptManager.RegisterClientScriptBlock(sender as Control, this.GetType(), "alert", "alert('" + "Registrado." + "')", true);
            Response.Redirect("AgregarEstudiante.aspx");
        }
    }
}