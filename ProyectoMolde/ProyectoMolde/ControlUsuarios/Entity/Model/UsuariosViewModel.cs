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
    }
}
