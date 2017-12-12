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
        var url = "/WebMethods/login.aspx/registrarUsuarioParams";
        enviarComoParametros(url, usuario, OnSuccess);
    }
);

function OnSuccess(response)
{
    console.log(response);
    if ((response.error == null ? "" : response.error) != "")
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