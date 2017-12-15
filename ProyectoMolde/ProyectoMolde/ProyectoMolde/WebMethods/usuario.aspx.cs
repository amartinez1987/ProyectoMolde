using ControlUsuarios.Entity.Controller;
using ControlUsuarios.Entity.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoMolde.WebMethods
{
    public partial class usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        [WebMethod]
        public static Result getListaMenuUsuario(int usuarioId)
        {  
            UsuariosController uc = new UsuariosController();
            return uc.getMenuUsuarioPorId(usuarioId, "Molde");
        }

    }
}