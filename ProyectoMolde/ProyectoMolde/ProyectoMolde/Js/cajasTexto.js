function tipoAlerta(texto, tipoAlerta, nombreCajaTexto)
{
    console.log(nombreCajaTexto);
    switch(tipoAlerta)
    {
        case "success":
            $(nombreCajaTexto).append('<div id="alert" class="alert alert-success alert-dismissable" ><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> ' + texto + ' </div>');
            setTimeout(removeAlert, 3000);
            break;
        case "Info":
            $(nombreCajaTexto).append('<div id="alert" class="alert alert-info alert-dismissable" ><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> ' + texto + ' </div>');
            setTimeout(removeAlert, 3000);
            break;
        case "warning":
            $(nombreCajaTexto).append('<div id="alert" class="alert alert-warning alert-dismissable" ><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> ' + texto + ' </div>');
            setTimeout(removeAlert, 3000);
            break;
        case "danger":
            $(nombreCajaTexto).append('<div id="alert" class="alert alert-danger alert-dismissable" ><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> ' + texto + ' </div>');
            setTimeout(removeAlert, 3000);
            break;
        default:
            break;            
    }   
}


function removeAlert()
{
    $('#alert').remove();
}