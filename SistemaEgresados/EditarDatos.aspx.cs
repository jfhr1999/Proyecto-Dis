using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaEgresados
{
    public partial class EditarDatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cargarDatos();
                mostrarCursos(sender, e);
            }
            
        }

        SqlConnection conn = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");

        public void cargarDatos()
        {
            SqlCommand cmd = new SqlCommand("obtieneDatos", conn);                     //usa el sp
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cedula", SqlDbType.VarChar).Value = Session["UserActual"];
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBoxNombre.Text = dr.GetValue(0).ToString();
                LabelSetCedula.Text = dr.GetValue(1).ToString();
                LabelSetCarnet.Text = dr.GetValue(2).ToString();
                genero.Text = dr.GetValue(3).ToString();
                TextBoxCorreo.Text = dr.GetValue(4).ToString();
                TextBoxTelefono.Text = dr.GetValue(5).ToString();
                TextBoxCelular.Text = dr.GetValue(6).ToString();
                TextBoxProvincia.Text = dr.GetValue(7).ToString();
                TextBoxDistrito.Text = dr.GetValue(8).ToString();
                TextBoxCanton.Text = dr.GetValue(9).ToString();
                TextBoxPais.Text = dr.GetValue(10).ToString();
            }

            dr.Close();
            conn.Close();
        }

        public void editarDatos(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("editarDatos", conn);                     //usa el sp
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cedula", SqlDbType.Float).Value = Convert.ToDecimal(Session["UserActual"]);
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = TextBoxNombre.Text;
            cmd.Parameters.Add("@genero", SqlDbType.VarChar).Value = genero.Text;
            System.Diagnostics.Debug.WriteLine(genero.Text);
            cmd.Parameters.Add("@correo", SqlDbType.VarChar).Value = TextBoxCorreo.Text;
            cmd.Parameters.Add("@telCasa", SqlDbType.Float).Value = Convert.ToDecimal(TextBoxTelefono.Text);           //He intentado de todo
            cmd.Parameters.Add("@celular", SqlDbType.Float).Value = Convert.ToDecimal(TextBoxCelular.Text);
            cmd.Parameters.Add("@provincia", SqlDbType.VarChar).Value = TextBoxProvincia.Text;                      //El problema es que no agarra lo que el user pone en el text box, sino lo que ser carga en el OnLoad
            cmd.Parameters.Add("@distrito", SqlDbType.VarChar).Value = TextBoxDistrito.Text;
            cmd.Parameters.Add("@canton", SqlDbType.VarChar).Value = TextBoxCanton.Text;
            cmd.Parameters.Add("@pais", SqlDbType.VarChar).Value = TextBoxPais.Text;

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
            Response.Redirect("EditarDatos.aspx");
        }

        protected void mostrarCursos(object sender, EventArgs e)
        {
            mostrarCursosBind();
        }

        protected void mostrarCursosBind()
        {
            DataTable dt = new DataTable("dt");

            SqlCommand cmd = new SqlCommand("obtenerNombresCursos", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            conn.Open();
            da.Fill(dt);

            dropDownCurso.DataSource = dt;
            dropDownCurso.DataTextField = "nombreCurso";
            dropDownCurso.DataValueField = "id";

            dropDownCurso.DataBind();

            conn.Close();

        }

        protected void dropDownCursos_SelectedIndexChanged(object sender, EventArgs e)
        {
            string msg = dropDownCurso.SelectedItem.Text;
            ScriptManager.RegisterClientScriptBlock(sender as Control, this.GetType(), "alert", "alert('" + msg + "')", true);

            Session["IdCurso"] = dropDownCurso.SelectedValue;
        }

        protected void mostrarInfo(object sender, EventArgs e)
        {
            mostrarInfoCurso(sender, e);
        }

        protected void mostrarInfoCurso(object sender, EventArgs e)
        {
            mostrarInfoCursoBind();
        }

        protected void mostrarInfoCursoBind()
        {
            DataTable dt = new DataTable("dt");

            SqlCommand cmd = new SqlCommand("obtenerDatosBasicosDeCurso", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@id", SqlDbType.Int).Value = dropDownCurso.SelectedValue;

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            conn.Open();
            da.Fill(dt);

            lblCodigo.Text = dt.Rows[0]["codigo"].ToString();
            lblNombre.Text = dt.Rows[0]["nombre"].ToString();
            lblPrecio.Text = dt.Rows[0]["precio"].ToString();
            lblDescripcion.Text = dt.Rows[0]["descripcion"].ToString();
            lblPeriodo.Text = dt.Rows[0]["periodo"].ToString();
            lblProfesor.Text = dt.Rows[0]["profesor"].ToString();
            lblHorario.Text = dt.Rows[0]["horario"].ToString();

            conn.Close();
        }

        public void btnSeleccionarCurso(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("agregarCursoInteres", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cedula", SqlDbType.Float).Value = Convert.ToDecimal(Session["UserActual"]);
            cmd.Parameters.Add("@codigoCurso", SqlDbType.VarChar).Value = lblCodigo.Text.ToString();
            try
            {
                conn.Open();
                Int32 rowsAffected = cmd.ExecuteNonQuery();
                System.Diagnostics.Debug.WriteLine("RowsAffected: {0}", rowsAffected);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("NOOO SE PUDOOO");
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }
            conn.Close();
        }
    }
}