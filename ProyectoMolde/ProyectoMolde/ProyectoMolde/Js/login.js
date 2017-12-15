﻿//atributos del objecto Usuario
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
        console.log(getCookie('usuarioId'));
        var redireccion = host + "/Forms/index.aspx";
        window.location.replace(redireccion);
        
        return;
    }
}

function getListaMenuPerfilUsuario()
{   
    usuario.usuarioId = getLocalStorageNavegator("usuarioId");
    var url = "/WebMethods/usuario.aspx/getListaMenuUsuario";
    enviarComoParametros(url, usuario, OnSuccessListUsuario);
}

function OnSuccessListUsuario(response)
{
    console.log(response);
    if ((response.error == null ? "" : response.error) != "")
    {
        tipoAlerta(response.error, response.tipoAlerta);
        return;
    }

    if (response.error == '')
    {   
        //  $("#side-menu").html(response.getCadena) ;
        setLocalStorageNavegator("usuarioId", response.id);
        console.log(getCookie('usuarioId'));
        return;
    }
}