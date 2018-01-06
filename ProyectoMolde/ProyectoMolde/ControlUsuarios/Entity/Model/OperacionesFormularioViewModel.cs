using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ControlUsuarios.Entity.Model
{
    public class OperacionesFormularioViewModel
    {
        

        public int id { get; set; }
        public int? formularioId { get; set; }
        public int? operacionId { get; set; }
        public string nombreOperacion { get; set; }
        public int usuarioId { get; set; }
        public string descripcion { get; set; }
    }
}
