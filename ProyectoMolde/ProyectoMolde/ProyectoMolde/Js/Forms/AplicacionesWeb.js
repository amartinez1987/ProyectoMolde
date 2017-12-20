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

function getListaAplicacionesWeb(registroInicial, registroFinal, callbackFucntion)
{
    aplicacionesWeb.registroInicial = registroInicial;
    aplicacionesWeb.registroFinal = registroFinal;
    var url = "/WebMethods/aplicacionesWeb.aspx/getListaAplicacionesWeb";
    enviarComoParametros(url, aplicacionesWeb, callbackFucntion);
}


  $('#gridListaAplicacionesWeb').DataTable({
            serverSide: true,
            ordering: false,
            searching: false,
            ajax: function (data, callback, settings)
            {
                console.log(data);
                var out = [];
                var lstAplicacionesWeb;
                var registroInicial = 0;
                var registroFinal = 0;
                
                getListaAplicacionesWeb(data.start, data.start + data.length, function (response)
                {                    
                    console.log(response);
                    if ((response.error == null ? "" : response.error) != "")
                    {
                        tipoAlerta(response.error, response.tipoAlerta);
                        return;
                    }

                    if (response.error == '')
                    {
                        lstAplicacionesWeb = response.getCadena
                        registroInicial = response.registroInicial;
                        registroFinal = response.registroFinal;
                        return;
                    }
                })

                for (var i in lstAplicacionesWeb)
                {
                    out.push([i.id, i.nombre, i.descripcion]);
                }

                callback(
                {
                    draw: data.draw,
                    data: out,
                    recordsTotal: registroInicial,
                    recordsFiltered: registroFinal
                });
            }
        });

