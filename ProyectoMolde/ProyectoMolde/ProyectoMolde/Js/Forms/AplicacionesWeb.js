//atributos del objecto aplicacionesWeb
var aplicacionesWeb = new Object();
var operacion = new Object();

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
        tipoAlerta('Guardado', 'success');
    }
);

$('#btnAplicacionWeb_Editar').click(
    function ()
    {
        tipoAlerta('Editado', 'success');
    }
);

function getListaAplicacionesWeb(registroPartida, totalAExtraer, callbackFucntion)
{
    aplicacionesWeb.registroPartida = registroPartida;
    aplicacionesWeb.totalAExtraer = totalAExtraer;
    var url = "/WebMethods/aplicacionesWeb.aspx/getListaAplicacionesWeb";
    enviarComoParametros(url, aplicacionesWeb, callbackFucntion);
}

function validarCampos()
{
    
}

function cargarListaAplicacionesWeb()
{
    $('#gridListaAplicacionesWeb').DataTable(
    {
        serverSide: true,
        ordering: false,
        searching: false,
        processing: true,
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
                    tipoAlerta(response.error, response.tipoAlerta);
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