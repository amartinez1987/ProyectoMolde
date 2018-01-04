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
                    var ld = from departamentos in entity.Departamentos
                             select new DepartamentosViewModel { id = departamentos.id, usuarioId = departamentos.usuarioId, nombre = departamentos.nombre };
                    return ld.ToList();
                    break;
                case "AplicacionesWeb":
                    var la = from aplicacionesweb in entity.AplicacionesWeb
                             where aplicacionesweb.nombre.Contains(textoBusqueda == "" ? aplicacionesweb.nombre : textoBusqueda)
                             select new AplicacionesWebViewModel { id = aplicacionesweb.id, nombre = aplicacionesweb.nombre, descripcion = aplicacionesweb.descripcion };
                    return la.ToList();
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
                                 where departamentos.id == valBusId
                                 select new DepartamentosViewModel { id = departamentos.id, usuarioId = departamentos.usuarioId, nombre = departamentos.nombre };
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
            }
            return new List<string>();
        }
    }
}