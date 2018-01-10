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


        public Result NuevoConDatosPersona(ref Usuarios registro)
        {
            Result resul = validarAtributosUsuarioPersona(registro);

            if (resul.error != null && resul.error != "")
            {
                return resul;
            }

            if (existeRegistro(registro.nombreUsuario))
            {
                return new Result { error = "El usuario ya esta registrado.", id = registro.id, tipoAlerta = "warning" };
            }

            resul = ValidateSession.validarOperacionesForm("Usuarios","Nuevo",registro.usuarioId.Value );

            if (resul.error != null && resul.error != "")
            {
                return resul;
            }

            registro.clave = Encriptado.EncriptarCadena(registro.clave);
            registro.estado = "Activo";
            using (MoldeEntities entity = new MoldeEntities())
            {
                entity.Usuarios.Add(registro);
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

        private static Result validarAtributosUsuarioPersona(Usuarios registro)
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

            if (registro.clave == "")
            {
                return new Result() { error = "Digite una Clave valida.", tipoAlerta = "warning" };
            }

            if (registro.Personas.fechaNacimiento <= new DateTime(1800,01,01) )
            {
                return new Result { error = "La fecha de nacimiento es menor a 1800/01/01.", tipoAlerta = "warning" };
            }
            if (registro.Personas.fechaExpedicionCedula <= new DateTime(1800, 01, 01))
            {
                return new Result { error = "La fecha de expedición cedula es menor a 1800/01/01.", tipoAlerta = "warning" };
            }
           
            if (registro.Personas.documentoIdentidadId == 0)
            {
                return new Result { error = "Seleccione un tipo de identificación.", tipoAlerta = "warning" };
            }
            if (registro.Personas.municipioId == 0)
            {
                return new Result { error = "Seleccione un municipio.", tipoAlerta = "warning" };
            }
            if (registro.Personas.grupoSanguineoId == 0)
            {
                return new Result { error = "Seleccione un grupo sanguineo.", tipoAlerta = "warning" };
            }
            if (registro.Personas.sexoId == 0)
            {
                return new Result { error = "Seleccione el sexo.", tipoAlerta = "warning" };
            }
            if (registro.Personas.municipioExpedicionId == 0)
            {
                return new Result { error = "seleccione el municipio de expedición cedula.", tipoAlerta = "warning" };
            }
            
            if (registro.Personas.barrioId == 0)
            {
                return new Result { error = "Seleccione el Barrio.", tipoAlerta = "warning" };
            }
            if (registro.Personas.estatura == 0)
            {
                return new Result { error = "Ingrese la estatura.", tipoAlerta = "warning" };
            }
            if (registro.Personas.peso == 0)
            {
                return new Result { error = "Ingrese el peso.", tipoAlerta = "warning" };
            }
            if (registro.Personas.estadoCivilId == 0)
            {
                return new Result { error = "Seleccione estado civil.", tipoAlerta = "warning" };
            }
            if (registro.Personas.telefonoFijo.ToString().Length < 6)
            {
                return new Result { error = "Ingrese un telefono de 6 caracteres.", tipoAlerta = "warning" };
            }
            if (registro.Personas.telefonoCelular.ToString().Length < 10)
            {
                return new Result { error = "Ingrese numero celular mayor a 10 caracteres.", tipoAlerta = "warning" };
            }
            if (registro.Personas.numeroDocumento == "")
            {
                return new Result { error = "Ingrese numero documento.", tipoAlerta = "warning" };
            }
            if (registro.Personas.primerNombre == "")
            {
                return new Result { error = "Digite el primer nombre.", tipoAlerta = "warning" };
            }
            if (registro.Personas.segundoNombre == "")
            {
                return new Result { error = "Digite el segundo nombre.", tipoAlerta = "warning" };
            }
            if (registro.Personas.primerApellido == "")
            {
                return new Result { error = "Digite el primer apellido.", tipoAlerta = "warning" };
            }
            if (registro.Personas.segundoApellido == "")
            {
                return new Result { error = "Digite el segundo apellido.", tipoAlerta = "warning" };
            }
            if (registro.Personas.direcccion == "")
            {
                return new Result { error = "Digite la direccion.", tipoAlerta = "warning" };
            }
            if (registro.Personas.correo == "")
            {
                return new Result { error = "Digite el correo.", tipoAlerta = "warning" };
            }
            return new Result() { error = "" };

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
