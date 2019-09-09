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
    public partial class ManejarOfertasCursos : System.Web.UI.Page
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

        protected void dropDownCursos_SelectedIndexChanged(object sender, EventArgs e)
        {
            string msg = dropDownCursos.SelectedItem.Text;
            ScriptManager.RegisterClientScriptBlock(sender as Control, this.GetType(), "alert", "alert('" + msg + "')", true);

            Session["IdCurso"] = dropDownCursos.SelectedValue;
        }

        protected void mostrarInfo(object sender, EventArgs e)
        {
            mostrarInfoCurso(sender, e);
            mostrarHistorialOfertasCurso(sender, e);
            mostrarInteresadosCurso(sender, e);
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

            lblCodigo.Text = dt.Rows[0]["codigo"].ToString();
            lblNombre.Text = dt.Rows[0]["nombre"].ToString();
            lblPrecio.Text = dt.Rows[0]["precio"].ToString();
            lblDescripcion.Text = dt.Rows[0]["descripcion"].ToString();
            lblPeriodo.Text = dt.Rows[0]["periodo"].ToString();
            lblProfesor.Text = dt.Rows[0]["profesor"].ToString();
            lblHorario.Text = dt.Rows[0]["horario"].ToString();

            conn.Close();

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)          //paginador de resultados
        {
            GridView1.PageIndex = e.NewPageIndex;
            mostrarHistorialOfertasCursoBind();

        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)          //paginador de resultados
        {
            GridView2.PageIndex = e.NewPageIndex;
            mostrarInteresadosCursoBind();

        }

        protected void mostrarHistorialOfertasCurso(object sender, EventArgs e)
        {
            mostrarHistorialOfertasCursoBind();
        }

        protected void mostrarHistorialOfertasCursoBind()
        {
            DataTable dt = new DataTable();

            SqlCommand cmd = new SqlCommand("obtenerHistorialOfertasCurso", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = dropDownCursos.SelectedValue;
            SqlDataAdapter da = new SqlDataAdapter(cmd);   
            
            conn.Open();

            da.Fill(dt);                                                            
            GridView1.DataSource = dt;
            

            GridView1.DataBind();

            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;

            conn.Close();

            textoBadge.Text = GridView1.Rows.Count.ToString();

            
        }

        protected void mostrarInteresadosCurso(object sender, EventArgs e)
        {
            mostrarInteresadosCursoBind();
        }

        protected void mostrarInteresadosCursoBind()
        {
            DataTable dt = new DataTable();

            SqlCommand cmd = new SqlCommand("obtenerInteresadosEnCurso", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = dropDownCursos.SelectedValue;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            conn.Open();

            da.Fill(dt);
            GridView2.DataSource = dt;


            GridView2.DataBind();

            GridView2.HeaderRow.TableSection = TableRowSection.TableHeader;

            conn.Close();

            textoBadge2.Text = GridView2.Rows.Count.ToString();
        }

    }
}