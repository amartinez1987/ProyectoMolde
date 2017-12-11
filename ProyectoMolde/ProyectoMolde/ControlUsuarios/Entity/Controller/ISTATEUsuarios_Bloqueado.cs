using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ControlUsuarios.Entity.Model;
using System.Threading.Tasks;

namespace ControlUsuarios.Entity.Controller
{
    public class ISTATEUsuarios_Bloqueado : ISTATEUsuarios
    {
        private const string nombreEstado = "Bloqueado";
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
