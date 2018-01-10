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

        public MoldeEntities getEntity() 
        {
            return entity;
        }

        public  List<UsuariosViewModel> getListaUsuarios()
        {
          
                var l = from usuarios in entity.Usuarios
                        select new UsuariosViewModel { id = usuarios.id, idPersona = usuarios.idPersona, usuarioId = usuarios.usuarioId, perfilId = usuarios.perfilId, nombreUsuario = usuarios.nombreUsuario, clave = usuarios.clave, estado = usuarios.estado   };
                return l.ToList();
           
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
                            if (u.UsuariosOperacionesFormulario.Where(x => x.OperacionesFormulario.formularioId == f.id && x.OperacionesFormulario.Formularios.estados=="Activo" && x.OperacionesFormulario.Formularios.esVisible == true).Count() != 0)
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
        
    }
}
