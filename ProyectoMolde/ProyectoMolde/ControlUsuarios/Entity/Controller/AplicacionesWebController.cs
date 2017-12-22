using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq;
using System.Text;
using ControlUsuarios.Entity.Model;
using System.Threading.Tasks;

namespace ControlUsuarios.Entity.Controller
{
    public class AplicacionesWebController
    {
        public static List<AplicacionesWebViewModel> getListaAplicacionesWeb()
        {
            using (MoldeEntities entity = new MoldeEntities())
            {
                var l = from aplicacionesweb in entity.AplicacionesWeb
                        select new AplicacionesWebViewModel { id = aplicacionesweb.id, nombre = aplicacionesweb.nombre, descripcion = aplicacionesweb.descripcion };
                return l.ToList();
            }
        }

        public static AplicacionesWebViewModel getAplicacionesWeb()
        {
            using (MoldeEntities entity = new MoldeEntities())
            {
                var l = from aplicacionesweb in entity.AplicacionesWeb
                        select new AplicacionesWebViewModel { id = aplicacionesweb.id, nombre = aplicacionesweb.nombre, descripcion = aplicacionesweb.descripcion };
                return l.SingleOrDefault();
            }
        }

        public static Result guardarAplicacionesWeb(AplicacionesWeb registro)
        {
            Result result = validarAtributos(registro);
            if (result.error != null && result.error != "")
            {
                return result;
            }

            using (MoldeEntities entity = new MoldeEntities())
            {
                if (existeRegistro(registro.id))
                {
                    int aplicacioneswebId = registro.id;
                    AplicacionesWeb registroEditar = entity.AplicacionesWeb.Where(x => x.id == aplicacioneswebId).SingleOrDefault();
                    entity.Entry(registroEditar).CurrentValues.SetValues(registro);
                    try
                    {
                        entity.SaveChanges();
                        return new Result { error = ""};
                    }
                    catch (Exception e)
                    {
                        return new Result { error = e.Message, id = 0 , tipoAlerta="warning"};
                    }
                }
                else
                {
                    entity.AplicacionesWeb.Add(registro);
                    try
                    {
                        entity.SaveChanges();
                        return new Result { error = result.error, id = registro.id };
                    }
                    catch (Exception e)
                    {
                        return new Result { error = e.Message, id = 0 , tipoAlerta="warning"};
                    }
                }
            }
        }

        private static Result validarAtributos(AplicacionesWeb registro)
        {            
            if (registro.nombre == "")
            {
                return new Result { error = "el atributo nombre no debe ir vacío.", tipoAlerta = "warning" };
            }
            if (registro.descripcion == "")
            {
                return new Result { error = "el atributo descripción no debe ir vacío.", tipoAlerta = "warning" };
            }

            return new Result() { error = "" };
        }
        public static bool existeRegistro(int aplicacioneswebId)
        {
            using (MoldeEntities entity = new MoldeEntities())
            {
                if (entity.AplicacionesWeb.Where(x => x.id == aplicacioneswebId).Count() > 0)
                    return true;
                return false;
            }
        }
    }
}