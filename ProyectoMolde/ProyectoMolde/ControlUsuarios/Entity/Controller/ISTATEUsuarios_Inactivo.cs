using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ControlUsuarios.Entity.Model;

namespace ControlUsuarios.Entity.Controller
{
    public class ISTATEUsuarios_Inactivo : ISTATEUsuarios
    {
        private const string nombreEstado = "Inactivo";
        public Result Nuevo(ref Usuarios registro)
        {
            Result resul = new Result();
            resul.error = "No se puede realizar esta operación en el estado actual del registro";
            return resul;
        }
        public Result Editar(ref Usuarios registro)
        {
            Result resul = new Result();
            resul.error = "No se puede realizar esta operación en el estado actual del registro";
            return resul;
        }
        public Result Inactivar(ref Usuarios registro)
        {
            Result resul = new Result();
            resul.error = "No se puede realizar esta operación en el estado actual del registro";
            return resul;
        }
        public Result ValidarUsuario(ref Usuarios registro)
        {
            Result resul = new Result();
            resul.error = "No se puede realizar esta operación en el estado actual del registro";
            return resul;
        }
    }
}
