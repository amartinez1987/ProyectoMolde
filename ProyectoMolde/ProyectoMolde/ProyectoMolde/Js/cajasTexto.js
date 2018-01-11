function tipoAlerta(texto, tipoAlerta, nombreCajaTexto)
{
    console.log(nombreCajaTexto);
    switch(tipoAlerta)
    {
        case "success":
            $(nombreCajaTexto).append('<div id="alert" style="position:absolute;z-index : 1;width:300px" class="alert alert-success alert-dismissable" ><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> ' + texto + ' </div>');
            setTimeout(removeAlert, 3000);
            break;
        case "Info":
            $(nombreCajaTexto).append('<div id="alert" style="position:absolute;z-index : 1;width:300px" class="alert alert-info alert-dismissable" ><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> ' + texto + ' </div>');
            setTimeout(removeAlert, 3000);
            break;
        case "warning":
            $(nombreCajaTexto).append('<div id="alert" style="position:absolute;z-index : 1;width:300px" class="alert alert-warning alert-dismissable" ><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> ' + texto + ' </div>');
            setTimeout(removeAlert, 3000);
            break;
        case "danger":
            $(nombreCajaTexto).append('<div id="alert" style="position:absolute;z-index : 1;width:300px" class="alert alert-danger alert-dismissable" ><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> ' + texto + ' </div>');
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

/* Generic Confirm func */
function confirm(heading, question, cancelButtonTxt, okButtonTxt, callback)
{
    var confirmModal = 
      $('<div class="modal fade">' +        
          '<div class="modal-dialog">' +
          '<div class="modal-content">' +
          '<div class="modal-header">' +
            '<a class="close" data-dismiss="modal" >&times;</a>' +
            '<h3>' + heading +'</h3>' +
          '</div>' +

          '<div class="modal-body">' +
            '<p>' + question + '</p>' +
          '</div>' +

          '<div class="modal-footer">' +
            '<a href="#!" class="btn" data-dismiss="modal">' + 
              cancelButtonTxt + 
            '</a>' +
            '<a href="#!" id="okButton" class="btn btn-primary">' + 
              okButtonTxt + 
            '</a>' +
          '</div>' +
          '</div>' +
          '</div>' +
        '</div>');

    confirmModal.find('#okButton').click(function(event) {
        callback();
        confirmModal.modal('hide');
    }); 

    confirmModal.modal('show');    
};  
/* END Generic Confirm func */

function loadUrlModal(heading, url, fucntionOnClickCross) {    
    $('#modalForm').remove();
    var modalUrl =
      $('<div id ="modalForm" class="modal fade">' +
          '<div class="modal-dialog modal-lg">' +
             '<div class="modal-content">' +
                '<div class="modal-header alert-info">' +
                    '<a id="croosModal" type="button" class="close" >X</a>' +
                    '<h4  class="modal-title">' + heading + '</h4>' +
                '</div>' +
                '<div class="modal-body">' +
                    '<p>Loading...</p>' +
                '</div>' +
                '<div class="modal-footer">' +
                    'Molde' +
                '</div>' +
            '</div>' +
          '</div>' +
        '</div>');

    modalUrl.find('#croosModal').click(function (event) 
    {  
        modalUrl.modal('hide');                
    });

    modalUrl.on('hidden.bs.modal', function ()
    {
        // do something…
        fucntionOnClickCross();
    });

    modalUrl.find('.modal-body').load(url);
    modalUrl.modal('show');

};





