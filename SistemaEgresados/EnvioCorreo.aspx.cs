using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
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

            //Agregar asunto del correo
            TextBoxAsuntoCorreo.Text = "Oferta de curso " + codigo + " " + nombreCurso; 

            //Agregar cuerpo del correo
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
            try
            {
                //Hace un loop para enviar el correo a todos los que tengan seleccionado el checkbox
                var rows = GridView1.Rows;
                int count = GridView1.Rows.Count;
                for (int i = 0; i < count; i++)
                {
                    bool isChecked = ((CheckBox)rows[i].FindControl("CheckBox1")).Checked;
                    if (isChecked)
                    {

                        MailMessage mail = new MailMessage();

                        mail.From = new MailAddress("plataformagraduadosMGP@gmail.com");
                        mail.Subject = TextBoxAsuntoCorreo.Text;

                        mail.IsBodyHtml = false;
                        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                        // smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
                        smtp.UseDefaultCredentials = false;
                        smtp.Credentials = new System.Net.NetworkCredential("plataformagraduadosMGP@gmail.com", "graduados19");
                        // smtp.Port = 587;
                        //Or your Smtp Email ID and Password

                        smtp.EnableSsl = true;

                        //Busco indice de columna correo
                        int indexColumnaCorreo = GetColumnIndexByName(GridView1, "Correo");

                        //Busco correo del destinatario
                        String destinatario = rows[i].Cells[indexColumnaCorreo].Text;

                        //Agregar destinatario actual
                        mail.To.Add(destinatario);

                        //Busco indice de columna nombre
                        int indexColumnaNombre = GetColumnIndexByName(GridView1, "Nombre");

                        //Separo las partes del cuerpo de correo, quitando el generico **NOMBRE**
                        String[] partesCuerpoCorreo = TextBoxCuerpoCorreo.Text.Split(new String[] { "**NOMBRE**" }, StringSplitOptions.None);

                        //Envio el correo ya con el nombre del usuario
                        mail.Body = partesCuerpoCorreo[0] + rows[i].Cells[indexColumnaNombre].Text + partesCuerpoCorreo[1];



                        smtp.Send(mail);
                    }
                }

                ScriptManager.RegisterClientScriptBlock(sender as Control, this.GetType(), "alert", "alert('" + "Correo enviado con éxito" + "')", true);
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(sender as Control, this.GetType(), "alert", "alert('" + "Hubo un problema enviando el correo" + "')", true);
            }
        }

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