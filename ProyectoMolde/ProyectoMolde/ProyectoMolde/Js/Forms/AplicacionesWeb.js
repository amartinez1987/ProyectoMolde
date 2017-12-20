//atributos del objecto aplicacionesWeb
var aplicacionesWeb = new Object();

function btnAplicacionesWeb_Editar(id) {
    alert('editar' + id);
}

function btnAplicacionesWeb_Eliminar(id) {
    alert('eliminar' + id);
}

$("#btnAplicacionWeb_Nuevo").click
(
    function () {
        alert('Nuevo' + 0);
    }
);

function getListaAplicacionesWeb(registroPartida, totalAExtraer, callbackFucntion) {
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
                console.log(lstAplicacionesWeb);
                for (var i=0;i<lstAplicacionesWeb.length;i++)
                {
                    var etiquetaEditar = "<a class='fa fa-edit' onclick='btnAplicacionesWeb_Editar(" + lstAplicacionesWeb[i].id + ")'><a>";
                    var etiquetaEliminar = "<a class='fa fa-minus' onclick='btnAplicacionesWeb_Eliminar(" + lstAplicacionesWeb[i].id + ")'><a>";                    
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

