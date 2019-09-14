using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaEgresados
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                if(!(Convert.ToString(Session["tipoUsuarioActual"]) =="administrador" || Convert.ToString(Session["tipoUsuarioActual"]) == "consultor" || Convert.ToString(Session["tipoUsuarioActual"]) == "graduado"))
                {
                    btnSalir.Enabled = false;
                    btnSalir.Visible = false;
                }
                else
                {
                    btnRegistrarse.Enabled = false;
                    btnRegistrarse.Visible = false;
                }
            }
        }

        protected void irAInicio(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine(Session["tipoUsuarioActual"]);
            switch (Session["tipoUsuarioActual"])
            {
                case "administrador":
                    Response.Redirect("MenuAdmin.aspx");
                    break;
                case "consultor":
                    Response.Redirect("MenuConsultor.aspx");
                    break;
                case "graduado":
                    Response.Redirect("MenuGraduado.aspx");
                    break;
                default:
                    Response.Redirect("Default.aspx");
                    break;

            }

        }

        protected void salir(object sender, EventArgs e)
        {
            Session["tipoUsuarioActual"] = "none";
            Response.Redirect("Default.aspx");

        }

        protected void registrarse(object sender, EventArgs e)
        {
            Response.Redirect("Registrarse.aspx");
        }
    }
}