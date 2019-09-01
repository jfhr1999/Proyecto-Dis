using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
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
    public partial class _Default : Page
    {
        SqlConnection conn = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");

        protected void Page_Load(object sender, EventArgs e)
        {            

        }

        protected void login_Click(object sender, EventArgs e)
        {
            
            
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

            guardarUsuario(LoginBox.Text, passBox.Text); //almacena en variable global la identificacion

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

        public void guardarUsuario(string correo, string password)
        {
            SqlCommand cmd = new SqlCommand("guardarIdentificacion", conn);                     //usa el sp
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@correo", SqlDbType.VarChar).Value = correo;       //Agrega parametros
            cmd.Parameters.Add("@passw", SqlDbType.VarChar).Value = password;
            conn.Open();
            var ident = "";
            SqlDataReader rdr = cmd.ExecuteReader();                //ejecuta sp
            while (rdr.Read())
            {
                ident = rdr.GetValue(0).ToString();               //usar solo si se ocupa tomar un output
            }

            Session["UserActual"] = ident;               //Variable global
            System.Diagnostics.Debug.WriteLine("Usuario Actual: ",Session["UserActual"].ToString());


            rdr.Close();
            conn.Close();
        }
        

    }

}