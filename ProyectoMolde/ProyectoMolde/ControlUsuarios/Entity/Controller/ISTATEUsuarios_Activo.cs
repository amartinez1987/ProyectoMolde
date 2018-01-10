using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ControlUsuarios.Entity.Model;
using System.Threading.Tasks;
using ServiciosMetodos;
using System.Text.RegularExpressions;

namespace ControlUsuarios.Entity.Controller
{
    public class ISTATEUsuarios_Activo : ISTATEUsuarios
    {
        private const string nombreEstado = "Activo";
        public Result NuevoSinDatosPersona(ref Usuarios registro)
        {
            Result resul = new Result();
            resul.error = "No se puede realizar esta operación en el estado actual del registro";
            resul.tipoAlerta = "Info";
            return resul;
        }

        public Result NuevoConDatosPersona(ref Usuarios registro)
        {
            Result resul = new Result();
            resul.error = "No se puede realizar esta operación en el estado actual del registro";
            resul.tipoAlerta = "Info";
            return resul;
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
            Result resul = validarAtributos(registro);
            if (resul.error != null && resul.error != "")
            {
                return resul;
            }

            using (MoldeEntities entity = new MoldeEntities())
            {
                int usuariosId = registro.id;                
                Usuarios registroEditar = entity.Usuarios.Where(x => x.id == usuariosId).SingleOrDefault();
                string clave = Encriptado.EncriptarCadena(registro.clave) ;
                if ( clave != registroEditar.clave)
                {
                    return new Result { error = "Clave Incorrecta", id = 0, tipoAlerta = "warning" };
                }

                return new Result { error = "", id = registro.id, tipoAlerta = "success" };

            }
        }

        public Result RegistrarUsuarioCorreoClave(ref Usuarios registro)
        {
            Result resul = new Result();
            resul.error = "No se puede realizar esta operación en el estado actual del registro";
            resul.tipoAlerta = "Info";
            return resul;
        }

        public Result Activar(ref Usuarios registro)
        {
            Result resul = new Result();
            resul.error = "No se puede realizar esta operación en el estado actual del registro";
            resul.tipoAlerta = "Info";
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
    }
}
