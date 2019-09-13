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
    public partial class ActualizarCursos : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                mostrarCursos(sender, e);
            }
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

            dropDownCursos.DataSource = dt;
            dropDownCursos.DataTextField = "nombreCurso";
            dropDownCursos.DataValueField = "id";

            dropDownCursos.DataBind();

            conn.Close();

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

            cmd.Parameters.Add("@id", SqlDbType.Int).Value = dropDownCursos.SelectedValue;

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            conn.Open();
            da.Fill(dt);

            TextEditCodigo.Text = dt.Rows[0]["codigo"].ToString();
            TextEditNombre.Text = dt.Rows[0]["nombre"].ToString();
            TextEditPrecio.Text = dt.Rows[0]["precio"].ToString();
            TextEditDescripcion.Text = dt.Rows[0]["descripcion"].ToString();
            TextEditPeriodo.Text = dt.Rows[0]["periodo"].ToString();
            TextEditProfesor.Text = dt.Rows[0]["profesor"].ToString();
            TextEditHorario.Text = dt.Rows[0]["horario"].ToString();

            conn.Close();

        }

        protected void agregarCurso(object sender, EventArgs e)
        {
            agregarCursoBind();
        }

        protected void agregarCursoBind()
        {
            SqlCommand cmd = new SqlCommand("agregarCurso", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@codigo", SqlDbType.VarChar, 20).Value = TextBoxCodigo.Text;
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar, 100).Value = TextBoxNombre.Text;
            cmd.Parameters.Add("@precio", SqlDbType.Float).Value = Convert.ToDecimal(TextBoxPrecio.Text);
            cmd.Parameters.Add("@descripcion", SqlDbType.VarChar, 200).Value = TextBoxDescripcion.Text;
            cmd.Parameters.Add("@periodo", SqlDbType.VarChar, 200).Value = TextBoxPeriodo.Text;
            cmd.Parameters.Add("@profesor", SqlDbType.VarChar, 100).Value = TextBoxProfesor.Text;
            cmd.Parameters.Add("@horario", SqlDbType.VarChar, 100).Value = TextBoxHorario.Text;

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
            Response.Redirect("ActualizarCursos.aspx");

        }


        protected void editarCurso(object sender, EventArgs e)
        {
            editarCursoBind();
        }

        protected void editarCursoBind()
        {
            SqlCommand cmd = new SqlCommand("editarCurso", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = dropDownCursos.SelectedValue;
            cmd.Parameters.Add("@codigo", SqlDbType.VarChar, 20).Value = TextEditCodigo.Text;
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar, 100).Value = TextEditNombre.Text;
            cmd.Parameters.Add("@precio", SqlDbType.Float).Value = Convert.ToDecimal(TextEditPrecio.Text);
            cmd.Parameters.Add("@descripcion", SqlDbType.VarChar, 200).Value = TextEditDescripcion.Text;
            cmd.Parameters.Add("@periodo", SqlDbType.VarChar, 200).Value = TextEditPeriodo.Text;
            cmd.Parameters.Add("@profesor", SqlDbType.VarChar, 100).Value = TextEditProfesor.Text;
            cmd.Parameters.Add("@horario", SqlDbType.VarChar, 100).Value = TextEditHorario.Text;

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
            Response.Redirect("ActualizarCursos.aspx");

        }



        //public void cargarDatos(object sender, EventArgs e)
        //{

        //    SqlCommand cmd = new SqlCommand("obtenerEstudiante", conn);                     //usa el sp
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.Add("@cedula", SqlDbType.Float).Value = cedula.Text;
        //    conn.Open();
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {


        //    }

        //    dr.Close();
        //    conn.Close();
        //}

        private int GetColumnIndexByName(GridView grid, string name)
        {
            foreach (DataControlField col in grid.Columns)
            {
                if (col.HeaderText.ToLower().Trim() == name.ToLower().Trim())
                {
                    return grid.Columns.IndexOf(col);
                }
            }

            return -1;
        }
    }
}