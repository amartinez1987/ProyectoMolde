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
    public partial class aplicacionesWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        [WebMethod]
        public static Result getListaAplicacionesWeb(int registroInicial, int registroFinal)
        {
            string ListAplicacionesWeb = "";
            try
            {
                List<AplicacionesWebViewModel> lst = AplicacionesWebController.getListaAplicacionesWeb();
                ListAplicacionesWeb = new JavaScriptSerializer().Serialize(lst.GetRange(registroFinal, registroFinal));
            }
            catch (Exception e)
            {
                return new Result() { error = e.Message, id = 0, tipoAlerta = "warning" };
            }

            return new Result() { error = "", getCadena = ListAplicacionesWeb };
        }
    }
}