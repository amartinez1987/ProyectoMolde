using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ControlUsuarios.Entity.Model;
using System.Threading.Tasks;
using System.IO;

namespace ControlUsuarios.Entity.Controller
{
    public class UsuariosController
    {
        MoldeEntities entity = new MoldeEntities();

        public static List<UsuariosViewModel> getListaUsuarios()
        {
            using (MoldeEntities entity = new MoldeEntities())
            {
                var l = from usuarios in entity.Usuarios
                        select new UsuariosViewModel { id = usuarios.id, idPersona = usuarios.idPersona, usuarioId = usuarios.usuarioId, perfilId = usuarios.perfilId, nombreUsuario = usuarios.nombreUsuario, clave = usuarios.clave, estado = usuarios.estado };
                return l.ToList();
            }
        }

        public static UsuariosViewModel getUsuarioViewModelPorNombre(string nombreUsuario)
        {
            using (MoldeEntities entity = new MoldeEntities())
            {
                var l = from usuarios in entity.Usuarios
                        where usuarios.nombreUsuario.ToLower() == nombreUsuario.ToLower()
                        select new UsuariosViewModel { id = usuarios.id, idPersona = usuarios.idPersona, usuarioId = usuarios.usuarioId, perfilId = usuarios.perfilId, nombreUsuario = usuarios.nombreUsuario, clave = usuarios.clave, estado = usuarios.estado };
                return l.SingleOrDefault();
            }
        }

        public static Usuarios getUsuarioPorNombre(string nombreUsuario)
        {
            using (MoldeEntities entity = new MoldeEntities())
            {
                var l = from usuarios in entity.Usuarios
                        where usuarios.nombreUsuario.ToLower() == nombreUsuario.ToLower()
                        select usuarios;
                return l.SingleOrDefault();
            }
        }

        public Result getMenuUsuarioPorId(int usuarioId, string aplicacion)
        {
            string listaMenu = "";
            try
            {
                Usuarios u = entity.Usuarios.FirstOrDefault(x => x.id == usuarioId);
                if (u.UsuariosOperacionesFormulario.Count != 0)
                {
                    List<Menus> lM = (from luofe in u.UsuariosOperacionesFormulario
                                      where luofe.OperacionesFormulario.Formularios.Menus.AplicacionesWeb.nombre == aplicacion &&
                                            luofe.OperacionesFormulario.Formularios.esVisible == true &&
                                            luofe.OperacionesFormulario.Formularios.Menus.estado == "Activo"
                                            
                                      orderby luofe.OperacionesFormulario.Formularios.Menus.indexVisibilidad
                                      group luofe by new { luofe.OperacionesFormulario.Formularios.Menus } into gF
                                      select gF.Key.Menus).ToList();

                    
                    foreach (Menus m in lM)
                    {                        
                        listaMenu += "<li>";
                        listaMenu += string.Format("<a href=\"#\"><i class=\"{0}\"></i>{1}<span class=\"glyphicon arrow\"></span></a>", m.icon, m.nombreMenu);
                        listaMenu += "<ul class=\"nav nav-second-level\">";
                        foreach (Formularios f in m.Formularios)
                        {
                            if (u.UsuariosOperacionesFormulario.Where(x => x.OperacionesFormulario.formularioId == f.id && x.OperacionesFormulario.Formularios.estados=="Activo").Count() != 0)
                            {
                                listaMenu += "<li>";
                                listaMenu += string.Format("<a href=\"{0}\">{1}</a>", f.urlFormulario, f.nombreMostrar);
                                listaMenu += "</li>";
                            }
                        }
                        listaMenu += "</ul>";
                        listaMenu += "</li>";
                    }
                }
            }
            catch (Exception ex)
            {

                return new Result() { error = ex.Message, tipoAlerta = "danger" };
            }

            return new Result() { id = usuarioId, getCadena = listaMenu, error = "" };
        }


        public static Result guardarUsuarios(Usuarios registro)
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
            return new Result();
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
