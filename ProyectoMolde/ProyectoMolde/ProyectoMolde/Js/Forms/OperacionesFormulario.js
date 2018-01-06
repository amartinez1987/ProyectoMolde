//atributos del objecto operacionesFormulario
var operacionesFormulario = new Object();
var formulario = new Object();

function getListaOperacionesFormulario(id)
{    
    operacionesFormulario.id = id ;
    operacionesFormulario.usuarioId = getLocalStorageNavegator("usuarioId");
    var url = "/WebMethods/operacionesFormulario.aspx/getListaOperacionesDelFormulario";
    enviarComoParametros(url, operacionesFormulario, OnSuccesListaOperacionesFormulario);
}


function getListaOperaciones(id)
{    
    operacionesFormulario.id = id;
    operacionesFormulario.usuarioId = getLocalStorageNavegator("usuarioId");
    var url = "/WebMethods/operacionesFormulario.aspx/getListaNoOperacionesFormulario";
    enviarComoParametros(url, operacionesFormulario, OnSuccesListaOperaciones);
}

function OnSuccesListaOperacionesFormulario(response)
{
    lstOperacionesFormulario = eval("(" + response.getCadena + ")");
    for (var x = 0; x < lstOperacionesFormulario.length;x++ )
    {
        $('#lstBox2').append('<option value="' + lstOperacionesFormulario[x].operacionId + '">' + lstOperacionesFormulario[x].nombreOperacion + '</option>');
    }
}

function OnSuccesListaOperaciones(response)
{
    lstOperaciones = eval("(" + response.getCadena + ")");
    for (var x = 0; x < lstOperaciones.length; x++) {
        $('#lstBox1').append('<option value="' + lstOperaciones[x].id + '">' + lstOperaciones[x].nombreOperacion + '</option>');
    }
}


function btnOperacionesFormulario_GuardarClick()
{

        //operacionesFormulario.id = 0;
        //operacionesFormulario.formularioId = $('#txtformularioIdOperacionesFormulario').val();
        //operacionesFormulario.operacionId = $('#txtoperacionIdOperacionesFormulario').val();
        //operacionesFormulario.usuarioId = getLocalStorageNavegator("usuarioId");
        //operacionesFormulario.descripcion = $('#txtdescripcionOperacionesFormulario').val();
        //var url = "/WebMethods/operacionesFormulario.aspx/guardar";
        //enviarComoParametros(url, operacionesFormulario, OnSuccesSaveOperacionesFormulario);

}


function OnSuccesSaveOperacionesFormulario(response)
{
    if ((response.error == null ? "" : response.error) != "") {
        tipoAlerta(response.error, response.tipoAlerta, "#boxMessagesCrud");
        return;
    }

    if (response.error == '') {
        tipoAlerta('Registro Guardado con exito', 'success', "#boxMessagesCrud");
        return;
    }
}
