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
    public partial class Consultas : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=SQL5045.site4now.net;Initial Catalog=DB_A4CEA1_graduadosmgp;User Id=DB_A4CEA1_graduadosmgp_admin;Password=graduados19;");

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)          //paginador de resultados
        {
            GridView1.PageIndex = e.NewPageIndex;
            filtroAproximadoBind();
            
        }
        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            filtroExactoBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void filtroAproximado(object sender, EventArgs e)
        {
            
            filtroAproximadoBind();
            
        }
        protected void filtroExacto(object sender, EventArgs e)
        {

            filtroExactoBind();

        }

        protected void filtroAproximadoBind()
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("fuzzySearch", conn);                   
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = nombre.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd); //ejecuta el sp con un adapter
            conn.Open();
            da.Fill(dt);                                                            //llena la data table
            GridView1.DataSource = dt;
            GridView1.DataBind();                                                   //hace binding a la tabla final
            
            conn.Close();
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "visible1();", true);
            
        }
        protected void filtroExactoBind()
        {
            string opcion = Rb2.SelectedValue;
            System.Diagnostics.Debug.WriteLine(opcion);
            if (opcion.Equals("Cedula"))
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("busquedaFiltradaCedula", conn);               
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@cedula", SqlDbType.Float).Value = ID.Text;
                cmd.Parameters.Add("@filtro", SqlDbType.Int).Value = radioButtonConversor();
                SqlDataAdapter da = new SqlDataAdapter(cmd);                                     //ejecuta el sp con un adapter
                conn.Open();
                da.Fill(dt);                                                                     //llena la data table
                GridView2.DataSource = dt;
                GridView2.DataBind();                                                            //hace el binding a la tabla final
                conn.Close();
            }
            if (opcion.Equals("Carnet"))
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("busquedaFiltradaCarnet", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@carnet", SqlDbType.Float).Value = ID.Text;
                cmd.Parameters.Add("@filtro", SqlDbType.Int).Value = radioButtonConversor();
                SqlDataAdapter da = new SqlDataAdapter(cmd);                                    //ejecuta el sp con un adapter
                conn.Open();
                da.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();
                conn.Close();
            }
        }
        private int radioButtonConversor()              //obtiene el resultado del radio button
        {
            string opt = Rb1.SelectedValue;
            if (opt.Equals("Informacion"))
            {
                return 1;
            }
            if (opt.Equals("Graduacion"))
            {
                return 2;
            }
            if (opt.Equals("Residencia"))
            {
                return 3;
            }
            if (opt.Equals("cursados"))
            {
                return 4;
            }
            if (opt.Equals("Contacto"))
            {
                return 5;
            }
            if (opt.Equals("interes"))
            {
                return 6;
            }
            else
            {
                return 1;
            }

        }

    }
}