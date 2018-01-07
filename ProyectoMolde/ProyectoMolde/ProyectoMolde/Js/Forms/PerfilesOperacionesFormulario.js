//atributos del objecto perfilesOperacionesFormulario
var perfilesOperacionesFormulario = new Object();
var perfil = new Object();

function getListaOperacionesFormularioPerfiles(id)
{
    perfilesOperacionesFormulario.id = id;
    perfilesOperacionesFormulario.usuarioId = getLocalStorageNavegator("usuarioId");
    var url = "/WebMethods/perfilesOperacionesFormulario.aspx/getListaOperacionesFormularioDelPerfiles";
    enviarComoParametros(url, perfilesOperacionesFormulario, OnSuccesListaOperacionesFormularioPerfil);
}

function OnSuccesListaOperacionesFormularioPerfil(response)
{
    lstOperacionesFormularioPerfil = eval("(" + response.getCadena + ")");
    for (var x = 0; x < lstOperacionesFormularioPerfil.length; x++) {
        $('#lstBox2').append('<option value="' + lstOperacionesFormularioPerfil[x].operacionFormularioId + '">' + lstOperacionesFormularioPerfil[x].nombreOperacionFormulario + '</option>');
    }
}

function getListaOperacionesFormulario(id)
{
    perfilesOperacionesFormulario.id = id;
    perfilesOperacionesFormulario.usuarioId = getLocalStorageNavegator("usuarioId");
    var url = "/WebMethods/perfilesOperacionesFormulario.aspx/getListaNoOperacionesFormularioDelPerfiles";
    enviarComoParametros(url, perfilesOperacionesFormulario, OnSuccesListaOperacionesFormulario);

}

function OnSuccesListaOperacionesFormulario(response)
{
    lstOperacionesFormulario = eval("(" + response.getCadena + ")");
    for (var x = 0; x < lstOperacionesFormulario.length; x++) {
        $('#lstBox1').append('<option value="' + lstOperacionesFormulario[x].id + '">' + lstOperacionesFormulario[x].nombreFormularioOperacion + '</option>');
    }
}



function btnPerfilesOperacionesFormulario_GuardarClick()
{

    // get txn id from current table row
    var heading = 'Guardar Registro';
    var question = '¿Esta seguro realizar esta acci&oacute;n?.';
    var cancelButtonTxt = 'No';
    var okButtonTxt = 'Yes';
    var callback = function ()
    {
        console.log($("#lstBox2")[0].options);
        var lstPerfilesOperacionesFormularioP = new Array();
        for (var x = 0; x < $("#lstBox2")[0].options.length; x++) {
            var oFP = new Object();
            oFP.id = 0;
            oFP.perfilId = perfilesOperacionesFormulario.id;
            oFP.operacionFormularioId = $("#lstBox2")[0].options[x].value;
            oFP.usuarioId = getLocalStorageNavegator("usuarioId");
            lstPerfilesOperacionesFormularioP.push(oFP);
        }

        var paramObjectOf = new Object();
        paramObjectOf.perfilesOperacionesFormulario = lstPerfilesOperacionesFormularioP;
        paramObjectOf.usuarioId = getLocalStorageNavegator("usuarioId");

        var url = "/WebMethods/perfilesOperacionesFormulario.aspx/guardar";
        enviarComoParametros(url, paramObjectOf, OnSuccesSaveOperacionesFormularioPerfiles);
    }
    confirm(heading, question, cancelButtonTxt, okButtonTxt, callback);




}


function OnSuccesSaveOperacionesFormularioPerfiles(response) {
    if ((response.error == null ? "" : response.error) != "") {
        tipoAlerta(response.error, response.tipoAlerta, "#boxMessagesCrud");
        return;
    }

    if (response.error == '') {
        tipoAlerta('Registro Guardado con exito', 'success', "#boxMessagesCrud");
        return;
    }
}
