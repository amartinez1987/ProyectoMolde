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

            registro.usuarioId = 1; //usuario por Defecto cuando se crea por la aplicacion.
            registro.perfilId = 1;//Perfil por defecto cuando se crea por la aplicacion.
            registro.clave =  Encriptado.EncriptarCadena(registro.clave);
            
            

            using (MoldeEntities entity = new MoldeEntities())
            {
                entity.Usuarios.Add(registro);
                try
                {
                    entity.SaveChanges();
                    new Mail().EnviarEmail(registro.nombreUsuario, "Activar Cuenta", "");
                    return new Result { error = resul.error, id = registro.id };
                }
                catch (Exception e)
                {
                    return new Result { error = e.Message, id = 0 };
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

            if (!IsValidEmail(registro.nombreUsuario ))
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
            return Regex.IsMatch(strIn,@"^(?("")("".+?""@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-zA-Z])@))" + @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$");
        }
    }
}
