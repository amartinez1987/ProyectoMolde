using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ControlUsuarios.Entity.Model;
using System.Text.RegularExpressions;
using ServiciosMetodos;

namespace ControlUsuarios.Entity.Controller
{
    public class ISTATEUsuarios_Nuevo : ISTATEUsuarios
    {

        private const string nombreEstado = "Nuevo";

        public Result NuevoSinDatosPersona(ref Usuarios registro)
        {
            Result resul = validarAtributos(registro);
            if (resul.error != null && resul.error != "")
            {
                return resul;
            }

            if (existeRegistro(registro.nombreUsuario))
            {
                return new Result { error = "El correo ya esta registrado.", id = registro.id, tipoAlerta = "warning" };
            }

            registro.usuarioId = 1; //usuario por Defecto cuando se crea por la aplicacion.
            registro.perfilId = 1;//Perfil por defecto cuando se crea por la aplicacion.
            registro.clave = Encriptado.EncriptarCadena(registro.clave);
            registro.estado = "Nuevo";
            using (MoldeEntities entity = new MoldeEntities())
            {
                entity.Usuarios.Add(registro);
                try
                {
                    entity.SaveChanges();
                    string plantilla = PlantillasMolde.getBienvenidosMolde(registro.nombreUsuario, registro.clave);
                    new Mail().EnviarEmail(registro.nombreUsuario, "Activar Cuenta", plantilla);
                    return new Result { error = "", id = registro.id, tipoAlerta = "success" };
                }
                catch (Exception e)
                {
                    return new Result { error = e.Message, id = 0, tipoAlerta = "warning" };
                }
            }
        }

        public Result Editar(ref Usuarios registro)
        {
            Result resul = new Result();
            resul.error = "No se puede realizar esta operación en el estado actual del registro";
            resul.tipoAlerta = "Info";
            return resul;
        }

        public Result Inactivar(ref Usuarios registro)
        {
            Result resul = new Result();
            resul.error = "No se puede realizar esta operación en el estado actual del registro";
            resul.tipoAlerta = "Info";
            return resul;
        }

        public Result ValidarUsuario(ref Usuarios registro)
        {
            Result resul = new Result();
            resul.error = "No se puede realizar esta operación en el estado actual del registro";
            resul.tipoAlerta = "Info";
            return resul;
        }

        public Result RegistrarUsuarioCorreoClave(ref Usuarios registro)
        {
            Result resul = new Result();
            resul.error = "No se puede realizar esta operación en el estado actual del registro";
            return resul;
        }

        private static Result validarAtributos(Usuarios registro)
        {
            if (registro.nombreUsuario == "")
            {
                return new Result() { error = "Digite un correo valido.", tipoAlerta = "warning" };
            }

            if (!IsValidEmail(registro.nombreUsuario))
            {
                return new Result() { error = "Digite un correo valido.", tipoAlerta = "warning" };
            }

            if (registro.clave == "")
            {
                return new Result() { error = "Digite una Clave valida.", tipoAlerta = "warning" };
            }

            return new Result();
        }

        public static bool IsValidEmail(string strIn)
        {
            // Return true if strIn is in valid e-mail format.
            return Regex.IsMatch(strIn, @"^(?("")("".+?""@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-zA-Z])@))" + @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$");
        }

        public static bool existeRegistro(string nombreUsuario)
        {
            using (MoldeEntities entity = new MoldeEntities())
            {
                if (entity.Usuarios.Where(x => x.nombreUsuario == nombreUsuario).Count() > 0)
                    return true;
                return false;
            }
        }

        public Result Activar(ref Usuarios registro)
        {
            Result resul = validarAtributos(registro);
            if (resul.error != null && resul.error != "")
            {
                return resul;
            }

            using (MoldeEntities entity = new MoldeEntities())
            {
                int usuariosId = registro.id;
                registro.estado = "Activo";
                Usuarios registroEditar = entity.Usuarios.Where(x => x.id == usuariosId).SingleOrDefault();
                
                entity.Entry(registroEditar).CurrentValues.SetValues(registro);
                try
                {
                    entity.SaveChanges();
                    return new Result { error = "", id = registro.id, tipoAlerta = "success" };
                }
                catch (Exception e)
                {
                    return new Result { error = e.Message, id = 0, tipoAlerta = "warning" };
                }
            }
        }
    }
}
