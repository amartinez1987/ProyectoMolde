//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ControlUsuarios.Entity.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class UsuariosOperacionesFormulario
    {
        public int id { get; set; }
        public int usuarioId { get; set; }
        public int operacionFormularioId { get; set; }
        public int usuarioIdApl { get; set; }
    
        public virtual OperacionesFormulario OperacionesFormulario { get; set; }
        public virtual Usuarios Usuarios { get; set; }
    }
}
