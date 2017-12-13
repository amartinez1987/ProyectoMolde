//atributos del objecto Usuario
var usuario = new Object();

$("#btnIngresar").click
(
    function ()
    {
        usuario.nombreUsuario = $("#nombreUsuario").val();
        usuario.clave = $("#clave").val();        
        var url = "/WebMethods/login.aspx/AutenticarUsuario";
        enviarComoParametros(url, usuario, OnSuccessLogin);
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

function OnSuccessLogin(response)
{
    console.log(response);
    if ((response.error == null ? "" : response.error) != "") {
        tipoAlerta(response.error, response.tipoAlerta);
        return;
    }

    if (response.error == '')
    {        
        setLocalStorageNavegator("usuarioId", response.id);
        var redireccion = host + "/Forms/index.aspx";        
        location.href = redireccion;
        return;
    }
}

function getListaMenuPerfilUsuario()
{
    usuario.nombreUsuario = $("#nombreUsuario").val();
    usuario.clave = $("#clave").val();
    usuario.confirmarClave = $("#confirmarClave").val();
    var url = "/WebMethods/usuario.aspx/getListaMenuUsuario";
    enviarComoParametros(url, usuario, OnSuccessListUsuario);
}