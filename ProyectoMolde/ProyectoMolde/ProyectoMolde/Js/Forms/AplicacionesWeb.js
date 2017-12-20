//atributos del objecto aplicacionesWeb
var aplicacionesWeb = new Object();

$('#myModal').on('show.bs.modal', function (e)
{
    var loadurl = $(e.relatedTarget).data('load-url');
    $('#lblTitutloPopModal').text("Nueva ApliacionWeb");
    $(this).find('.modal-body').load(loadurl);
});

function btnAplicacionesWeb_Eliminar(id)
{
    alert(id);
}

function getListaAplicacionesWeb(registroPartida, totalAExtraer, callbackFucntion)
{
    aplicacionesWeb.registroPartida = registroPartida;
    aplicacionesWeb.totalAExtraer = totalAExtraer;
    var url = "/WebMethods/aplicacionesWeb.aspx/getListaAplicacionesWeb";
    enviarComoParametros(url, aplicacionesWeb, callbackFucntion);
}


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
                for (var i=0;i<lstAplicacionesWeb.length;i++)
                {
                    var etiquetaEditar = "<a href='#' data-toggle='modal' data-load-url='.aspx?id="+lstAplicacionesWeb[i].id+"' data-target='#myModal' class='fa fa-edit'><a>";
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

