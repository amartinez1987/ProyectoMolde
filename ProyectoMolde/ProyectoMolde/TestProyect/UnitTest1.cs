using ControlUsuarios.Entity.Controller;
using ProyectoMolde.WebMethods;
using System;
using System.Linq;
using Xunit;

namespace TestProyect
{

    public class UnitTest1
    {
        [Fact]
        public void TestMethod1()
        {
            UsuariosController uc = new UsuariosController();
            uc.getMenuUsuarioPorId(15, "Molde");
        }

        [Fact]
        public void TestMethod2()
        {
            MenusController mc = new MenusController();
            mc.inactivarMenus(3,3);
        }

        [Fact]
        public void TestMethod3()
        {
    
          var ob =  help.getListaHelp("Departamentos",new string[] { }, "",0,10,3);
        }


    }
}
