using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace SistemaEgresados
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            

        }

        protected void login_Click(object sender, EventArgs e)
        {
            
            
            
            SqlConnection conn = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");
            //Here we declare the parameter which we have to use in our application  
            SqlCommand cmd = new SqlCommand("iniciarSesion", conn);                     //usa el sp
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@correo",SqlDbType.VarChar).Value= LoginBox.Text;       //Agrega parametros
            cmd.Parameters.Add("@passw", SqlDbType.VarChar).Value = passBox.Text;
            conn.Open();
            var rol="";
            SqlDataReader rdr = cmd.ExecuteReader();                //ejecuta sp
            while (rdr.Read())
            {
                rol = rdr.GetValue(0).ToString();               //usar solo si se ocupa tomar un output
            }

            rdr.Close();
            conn.Close();

            if (rol.Equals("admin"))                //Redirect de acuerdo al resultado
            {
                Response.Redirect("MenuAdmin.aspx");
            }
            if (rol.Equals("consultor"))
            {
                Response.Redirect("MenuConsultor.aspx");
            }
            if (rol.Equals("graduado"))
            {
                Response.Redirect("MenuGraduado.aspx");
            }

        }
        public void sendEmail(string msg, string receiver,string passw)
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mail.From = new MailAddress("plataformagraduadosMGP@gmail.com");
            mail.To.Add("receiver");
            mail.Subject = "Cambio de contraseña.";
            mail.Body = "Hola,\n\nTu contraseña temporal es: "+passw+"\n\nSi no has solicitado un cambio de contraseña, dirigete a tu cuenta y modificala de nuevo.\n\nSaludos,\nEquipo de Soporte.";

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("plataformagraduadosMGP@gmail.com", "graduados19");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
            MessageBox.Show("mail Send");
        }
        
        protected void olvidar_onClick(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        }

    }

}