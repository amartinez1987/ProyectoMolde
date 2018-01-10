using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ControlUsuarios.Entity.Model
{
    public class UsuariosViewModel
    {
        public int id { get; set; }
        public int? idPersona { get; set; }
        public int? usuarioId { get; set; }
        public int perfilId { get; set; }
        public string nombreUsuario { get; set; }
        public string clave { get; set; }
        public string confirmarClave { get; set; }
        public string estado { get; set; }
        //Datos Persona
        public int documentoIdentidadId { get; set; }
        public string siglaDocumentoIdentidad { get; set; }
        public int municipioId { get; set; }
        public int grupoSanguineoId { get; set; }
        public int sexoId { get; set; }
        public int municipioExpedicionId { get; set; }        
        public int? barrioId { get; set; }
        public int estatura { get; set; }
        public int peso { get; set; }
        public int estadoCivilId { get; set; }
        public int telefonoFijo { get; set; }
        public int telefonoCelular { get; set; }
        public string numeroDocumento { get; set; }
        public string primerNombre { get; set; }
        public string segundoNombre { get; set; }
        public string primerApellido { get; set; }
        public string segundoApellido { get; set; }
        public string direcccion { get; set; }
        public string correo { get; set; }
    }
}
