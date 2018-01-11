<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="frmUsuarios.ascx.cs" Inherits="ProyectoMolde.Forms.frmUsuarios" %>

<div class="row">
    <div class="col-sm-12">
        <div id="PanelIDUsuarios" hidden="hidden">
            <label id="lblIdUsuarios">Id</label>
            <input id="txtIdUsuarios" disabled class="form-control" />
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-12">
        <label id="lblnombreUsuarioUsuarios">nombreUsuario</label>
        <input id="txtnombreUsuarioUsuarios" class="form-control">
    </div>
</div>

<div class="row">
    <div class="col-sm-6">
        <br />

        <label id="lblperfilIdUsuarios">Perfil</label>
        <div class="form-group input-group">
            <input id="txtPerfilVerUsuarios" onblur="leaveHelp('#txtperfilIdUsuarios','#txtDescripcionPerfil')" type="text" class="form-control">
            <input id="txtperfilIdUsuarios" hidden="hidden" type="text">
            <span class="input-group-btn">
                <a id="btnHelp" onclick="btnOpenHelp('#txtperfilIdUsuarios','#txtPerfilVerUsuarios' ,'#txtDescripcionPerfil')" class="btn btn-default" type="button">
                    <i class="fa fa-search"></i>
                </a>
            </span>
        </div>
    </div>
    <div class="col-sm-6">
        <br />
        <br />
        <input id="txtDescripcionPerfil" type="text" disabled class="form-control">
    </div>
</div>

<div class="row">
    <div class="col-sm-12">
        <label id="lblclaveUsuarios">Contraseña</label>
        <input id="txtclaveUsuarios" class="form-control">
    </div>
    <div class="col-sm-12">
        <label id="lblConfirmarclaveUsuarios">Confirmar Contraseña</label>
        <input id="txtConfirmarclaveUsuarios" class="form-control">
    </div>
</div>

<div class="row">
    <div id="PanelEstadousUsuarios" hidden="hidden">
        <div class="col-sm-12">
            <label id="lblestadoUsuarios">Estado</label>
            <input id="txtestadoUsuarios" class="form-control">
        </div>
    </div>
</div>
