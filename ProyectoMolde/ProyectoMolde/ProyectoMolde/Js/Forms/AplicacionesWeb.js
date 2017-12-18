//atributos del objecto aplicacionesWeb
var aplicacionesWeb = new Object();

function btnAplicacionesWeb_Editar(id)
{
    alert('editar'+id);
}

function btnAplicacionesWeb_Eliminar(id)
{
    alert('eliminar'+id);
}

function getListaAplicacionesWeb()
{
    
    var url = "/WebMethods/aplicacionesWeb.aspx/getListaAplicacionesWeb";
    enviarComoParametros(url, aplicacionesWeb, onSuccesListAplicacionesWeb);
}

function onSuccesListAplicacionesWeb(response)
{
    console.log(response);
    if ((response.error == null ? "" : response.error) != "")
    {
        tipoAlerta(response.error, response.tipoAlerta);
        return;
    }

    if (response.error == '')
    {
        $("#gridListaAplicacionesWeb").html(response.getCadena);
        $('#gridListaAplicacionesWeb').DataTable();
        return;
    }
}