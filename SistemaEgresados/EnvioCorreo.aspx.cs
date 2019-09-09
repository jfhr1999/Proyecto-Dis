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
    public partial class EnvioCorreo : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                mostrarInfoCorreos(sender, e);

                mostrarTextoCorreo(sender, e);

                
            }
        }


        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)          //paginador de resultados
        {
            GridView1.PageIndex = e.NewPageIndex;
            mostrarInfoCorreosBind();
        }

        protected void mostrarInfoCorreos(object sender, EventArgs e)
        {
            mostrarInfoCorreosBind();
        }

        protected void mostrarInfoCorreosBind()
        {
            DataTable dt = new DataTable();

            SqlCommand cmd = new SqlCommand("obtenerInfoCorreosInteresados", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@idCurso", SqlDbType.VarChar).Value = Session["IdCurso"];
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            conn.Open();

            da.Fill(dt);
            GridView1.DataSource = dt;


            GridView1.DataBind();

            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;

            conn.Close();
        }

        protected void mostrarTextoCorreo(object sender, EventArgs e)
        {
            mostrarTextoCorreoBind();
        }

        protected void mostrarTextoCorreoBind()
        {

            DataTable dt = new DataTable();

            SqlCommand cmd = new SqlCommand("obtenerDatosBasicosDeCurso", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = Session["IdCurso"];
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            conn.Open();

            da.Fill(dt);


            String codigo;
            String nombreCurso;
            String periodo;
            String descripcion;
            String profesor;
            String horario;
            String precio;

            try
            {
                codigo = dt.Rows[0]["codigo"].ToString();
            } catch {
                codigo = "**CODIGO**";
            }
            
            try
            {
                nombreCurso = dt.Rows[0]["nombre"].ToString();
            } catch{
                nombreCurso = "**NOMBRECURSO**";
            }

            try
            {
                periodo = dt.Rows[0]["periodo"].ToString();
            }
            catch{
                periodo = "**PERIODO**";
            }

            try
            {
                descripcion = dt.Rows[0]["descripcion"].ToString();
            }
            catch
            {
                descripcion = "**DESCRIPCION**";
            }

            try
            {
                profesor = dt.Rows[0]["profesor"].ToString();
            }
            catch
            {
                profesor = "**PROFESOR**";
            }

            try
            {
                horario = dt.Rows[0]["horario"].ToString();
            }
            catch
            {
                horario = "**HORARIO**";
            }

            try
            {
                precio = dt.Rows[0]["precio"].ToString();
            }
            catch
            {
                precio = "**PRECIO**";
            }

            

            conn.Close();

            TextBoxCuerpoCorreo.Text = "Estimado/a **NOMBRE**,"
                    + Environment.NewLine + Environment.NewLine + "Un saludo. Le escribimos para informarle de un nuevo curso de "
                    + codigo + " " + nombreCurso + " para el periodo "
                    + periodo + ", dado que usted mostró interés en este tipo de curso anteriormente."
                    + Environment.NewLine + Environment.NewLine + "El curso se describe como '"
                    + descripcion + "', y será impartido por "
                    + profesor + " en horario de "
                    + horario + ". Este curso tiene un precio de "
                    + precio + ". Si tiene alguna duda o inquietud, puede contactarse con la institución."
                    + Environment.NewLine + Environment.NewLine + "Estamos a su disposición.";
        }

        protected void enviarCorreo(object sender, EventArgs e)
        {
            
        }
    }
}