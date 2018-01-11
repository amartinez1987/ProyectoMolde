//atributos del objecto usuarios
var usuarios = new Object();
function cargarDatos(usuarios) {
    $('#PanelIDUsuarios').show();
    $('#PanelEstadousUsuarios').show();
    $('#PanelIDPersonas').show();
    $('#PanelClaveUsuarios').hide();
    $('#txtIdUsuarios').val(usuarios.id);
    $('#txtperfilIdUsuarios').val(usuarios.perfilId);
    $('#txtPerfilVerUsuarios').val(usuarios.perfilId);
    $('#txtDescripcionPerfil').val(usuarios.nombrePerfil);
    $('#txtnombreUsuarioUsuarios').val(usuarios.nombreUsuario);
    $('#txtclaveUsuarios').val(usuarios.clave);
    $('#txtestadoUsuarios').val(usuarios.estado);
    $('#txtIdPersonas').val(usuarios.idPersona);

    //datos persona

    $('#txtdocumentoIdentidadIdPersonas').val(usuarios.documentoIdentidadId);
    $('#txtdocumentoIdentidadVerPersonas').val(usuarios.siglaDocumentoIdentidad);
    $('#txtDescripcionDocumentoIdentidad').val(usuarios.descripcionDocumentoIdentidad);

    $('#txtmunicipioIdPersonas').val(usuarios.municipioId);
    $('#txtmunicipioVerPersona').val(usuarios.codigoDaneDepartamentoMunicipio);
    $('#txtDescripcionMunicipio').val(usuarios.nombreDepartamentoMunicipio);

    $('#txtgrupoSanguineoIdPersonas').val(usuarios.grupoSanguineoId);
    $('#txtgrupoSanguineoIdPersonas').val(usuarios.siglaGrupoSanguineo);
    $('#txtgrupoSanguineoIdPersonas').val(usuarios.descripcionGrupoSanguineo);

    $('#txtsexoIdPersonas').val(usuarios.sexoId);
    $('#txtSexoVerPersonas').val(usuarios.siglaSexo);
    $('#txtDescripcionSexo').val(usuarios.descripcionSexo);

    $('#txtmunicipioExpedicionIdPersonas').val(usuarios.municipioExpedicionId);
    $('#txtmunicipioExpedicionVerPersonas').val(usuarios.codigoDaneDepartamentoExpedicion);
    $('#txtDescripcionMunicipioExpedicion').val(usuarios.nombreDepartamentoExpedicion);

    $('#txtbarrioIdPersonas').val(usuarios.barrioId);
    $('#txtbarrioVerPersonas').val(usuarios.barrioId);
    $('#txtDescripcionBarrio').val(usuarios.nombreDepartamentoBarrio);

    $('#txtestaturaPersonas').val(usuarios.estatura);
    $('#txtpesoPersonas').val(usuarios.peso);

    $('#txtestadoCivilIdPersonas').val(usuarios.estadoCivilId);
    $('#txtestadoCivilVerPersonas').val(usuarios.estadoCivilId);
    $('#txtDescripcioneEstadoCivi').val(usuarios.nombreEstadoCivil);

    $('#txttelefonoFijoPersonas').val(usuarios.telefonoFijo);
    $('#txttelefonoCelularPersonas').val(usuarios.telefonoCelular);
    $('#txtnumeroDocumentoPersonas').val(usuarios.numeroDocumento);
    $('#txtprimerNombrePersonas').val(usuarios.primerNombre);
    $('#txtsegundoNombrePersonas').val(usuarios.segundoNombre);
    $('#txtprimerApellidoPersonas').val(usuarios.primerApellido);
    $('#txtsegundoApellidoPersonas').val(usuarios.segundoApellido);
    $('#txtdirecccionPersonas').val(usuarios.direcccion);
    $('#txtcorreoPersonas').val(usuarios.correo);
    $('#txtfechaNacimientoPersonas').val(usuarios.fechaNacimiento);
    $('#txtfechaExpedicionCedulaPersonas').val(usuarios.fechaExpedicionCedula);


}

function croosModalClick() {
    cargarListaUsuarios();
}

function btnUsuarios_NuevoClick() {
    loadUrlModal('Nueva Usuarios', 'frmUsuarios_Nuevo.aspx', croosModalClick);
}

function btnUsuarios_GuardarClick() {
    if (validarCampos()) {
        if ($('#txtclaveUsuarios').val() != $('#txtConfirmarclaveUsuarios').val()) {
            tipoAlerta("La Constraseñas no coinciden", "warning", "#boxMessagesCrud");
            return;
        }

        usuarios.id = 0;
        usuarios.idPersona = $('#txtIdPersonas').val();
        usuarios.usuarioId = getLocalStorageNavegator("usuarioId");
        usuarios.perfilId = $('#txtperfilIdUsuarios').val();
        usuarios.nombreUsuario = $('#txtnombreUsuarioUsuarios').val();
        usuarios.clave = $('#txtclaveUsuarios').val();
        usuarios.estado = $('#txtestadoUsuarios').val();
        usuarios.documentoIdentidadId = $('#txtdocumentoIdentidadIdPersonas').val();
        usuarios.municipioId = $('#txtmunicipioIdPersonas').val();
        usuarios.grupoSanguineoId = $('#txtgrupoSanguineoIdPersonas').val();
        usuarios.sexoId = $('#txtsexoIdPersonas').val();
        usuarios.municipioExpedicionId = $('#txtmunicipioExpedicionIdPersonas').val();
        usuarios.barrioId = $('#txtbarrioIdPersonas').val();
        usuarios.estatura = $('#txtestaturaPersonas').val();
        usuarios.peso = $('#txtpesoPersonas').val();
        usuarios.estadoCivilId = $('#txtestadoCivilIdPersonas').val();
        usuarios.telefonoFijo = $('#txttelefonoFijoPersonas').val();
        usuarios.telefonoCelular = $('#txttelefonoCelularPersonas').val();
        usuarios.numeroDocumento = $('#txtnumeroDocumentoPersonas').val();
        usuarios.primerNombre = $('#txtprimerNombrePersonas').val();
        usuarios.segundoNombre = $('#txtsegundoNombrePersonas').val();
        usuarios.primerApellido = $('#txtprimerApellidoPersonas').val();
        usuarios.segundoApellido = $('#txtsegundoApellidoPersonas').val();
        usuarios.direcccion = $('#txtdirecccionPersonas').val();
        usuarios.correo = $('#txtcorreoPersonas').val();
        usuarios.fechaNacimiento = $('#txtfechaNacimientoPersonas').val();
        usuarios.fechaExpedicionCedula = $('#txtfechaExpedicionCedulaPersonas').val();

        var url = "/WebMethods/usuarios.aspx/nuevo";
        enviarComoParametros(url, usuarios, OnSuccesSaveUsuarios);
    }
}

function btnUsuarios_EditarClick() {
    if (validarCampos()) {
        usuarios.id = $('#txtIdUsuarios').val();
        usuarios.idPersona = $('#txtIdPersonas').val();
        usuarios.usuarioId = getLocalStorageNavegator("usuarioId");
        usuarios.perfilId = $('#txtperfilIdUsuarios').val();
        usuarios.nombreUsuario = $('#txtnombreUsuarioUsuarios').val();
        usuarios.clave = $('#txtclaveUsuarios').val();
        usuarios.estado = $('#txtestadoUsuarios').val();
        usuarios.documentoIdentidadId = $('#txtdocumentoIdentidadIdPersonas').val();
        usuarios.municipioId = $('#txtmunicipioIdPersonas').val();
        usuarios.grupoSanguineoId = $('#txtgrupoSanguineoIdPersonas').val();
        usuarios.sexoId = $('#txtsexoIdPersonas').val();
        usuarios.municipioExpedicionId = $('#txtmunicipioExpedicionIdPersonas').val();
        usuarios.barrioId = $('#txtbarrioIdPersonas').val();
        usuarios.estatura = $('#txtestaturaPersonas').val();
        usuarios.peso = $('#txtpesoPersonas').val();
        usuarios.estadoCivilId = $('#txtestadoCivilIdPersonas').val();
        usuarios.telefonoFijo = $('#txttelefonoFijoPersonas').val();
        usuarios.telefonoCelular = $('#txttelefonoCelularPersonas').val();
        usuarios.numeroDocumento = $('#txtnumeroDocumentoPersonas').val();
        usuarios.primerNombre = $('#txtprimerNombrePersonas').val();
        usuarios.segundoNombre = $('#txtsegundoNombrePersonas').val();
        usuarios.primerApellido = $('#txtprimerApellidoPersonas').val();
        usuarios.segundoApellido = $('#txtsegundoApellidoPersonas').val();
        usuarios.direcccion = $('#txtdirecccionPersonas').val();
        usuarios.correo = $('#txtcorreoPersonas').val();
        usuarios.fechaNacimiento = $('#txtfechaNacimientoPersonas').val();
        usuarios.fechaExpedicionCedula = $('#txtfechaExpedicionCedulaPersonas').val();

        var url = "/WebMethods/usuarios.aspx/editar";
        enviarComoParametros(url, usuarios, OnSuccesSaveUsuarios);
    }
}

function OnSuccesSaveUsuarios(response) {
    if ((response.error == null ? "" : response.error) != "") {
        tipoAlerta(response.error, response.tipoAlerta, "#boxMessagesCrud");
        return;
    }

    if (response.error == '') {
        tipoAlerta('Registro Guardado con exito', 'success', "#boxMessagesCrud");
        return;
    }
}

function btnUsuarios_Editar(id) {
    loadUrlModal('Editar Usuarios', ('frmUsuarios_Editar.aspx?id=' + id), croosModalClick);
}

function btnUsuarios_Inactivar(id) {
    // get txn id from current table row
    var heading = 'Inactivar Registro';
    var question = '¿Desea inactivar el registro?.';
    var cancelButtonTxt = 'No';
    var okButtonTxt = 'Yes';
    var callback = function () {
        usuarios.id = id;
        usuarios.usuarioId = getLocalStorageNavegator("usuarioId");
        var url = "/WebMethods/usuarios.aspx/inactivar";
        enviarComoParametros(url, usuarios, OnSuccesInactivarUsuarios);
    }
    confirm(heading, question, cancelButtonTxt, okButtonTxt, callback);
}

function OnSuccesInactivarUsuarios(response) {
    if ((response.error == null ? "" : response.error) != "") {
        tipoAlerta(response.error, response.tipoAlerta, "#boxMessages");
        return;
    }

    if (response.error == '') {
        tipoAlerta('Registro inactivado con Exito.', 'success', "#boxMessages");
        cargarListaUsuarios();
        return;
    }
}

function btnUsuarios_Activar(id) {
    // get txn id from current table row
    var heading = 'Activar Registro';
    var question = '¿Desea activar el registro?.';
    var cancelButtonTxt = 'No';
    var okButtonTxt = 'Yes';
    var callback = function () {
        usuarios.id = id;
        usuarios.usuarioId = getLocalStorageNavegator("usuarioId");
        var url = "/WebMethods/usuarios.aspx/activar";
        enviarComoParametros(url, usuarios, OnSuccesActivarUsuarios);
    }
    confirm(heading, question, cancelButtonTxt, okButtonTxt, callback);
}

function OnSuccesActivarUsuarios(response) {
    if ((response.error == null ? "" : response.error) != "") {
        tipoAlerta(response.error, response.tipoAlerta, "#boxMessages");
        return;
    }

    if (response.error == '') {
        tipoAlerta('Registro activado con Exito.', 'success', "#boxMessages");
        cargarListaUsuarios();
        return;
    }
}

function getListaUsuarios(valorBuscado, registroPartida, totalAExtraer, callbackFucntion) {
    usuarios.valorBuscado = valorBuscado;
    usuarios.registroPartida = registroPartida;
    usuarios.totalAExtraer = totalAExtraer;
    usuarios.usuarioId = getLocalStorageNavegator("usuarioId");
    var url = "/WebMethods/usuario.aspx/getListaUsuarios";
    enviarComoParametros(url, usuarios, callbackFucntion);
}

function validarCampos() {

    if ($('#txtperfilIdUsuarios').val() == 0) {
        tipoAlerta('El campo perfilId no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtnombreUsuarioUsuarios').val() == "") {
        tipoAlerta('El campo nombreUsuario no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtclaveUsuarios').val() == "") {
        tipoAlerta('El campo clave no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtdocumentoIdentidadIdPersonas').val() == 0) {
        tipoAlerta('El campo documentoIdentidadId no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtmunicipioIdPersonas').val() == 0) {
        tipoAlerta('El campo municipioId no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtgrupoSanguineoIdPersonas').val() == 0) {
        tipoAlerta('El campo grupoSanguineoId no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtsexoIdPersonas').val() == 0) {
        tipoAlerta('El campo sexoId no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtmunicipioExpedicionIdPersonas').val() == 0) {
        tipoAlerta('El campo municipioExpedicionId no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtbarrioIdPersonas').val() == 0) {
        tipoAlerta('El campo barrioId no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtestaturaPersonas').val() == 0) {
        tipoAlerta('El campo estatura no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtpesoPersonas').val() == 0) {
        tipoAlerta('El campo peso no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtestadoCivilIdPersonas').val() == 0) {
        tipoAlerta('El campo estadoCivilId no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txttelefonoFijoPersonas').val() == "") {
        tipoAlerta('El campo telefonoFijo no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txttelefonoCelularPersonas').val() == "") {
        tipoAlerta('El campo telefonoCelular no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtnumeroDocumentoPersonas').val() == "") {
        tipoAlerta('El campo numeroDocumento no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtprimerNombrePersonas').val() == "") {
        tipoAlerta('El campo primerNombre no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtsegundoNombrePersonas').val() == "") {
        tipoAlerta('El campo segundoNombre no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtprimerApellidoPersonas').val() == "") {
        tipoAlerta('El campo primerApellido no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtsegundoApellidoPersonas').val() == "") {
        tipoAlerta('El campo segundoApellido no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtdirecccionPersonas').val() == "") {
        tipoAlerta('El campo direcccion no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    if ($('#txtcorreoPersonas').val() == "") {
        tipoAlerta('El campo correo no puede ir vacío.', 'warning', "#boxMessagesCrud");
        return false;
    };

    return true;
}

function cargarListaUsuarios() {
    table = $('#gridListaUsuarios');

    if ($.fn.dataTable.isDataTable(table)) {
        table.DataTable();
    }

    table.DataTable(
    {
        serverSide: true,
        ordering: false,
        searching: false,
        processing: true,
        destroy: true,
        responsive: true,
        language: {
            "processing": "Actualizando Datos"
        },
        ajax: function (data, callback, settings) {
            var out = [];
            var lstUsuarios;
            var totalRegistros = 0;
            var totalRegistrosFiltrados = 0;

            getListaUsuarios($("#txtSearch").val(), data.start, data.length, function (response) {
                if ((response.error == null ? "" : response.error) != "") {
                    tipoAlerta(response.error, response.tipoAlerta, "#boxMessages");
                    return;
                }

                if (response.error == '') {
                    lstUsuarios = eval("(" + response.getCadena + ")");
                    totalRegistros = response.totalRegistros;
                    totalRegistrosFiltrados = response.totalRegistrosFiltrados;
                    for (var i = 0; i < lstUsuarios.length; i++) {
                        var etiquetaEditar = "<a onclick='btnUsuarios_Editar(" + lstUsuarios[i].id + ")'  class='fa fa-edit'><a>";
                        var etiquetaInactivar = " <a class='fa fa-minus' onclick='btnUsuarios_Inactivar(" + lstUsuarios[i].id + ")'><a>";
                        var etiquetaActivar = " <a class='fa fa-check' onclick='btnUsuarios_Activar(" + lstUsuarios[i].id + ")'><a>";
                        out.push(["", etiquetaEditar + etiquetaInactivar + etiquetaActivar, lstUsuarios[i].nombreUsuario, lstUsuarios[i].siglaDocumentoIdentidad, lstUsuarios[i].nombreCompletoPersona, lstUsuarios[i].nombrePerfil, lstUsuarios[i].estado]);
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

function btnOnSearch() {
    cargarListaUsuarios();
}



function btnOpenHelpPerfiles(campoIdReturn, campoReturnView, campoDescripReturn) {
    help.tabla = 'Perfiles';
    help.header = 'Listado';
    help.columnas = ['id', 'nombrePerfil'];
    help.prefiltros = [];
    help.campoIdReturn = campoIdReturn;
    help.campoReturnView = campoReturnView;
    help.campoDescripReturn = campoDescripReturn;
    help.atributoReturnDescripcion = "nombrePerfil";
    help.atributoReturnView = "id";
    loadHelp('Help', cargarTabla());
}

function leaveHelpPerfiles(campoIdReturn, campoDescripReturn) {
    help.tabla = 'Perfiles';
    help.valorBuscar = $("#txtPerfilVerUsuarios").val();
    help.campoIdReturn = campoIdReturn;
    help.campoDescripReturn = campoDescripReturn;

    getHelpPerfiles();
}


function getHelpPerfiles() {
    help.usuarioId = getLocalStorageNavegator("usuarioId");
    var url = "/WebMethods/help.aspx/getHelp";
    enviarComoParametros(url, help, OnSuccesHelpPerfiles);
}

function OnSuccesHelpPerfiles(response) {
    if ((response.error == null ? "" : response.error) != "") {
        tipoAlerta(response.error, response.tipoAlerta, "#boxMessagesCrud");
        return;
    }
    if (response.error == '') {
        try {
            var object = eval("(" + response.getCadena + ")");
            $(help.campoDescripReturn).val(object.nombrePerfil);
            $(help.campoIdReturn).val(object.id);
        }
        catch (e) {
            $(help.campoDescripReturn).val('');
            $(help.campoIdReturn).val('');
        }

        return;
    }
}

