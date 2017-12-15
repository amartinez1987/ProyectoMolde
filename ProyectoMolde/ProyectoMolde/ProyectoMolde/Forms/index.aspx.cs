using ControlUsuarios.Entity.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoMolde.Forms
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string usuarioId = Request.QueryString["usuarioId"];
            HttpCookie k = Request.Cookies["usuarioId"];
            if (usuarioId != null)
            {
                UsuariosController uc = new UsuariosController();
                Label lblListaMenu = (Label)Master.FindControl("lblListaMenu");
                lblListaMenu.Text = uc.getMenuUsuarioPorId(int.Parse(usuarioId), "Molde").getCadena;
            }

        }
    }
}