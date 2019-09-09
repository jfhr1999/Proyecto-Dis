using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SistemaEgresados

{
    public partial class Llamadas : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        public void saveCall(object sender, EventArgs e)
        {
            string motivo = DropDownList1.SelectedValue;
            string interes = radioInteres.SelectedValue;
            if (motivo.Equals("Ofrecer"))
            {
                SqlCommand cmd = new SqlCommand("agregarCursoOfertadoDeLlamada", conn);                     //usa el sp
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@cedula", SqlDbType.Float).Value = cedula.Text;
                cmd.Parameters.Add("@codigoCurso", SqlDbType.VarChar).Value = curso.Text;
                cmd.Parameters.Add("@fecha", SqlDbType.DateTime).Value = Calendar1.SelectedDate;
                cmd.Parameters.Add("@comentarios", SqlDbType.VarChar).Value = TextArea1.Text;
                cmd.Parameters.Add("@medio", SqlDbType.VarChar).Value = "LLAMADA";
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                SqlCommand cmd2 = new SqlCommand("registrarLlamadasp", conn);                     //usa el sp
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.Add("@cedula", SqlDbType.Float).Value = cedula.Text;
                cmd2.Parameters.Add("@motivo", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
                cmd2.Parameters.Add("@fecha", SqlDbType.DateTime).Value = Calendar1.SelectedDate;
                cmd2.Parameters.Add("@comentario", SqlDbType.VarChar).Value = TextArea1.Text;
                conn.Open();
                cmd2.ExecuteNonQuery();
                conn.Close();

                if (interes.Equals("si"))
                {
                    SqlCommand cmd3 = new SqlCommand("agregarCursoInteresDeLlamada", conn);                     //usa el sp
                    cmd3.CommandType = CommandType.StoredProcedure;
                    cmd3.Parameters.Add("@cedula", SqlDbType.Float).Value = cedula.Text;
                    cmd3.Parameters.Add("@codigoCurso", SqlDbType.VarChar).Value = curso.Text;

                    conn.Open();
                    cmd3.ExecuteNonQuery();
                    conn.Close();
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal1();", true);

            }
            else
            {
                SqlCommand cmd = new SqlCommand("registrarLlamadasp", conn);                     //usa el sp
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@cedula", SqlDbType.Float).Value = cedula.Text;
                cmd.Parameters.Add("@motivo", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
                cmd.Parameters.Add("@fecha", SqlDbType.DateTime).Value = Calendar1.SelectedDate;
                cmd.Parameters.Add("@comentario", SqlDbType.VarChar).Value = TextArea1.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal1();", true);
            }
            



        }

        protected void DropDownList_Changed(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Value == "Ofrecer")
            {
                pnlTextBox.Visible = true;
                radioInteres.Visible = true;
            }
            else
            {
                pnlTextBox.Visible = false;
            }
        }



    }
}