<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="frmOpcionesMaestroAnexos.ascx.cs" Inherits="ProyectoMolde.Forms.frmOpcionesMaestroAnexos" %>
<div class="row">
    <div class="col-sm-12">
        <div id="PanelIDOpcionesMaestroAnexos" hidden="hidden">
            <label id="lblIdOpcionesMaestroAnexos">Id</label>
            <input id="txtIdOpcionesMaestroAnexos" disabled class="form-control" />
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-12">
        <label id="lblnombreOpcionOpcionesMaestroAnexos">Nombre Opción</label>
        <input id="txtnombreOpcionOpcionesMaestroAnexos" class="form-control">
    </div>
</div>

<div class="row">
    <div class="col-sm-6">
        <label id="lblmaestroAnexosIdOpcionesMaestroAnexos">Maestro Anexos</label>
        <div class="form-group input-group">
            <input id="txtmaestroAnexosVerOpcionesMaestroAnexos" onblur="leaveHelp('#txtmaestroAnexosIdOpcionesMaestroAnexos','#txtDescripcionMaestroAnexos')" type="text" class="form-control">
            <input id="txtmaestroAnexosIdOpcionesMaestroAnexos" type="text" hidden="hidden">
            <span class="input-group-btn">
                <a id="btnHelp" onclick="btnOpenHelp('#txtmaestroAnexosIdOpcionesMaestroAnexos','#txtmaestroAnexosVerOpcionesMaestroAnexos' ,'#txtDescripcionMaestroAnexos')" class="btn btn-default">
                    <i class="fa fa-search"></i>
                </a>
            </span>
        </div>
    </div>
    <div class="col-sm-6">
        <br />
        <br />
        <input id="txtDescripcionMaestroAnexos" type="text" disabled class="form-control">
    </div>
</div>
