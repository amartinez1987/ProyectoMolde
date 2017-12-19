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

$("#btnAplicacionWeb_Nuevo").click
(
    function ()
    {
        alert('Nuevo' + 0);
    }
);

function getListaAplicacionesWeb()
{

    var url = "/WebMethods/aplicacionesWeb.aspx/getListaAplicacionesWeb";
    enviarComoParametros(url, aplicacionesWeb, onSuccesListAplicacionesWeb);
}

function onSuccesListAplicacionesWeb(response)
{
    console.log('respuesta');
    console.log(response);
    if ((response.error == null ? "" : response.error) != "")
    {
        tipoAlerta(response.error, response.tipoAlerta);
        return;
    }

    if (response.error == '')
    {
        $('#gridListaAplicacionesWeb').DataTable({
            serverSide: true,
            ordering: false,
            searching: false,
            ajax: function (data, callback, settings)
            {
                console.log(data);
                var out = [];

                for (var i = data.start, ien = data.start + data.length ; i < ien ; i++)
                {
                  out.push([i + '-1', i + '-2', i + '-3', i + '-4', i + '-5']);
               }

                setTimeout(function () {
                    callback({
                        draw: data.draw,
                        data: out,
                        recordsTotal: 5000000,
                        recordsFiltered: 5000000
                    });
                }, 50);
            },
            scrollY: 200,
            scroller: {
                loadingIndicator: true
            }
        });
        return;
    }
}

