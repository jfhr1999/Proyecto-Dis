using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace SistemaEgresados
{
    public partial class RecuperarCuenta : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void confirmarOlvidar_onClick(object sender, EventArgs e) //Boton de enviar instrucciones de reestablecimiento al correo
        {
            //Here we declare the parameter which we have to use in our application  
            SqlCommand cmd = new SqlCommand("validarUsuario", conn);                     //usa el sp
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@correo", SqlDbType.VarChar).Value = mail.Text;
            conn.Open();
            var answ = "";
            SqlDataReader rdr = cmd.ExecuteReader();          //solo para agarrar un output del sp
            while (rdr.Read())
            {
                answ = rdr.GetValue(0).ToString();
            }

            rdr.Close();
            conn.Close();
            if (answ.Equals("Valido"))
            {
                string newPassw = RandomString(8, true);
                SqlCommand cmd2 = new SqlCommand("cambiarPassword", conn);                     //usa el sp
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.Add("@correo", SqlDbType.VarChar).Value = mail.Text;
                cmd2.Parameters.Add("@password", SqlDbType.VarChar).Value = newPassw;
                conn.Open();
                cmd2.ExecuteNonQuery();
                conn.Close();
                sendEmail(mail.Text, newPassw);
                Response.Redirect("Default.aspx");

            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
        public string RandomString(int size, bool lowerCase)
        {
            StringBuilder builder = new StringBuilder();
            Random random = new Random();
            char ch;
            for (int i = 0; i < size; i++)
            {
                ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
                builder.Append(ch);
            }
            if (lowerCase)
                return builder.ToString().ToLower();
            return builder.ToString();
        }
        public void sendEmail(string receiver, string passw)
        {
           

            MailMessage mail = new MailMessage();
            mail.To.Add(receiver);
        
            mail.From = new MailAddress("plataformagraduadosMGP@gmail.com");
            mail.Subject = "Cambio de contraseña.";
            
            string Body = "Hola,"+Environment.NewLine+Environment.NewLine+"Tu contraseña temporal es: " + passw +Environment.NewLine + Environment.NewLine + "Si no has solicitado un cambio de contraseña, dirigete a tu cuenta y modificala de nuevo." + System.Environment.NewLine + System.Environment.NewLine + "Saludos," + Environment.NewLine + "Equipo de Soporte."; ;
            mail.Body = Body;
            mail.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            // smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("plataformagraduadosMGP@gmail.com", "graduados19");
            // smtp.Port = 587;
            //Or your Smtp Email ID and Password
            
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
    }
}