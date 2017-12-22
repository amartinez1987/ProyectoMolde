//atributos del objecto aplicacionesWeb
var aplicacionesWeb = new Object();
var enviado = false;
$('#croosModal').click( function ()
{
    console.log(enviado);
    if (enviado) { return; }
    enviado = true;

   cargarListaAplicacionesWeb();
   setTimeout(function () { $("#myModal").modal('hide'); enviado = false;} , 50);
   
   
})


$("#btnAplicacionWeb_Nuevo").click(function ()
{ 
    $('#modalUrl').load('frmAplicacionesWeb_Nuevo.aspx');
    $('#lblTitutloPopModal').html('Nueva Aplicación Web');
    $("#myModal").modal("show");
});


function btnAplicacionesWeb_Editar(id) 
{    
    $('#modalUrl').load('frmAplicacionesWeb_Editar.aspx?id=' + id);
    $('#lblTitutloPopModal').html('Editar Aplicación Web');
    $("#myModal").modal("show");
}


function btnAplicacionesWeb_Eliminar(id)
{
    alert(id);
}

$('#btnAplicacionWeb_Guardar').click(
    function ()
    {
        if (validarCampos())
        {            
            aplicacionesWeb.id = 0;
            aplicacionesWeb.nombre = $('#txtNombreAplicacionWeb').val() ;
            aplicacionesWeb.descripcion = $('#txtDescripcionAplicacionWeb').val();
            aplicacionesWeb.usuarioId = getLocalStorageNavegator("usuarioId");
            var url = "/WebMethods/aplicacionesWeb.aspx/guardar";
            enviarComoParametros(url, aplicacionesWeb, OnSuccesSaveAplicacionWeb);
        }
    }
);

function OnSuccesSaveAplicacionWeb(response)
{
    
    if ((response.error == null ? "" : response.error) != "")
    {
        tipoAlerta(response.error, response.tipoAlerta, "#boxMessagesCrud");
        return;
    }

    if (response.error == '')
    {
        tipoAlerta('Registro Guardado con exito', 'success', "#boxMessagesCrud");        
        return;
    }

    
}

$('#btnAplicacionWeb_Editar').click(
    function ()
    {
        if (validarCampos())
        {
            aplicacionesWeb.id = $('#lblIdAplicacionWeb').val();
            aplicacionesWeb.nombre = $('#txtNombreAplicacionWeb').val();
            aplicacionesWeb.descripcion = $('#txtDescripcionAplicacionWeb').val();
            aplicacionesWeb.usuarioId = getLocalStorageNavegator("usuarioId");
            var url = "/WebMethods/aplicacionesWeb.aspx/guardar";
            enviarComoParametros(url, aplicacionesWeb, OnSuccesSaveAplicacionWeb);
        }
    }
);

function getListaAplicacionesWeb(registroPartida, totalAExtraer, callbackFucntion)
{
    aplicacionesWeb.registroPartida = registroPartida;
    aplicacionesWeb.totalAExtraer = totalAExtraer;
    aplicacionesWeb.usuarioId = getLocalStorageNavegator("usuarioId");;
    var url = "/WebMethods/aplicacionesWeb.aspx/getListaAplicacionesWeb";
    enviarComoParametros(url, aplicacionesWeb, callbackFucntion);
}

function validarCampos()
{
    if ($('#txtNombreAplicacionWeb').val()=='')
    {
        tipoAlerta('El campo nombre no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    }

    if ($('#txtDescripcionAplicacionWeb').val()=='')
    {
        tipoAlerta('El campo descripción no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    }
    return true;
}

function cargarListaAplicacionesWeb()
{
    table = $('#gridListaAplicacionesWeb');

    if ($.fn.dataTable.isDataTable(table))
    {
        table.DataTable();       
    }

    table.DataTable(
    {
        serverSide: true,
        ordering: false,
        searching: false,
        processing: true,
        destroy:true,
        language: {
            "processing": "Actualizando Datos"
        },
        ajax: function (data, callback, settings)
        {
            var out = [];
            var lstAplicacionesWeb;
            var totalRegistros = 0;
            var totalRegistrosFiltrados = 0;

            getListaAplicacionesWeb(data.start, data.length, function (response)
            {

                if ((response.error == null ? "" : response.error) != "")
                {
                    tipoAlerta(response.error, response.tipoAlerta, "#boxMessages");
                    return;
                }

                if (response.error == '')
                {
                    lstAplicacionesWeb = eval("(" + response.getCadena + ")");
                    totalRegistros = response.totalRegistros;
                    totalRegistrosFiltrados = response.totalRegistrosFiltrados;
                    for (var i = 0; i < lstAplicacionesWeb.length; i++)
                    {
                        var etiquetaEditar = "<a  onclick = 'btnAplicacionesWeb_Editar(" + lstAplicacionesWeb[i].id + ")'  class='fa fa-edit'><a>";
                        var etiquetaEliminar = "<a  class='fa fa-minus' onclick='btnAplicacionesWeb_Eliminar(" + lstAplicacionesWeb[i].id + ")'><a>";
                        out.push([etiquetaEditar + etiquetaEliminar, lstAplicacionesWeb[i].nombre, lstAplicacionesWeb[i].descripcion]);
                    }

                    setTimeout(callback(
                    {
                        draw: data.draw,
                        data: out,
                        recordsTotal: totalRegistros,
                        recordsFiltered: totalRegistros
                    }), 50);
                }
            });
        }
    });
}