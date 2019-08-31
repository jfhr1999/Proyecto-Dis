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
    public partial class Administrar_Usuarios : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_click(object sender, EventArgs e)
        {
           
            if (password.Text.Length >= 8)
            {
                    
                if (Registrarse.validarCorreo(mail.Text))
                {
                    if (usuario.SelectedValue == "1")
                    {

                        SqlCommand cmd = new SqlCommand("agregarAdminConsultor", conn);                     //usa el sp
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@correo", SqlDbType.VarChar).Value = mail.Text;
                        cmd.Parameters.Add("@passw", SqlDbType.VarChar).Value = password.Text;
                        cmd.Parameters.Add("@estadoSesion", SqlDbType.Bit).Value = 0;
                        cmd.Parameters.Add("@rol", SqlDbType.VarChar).Value = "administrador";
                        var msg = "";
                        SqlDataReader rdr = cmd.ExecuteReader();                //ejecuta sp
                        while (rdr.Read())
                        {
                            msg = rdr.GetValue(0).ToString();               //usar solo si se ocupa tomar un output
                        }

                        rdr.Close();
                        conn.Close();
                        if (msg.Equals("Valido"))
                        {
                            MessageBoxShow(1);
                        }
                        else
                        {
                            MessageBoxShow(3);

                        }


                    }
                    if (usuario.SelectedValue == "2")
                    {
                        SqlCommand cmd = new SqlCommand("agregarAdminConsultor", conn);                     //usa el sp
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@correo", SqlDbType.VarChar).Value = mail.Text;
                        cmd.Parameters.Add("@passw", SqlDbType.VarChar).Value = password.Text;
                        cmd.Parameters.Add("@estadoSesion", SqlDbType.Bit).Value = 0;
                        cmd.Parameters.Add("@rol", SqlDbType.VarChar).Value = "consultor";
                        var msg = "";
                        SqlDataReader rdr = cmd.ExecuteReader();                //ejecuta sp
                        while (rdr.Read())
                        {
                            msg = rdr.GetValue(0).ToString();               //usar solo si se ocupa tomar un output
                        }

                        rdr.Close();
                        conn.Close();
                        if (msg.Equals("Valido"))
                        {
                            MessageBoxShow(1);
                        }
                        else
                        {
                            MessageBoxShow(3);

                        }
                    }
                            
                }
                else
                {
                    MessageBoxShow(2);
                }
                    
                    
            }
            else
            {
                MessageBoxShow(4);
            }
            
           

        }
        private void MessageBoxShow(int num)
        {
            if (num == 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalA();", true);

            }
            if (num == 2)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalB();", true);

            }
            if (num == 3)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalC();", true);

            }
            if (num == 4)
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalD();", true);
            }
            

        }
    }

}