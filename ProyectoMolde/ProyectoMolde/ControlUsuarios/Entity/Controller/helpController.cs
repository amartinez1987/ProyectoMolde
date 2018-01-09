using ControlUsuarios.Entity.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ControlUsuarios.Entity.Controller
{
    public class helpController
    {
        MoldeEntities entity = new MoldeEntities();
        public MoldeEntities getMolde()
        {
            return entity;
        }

        public object getLista(string tabla, string[] prefiltros, string textoBusqueda)
        {

            switch (tabla)
            {
                case "Departamentos":
                    try
                    {
                        var l = from departamentos in entity.Departamentos
                                where departamentos.nombre.Contains(textoBusqueda == "" ? departamentos.nombre : textoBusqueda) ||
                                      departamentos.codigoDane.Contains(textoBusqueda == "" ? departamentos.codigoDane : textoBusqueda)
                                select new DepartamentosViewModel { id = departamentos.id, usuarioId = departamentos.usuarioId, nombre = departamentos.nombre, codigoDane = departamentos.codigoDane };
                        return l.ToList();
                    }
                    catch (Exception e)
                    {
                        return new DepartamentosViewModel();
                    }
                    break;
                case "AplicacionesWeb":
                    try
                    {
                        var la = from aplicacionesweb in entity.AplicacionesWeb
                                 where aplicacionesweb.nombre.Contains(textoBusqueda == "" ? aplicacionesweb.nombre : textoBusqueda)
                                 select new AplicacionesWebViewModel { id = aplicacionesweb.id, nombre = aplicacionesweb.nombre, descripcion = aplicacionesweb.descripcion };
                        return la.ToList();
                    }
                    catch (Exception e)
                    {
                        return new AplicacionesWebViewModel();
                    }
                    break;
                case "Formularios":
                    try
                    {
                        var l = from formularios in entity.Formularios
                                select new FormulariosViewModel { id = formularios.id, menuId = formularios.menuId, nombreMenu = formularios.Menus.nombreMenu, usuarioId = formularios.usuarioId, indexVisibilidad = formularios.indexVisibilidad, esVisible = formularios.esVisible, nombreFormulario = formularios.nombreFormulario, urlFormulario = formularios.urlFormulario, nombreMostrar = formularios.nombreMostrar, estados = formularios.estados, iconOpcion = formularios.iconOpcion };
                        return l.ToList();
                    }
                    catch (Exception e)
                    {
                        return new FormulariosViewModel();
                    }
                    break;
                case "Menus":
                    try
                    {
                        var l = from menus in entity.Menus
                                select new MenusViewModel { id = menus.id, aplicacionWebId = menus.aplicacionWebId, nombreAplicacionWeb = menus.AplicacionesWeb.nombre, usuarioId = menus.usuarioId, indexVisibilidad = menus.indexVisibilidad, nombreMenu = menus.nombreMenu, estado = menus.estado, icon = menus.icon };
                        return l.ToList();
                    }
                    catch (Exception e)
                    {
                        return new MenusViewModel();
                    }
                    break;
            }
            return new List<string>();
        }

        public object getObject(string tabla, string valorBuscado)
        {
            int valBusId = 0;
            int.TryParse(valorBuscado, out valBusId);

            switch (tabla)
            {
                case "Departamentos":
                    try
                    {
                        var ld = from departamentos in entity.Departamentos
                                 where departamentos.id == valBusId || departamentos.nombre.Contains(valorBuscado) || departamentos.codigoDane.Contains(valorBuscado)
                                 select new DepartamentosViewModel { id = departamentos.id, usuarioId = departamentos.usuarioId, nombre = departamentos.nombre, codigoDane = departamentos.codigoDane };
                        return ld.FirstOrDefault();
                    }
                    catch (Exception e)
                    {
                        return new DepartamentosViewModel();
                    }
                    break;
                case "AplicacionesWeb":
                    try
                    {
                        var la = from aplicacionesweb in entity.AplicacionesWeb
                                 where aplicacionesweb.id == valBusId
                                 select new AplicacionesWebViewModel { id = aplicacionesweb.id, nombre = aplicacionesweb.nombre, descripcion = aplicacionesweb.descripcion };
                        return la.FirstOrDefault();
                    }
                    catch (Exception e)
                    {
                        return new AplicacionesWebViewModel();
                    }
                    break;
                case "Formularios":
                    try
                    {
                        var lf = from formularios in entity.Formularios
                                where formularios.id == valBusId
                                select new FormulariosViewModel { id = formularios.id, menuId = formularios.menuId, nombreMenu = formularios.Menus.nombreMenu, usuarioId = formularios.usuarioId, indexVisibilidad = formularios.indexVisibilidad, esVisible = formularios.esVisible, nombreFormulario = formularios.nombreFormulario, urlFormulario = formularios.urlFormulario, nombreMostrar = formularios.nombreMostrar, estados = formularios.estados, iconOpcion = formularios.iconOpcion };
                        return lf.SingleOrDefault();
                    }
                    catch (Exception e)
                    {
                        return new AplicacionesWebViewModel();
                    }
                    break;
                case "Menus":
                    try
                    {
                        var l = from menus in entity.Menus
                                where menus.id == valBusId
                                select new MenusViewModel { id = menus.id, aplicacionWebId = menus.aplicacionWebId, nombreAplicacionWeb = menus.AplicacionesWeb.nombre, usuarioId = menus.usuarioId, indexVisibilidad = menus.indexVisibilidad, nombreMenu = menus.nombreMenu, estado = menus.estado, icon = menus.icon };
                        return l.SingleOrDefault();
                    }
                    catch (Exception e)
                    {
                        return new AplicacionesWebViewModel();
                    }
                    break;
            }
            return new List<string>();
        }
    }
}