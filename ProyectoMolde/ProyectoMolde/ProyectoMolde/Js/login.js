//atributos del objecto Usuario
var usuario = new Object();

$("#btnIngresar").click
(
    function ()
    {       
    }
);

$("#btnRegistrarse").click
(
    function ()
    {        
        usuario.nombreUsuario = $("#nombreUsuario").val();
        usuario.clave = $("#clave").val();
        usuario.confirmarClave = $("#confirmarClave").val();
        usuario.usuario = new Object();
        usuario.usuario.id = 0;        
        var url = "/WebMethods/login.aspx/registrarUsuarioParams";
        enviarComoParametros(url, usuario, OnSuccess);
    }
);

function OnSuccess(response)
{
    if (response.error != null)
    {
        tipoAlerta(response.error, response.tipoAlerta);
        return;
    }

    if (response.error != '')
    {
        tipoAlerta(response.error, response.tipoAlerta);
        return;
    }

    if (response.error == '')
    {
        tipoAlerta('Se ha enviado un correo para activar el usuario.', 'success');
        return;
    }
}