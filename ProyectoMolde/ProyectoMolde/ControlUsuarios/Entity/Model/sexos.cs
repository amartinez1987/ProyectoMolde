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
    
    public partial class Sexos
    {
        public Sexos()
        {
            this.Personas = new HashSet<Personas>();
        }
    
        public int id { get; set; }
        public string sigla { get; set; }
        public string descripcion { get; set; }
        public int usuarioId { get; set; }
    
        public virtual ICollection<Personas> Personas { get; set; }
    }
}
