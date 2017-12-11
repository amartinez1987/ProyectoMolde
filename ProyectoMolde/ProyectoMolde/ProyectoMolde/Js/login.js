$("#btnIngresar").click
(
    function ()
    {
        console.log($("#txtCorreo").val());
        console.log($("#txtContrasena").val());
    }
);

$("#btnRegistrarse").click
(
    function ()
    {
        console.log($('#frmRegistrarse'));
        console.log($('#frmRegistrarse').serializeObject());
    }
);


$('#txtCorreo').blur(function ()
{    
    caracteresCorreoValido($('#txtCorreo').val())
});

// funcion para validar el correo
function caracteresCorreoValido(email)
{
    var caract = new RegExp(/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/);
   
    if (caract.test(email) == false)
    {   
        tipoAlerta('Ingreso', 'warning');
    }
}

