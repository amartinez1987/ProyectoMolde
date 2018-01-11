using ControlUsuarios.Entity.Controller;
using ControlUsuarios.Entity.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
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

        [WebMethod(EnableSession = true)]
        public static Result getListaMenuUsuario(int usuarioId)
        {
            Result r = ValidateSession.validarSession(usuarioId, HttpContext.Current.Session["usuarioId"]);
            if (r.error != "")
            {
                return r;
            }
            UsuariosController uc = new UsuariosController();
            return uc.getMenuUsuarioPorId(usuarioId, "Molde");
        }

        [WebMethod(EnableSession = true)]
        public static Result loginOut(int usuarioId)
        {
            HttpContext.Current.Session.RemoveAll();
            return new Result() { error = "", getCadena = "", id = 0, tipoAlerta = "" };
        }


        [WebMethod]
        public static Result getListaUsuarios(string valorBuscado, int registroPartida, int totalAExtraer, int usuarioId)
        {
            Result r = ValidateSession.validarSession(usuarioId, HttpContext.Current.Session["usuarioId"]);
            if (r.error != "")
            {
                return r;
            }
            int totalRegistros = 0;
            List<UsuariosViewModel> lst = new List<UsuariosViewModel>();
            try
            {
                UsuariosController uc = new UsuariosController();
                lst = uc.getListaUsuarios(valorBuscado);
                totalRegistros = lst.Count();
                totalAExtraer = (lst.Count() - registroPartida) < totalAExtraer ? (lst.Count() - registroPartida) : totalAExtraer;
            }
            catch (Exception e)
            {
                return new Result() { error = e.Message, id = 0, tipoAlerta = "warning" };
            }
            return new Result() { error = "", getCadena = new JavaScriptSerializer().Serialize(lst.GetRange(registroPartida, totalAExtraer)), totalRegistros = totalRegistros };
        }
    }
}