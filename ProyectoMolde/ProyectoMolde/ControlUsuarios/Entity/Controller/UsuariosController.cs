using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq;
using System.Text;
using ControlUsuarios.Entity.Model;
using System.Threading.Tasks;

namespace ControlUsuarios.Entity.Controller
{
    public class UsuariosController
    {
        public static List<UsuariosViewModel> getListaUsuarios()
        {
            using (MoldeEntities entity = new MoldeEntities())
            {
                var l = from usuarios in entity.Usuarios
                        select new UsuariosViewModel { id = usuarios.id, idPersona = usuarios.idPersona, usuarioId = usuarios.usuarioId, perfilId = usuarios.perfilId, nombreUsuario = usuarios.nombreUsuario, clave = usuarios.clave, estado = usuarios.estado };
                return l.ToList();
            }
        }

        public static UsuariosViewModel getUsuarios()
        {
            using (MoldeEntities entity = new MoldeEntities())
            {   
                    var l = from usuarios in entity.Usuarios
                            select new UsuariosViewModel { id = usuarios.id, idPersona = usuarios.idPersona, usuarioId = usuarios.usuarioId, perfilId = usuarios.perfilId, nombreUsuario = usuarios.nombreUsuario, clave = usuarios.clave, estado = usuarios.estado };
                    return l.SingleOrDefault();                
            }
        }

        public static Result guardarUsuarios(Usuarios registro)
        {
            Result result =  validarAtributos(registro);
            if (result.error != null && result.error != "")
            {
                return result;
            }

            using (MoldeEntities entity = new MoldeEntities())
            {
                if (existeRegistro(registro.id))
                {
                    int usuariosId = registro.id;
                    Usuarios registroEditar = entity.Usuarios.Where(x => x.id == usuariosId).SingleOrDefault();
                    entity.Entry(registroEditar).CurrentValues.SetValues(registro);
                    try
                    {
                        entity.SaveChanges();
                        return new Result { error = "" };
                    }
                    catch (Exception e)
                    {
                        return new Result { error = e.Message, id = 0 };
                    }
                }
                else
                {
                    entity.Usuarios.Add(registro);
                    try
                    {
                        entity.SaveChanges();
                        return new Result { error = result.error, id = registro.id };
                    }
                    catch (Exception e)
                    {
                        return new Result { error = e.Message, id = 0 };
                    }
                }
            }
        }

        private static Result validarAtributos(Usuarios registro)
        {
            if (registro.id == 0)
            {
                return new Result() { error = "Texto Validación" };
            }
            if (registro.idPersona == 0)
            {
                return new Result() { error = "Texto Validación" };
            }
            if (registro.usuarioId == 0)
            {
                return new Result() { error = "Texto Validación" };
            }
            if (registro.perfilId == 0)
            {
                return new Result() { error = "Texto Validación" };
            }
            if (registro.nombreUsuario == "")
            {
                return new Result() { error = "Texto Validación" };
            }
            if (registro.clave == "")
            {
                return new Result() { error = "Texto Validación" };
            }
            if (registro.estado == "")
            {
                return new Result() { error = "Texto Validación" };
            }
            return new Result() ;
        }

        public static bool existeRegistro(int usuariosId)
        {
            using (MoldeEntities entity = new MoldeEntities())
            {
                if (entity.Usuarios.Where(x => x.id == usuariosId).Count() > 0)
                    return true;
                return false;
            }
        }
    }
}
