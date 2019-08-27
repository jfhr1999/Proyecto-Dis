using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace SistemaEgresados
{
    public partial class Registrarse : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Register_click(object sender, EventArgs e)
        {
            if (IsNumeric(ID.Text))
            {
                if (password.Text.Length >= 8)
                {
                    if (validarRegistroUnico(ID.Text))
                    {
                        if (validarCorreo(mail.Text))
                        {
                            if (validarCedula(ID.Text))
                            {
                                SqlCommand cmd = new SqlCommand("registrarUsuario", conn);                     //usa el sp
                                cmd.CommandType = CommandType.StoredProcedure;
                                cmd.Parameters.Add("@correo", SqlDbType.VarChar).Value = mail.Text;
                                cmd.Parameters.Add("@passw", SqlDbType.VarChar).Value = password.Text;
                                cmd.Parameters.Add("@estadoSesion", SqlDbType.Bit).Value = 0;
                                cmd.Parameters.Add("@identificacion", SqlDbType.Float).Value = ID.Text;
                                cmd.Parameters.Add("@rol", SqlDbType.VarChar).Value = "graduado";

                                conn.Open();
                                cmd.ExecuteNonQuery();
                                conn.Close();
                                MessageBoxShow(1);
                                
                                
                            }
                            else
                            {
                                MessageBoxShow(3);
                            }
                        }
                        else
                        {
                            MessageBoxShow(2);
                        }
                    }
                    else
                    {
                        MessageBoxShow(6);
                    }
                }
                else
                {
                    MessageBoxShow(4);
                }
            }
            else
            {
                MessageBoxShow(5);
            }
            
        }

        public bool validarCorreo(string email)
        {
            String expresion;
            expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(email, expresion))
            {
                if (Regex.Replace(email, expresion, String.Empty).Length == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
        public bool validarCedula(string s)
        {
            //Here we declare the parameter which we have to use in our application  
            SqlCommand cmd = new SqlCommand("validarCedula", conn);                     //usa el sp
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cedula", SqlDbType.Float).Value = ID.Text;
            conn.Open();
            var rol = "";
            SqlDataReader rdr = cmd.ExecuteReader();          //solo para agarrar un output del sp
            while (rdr.Read())
            {
                rol = rdr.GetValue(0).ToString();              
            }

            rdr.Close();
            conn.Close();
            if (rol.Equals("Valido"))                
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool validarRegistroUnico(string s)
        {
            //Here we declare the parameter which we have to use in our application  
            SqlCommand cmd = new SqlCommand("validarRegistroUnico", conn);                     //usa el sp
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cedula", SqlDbType.Float).Value = ID.Text;
            conn.Open();
            var rol = "";
            SqlDataReader rdr = cmd.ExecuteReader();          //solo para agarrar un output del sp
            while (rdr.Read())
            {
                rol = rdr.GetValue(0).ToString();
            }

            rdr.Close();
            conn.Close();
            if (rol.Equals("Valido"))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static Boolean IsNumeric(string valor)
        {
            int result;
            return int.TryParse(valor, out result);
        }

        private void MessageBoxShow(int num)
        {
            if(num == 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal1();", true);

            }
            if (num == 2)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal2();", true);

            }
            if (num == 3)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal3();", true);

            }
            if (num == 4)
            {
                
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal4();", true);
            }
            if (num == 5)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal5();", true);

            }
            if (num == 6)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal6();", true);

            }

        }
        protected void DefaultRedirect(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }


    }
}