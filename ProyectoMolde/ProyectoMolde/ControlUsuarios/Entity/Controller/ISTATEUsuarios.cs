using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ControlUsuarios.Entity.Model;
using System.Threading.Tasks;

namespace ControlUsuarios.Entity.Controller
{
    public interface ISTATEUsuarios
    {

         Result Nuevo(ref Usuarios registro);


         Result Editar(ref Usuarios registro);


         Result Inactivar(ref Usuarios registro);


         Result ValidarUsuario(ref Usuarios registro);

    }
}