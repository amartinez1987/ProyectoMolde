﻿using ControlUsuarios.Entity.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Services;
using ControlUsuarios.Entity.Controller;


namespace ProyectoMolde.WebMethods
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static Result registrarUsuarioParams(string nombreUsuario, string clave, string confirmarClave)
        {
            if (clave != confirmarClave) 
            {
                return new Result() { id = 0, error = "Las claves no coinciden.", tipoAlerta = "warning" }; 
            }
            Usuarios u = new Usuarios();
            u.nombreUsuario = nombreUsuario.Trim();
            u.clave = clave;
            Result r = IFACTORY.createUsuarios("Nuevo").NuevoSinDatosPersona(ref u);
            return r;
        }

        [WebMethod]
        public static Result AutenticarUsuario(string nombreUsuario, string clave)
        {
            Usuarios u = UsuariosController.getUsuarioPorNombre(nombreUsuario);
            u.clave = clave;
            if (u == null)
            {
                return new Result() { error = "Nombre de usuario Invalido.", tipoAlerta = "warning" };
            }

            if (u.estado == "Nuevo")
            {
                if (u.clave != clave)
                {
                    return new Result() { error = "La clave no coincide con la del correo.", tipoAlerta = "warning" };
                }

                return IFACTORY.createUsuarios(u.estado).Activar(ref u);
            }
            else 
            {
                return IFACTORY.createUsuarios(u.estado).ValidarUsuario(ref u);
            }
            
        }
    }
}