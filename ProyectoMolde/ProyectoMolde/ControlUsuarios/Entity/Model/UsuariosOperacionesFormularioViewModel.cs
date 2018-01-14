using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ControlUsuarios.Entity.Model
{
    public class UsuariosOperacionesFormularioViewModel
    {
        public int id { get; set; }
        public int usuarioId { get; set; }
        public int operacionFormularioId { get; set; }
        public int usuarioIdApl { get; set; }
    }
}
