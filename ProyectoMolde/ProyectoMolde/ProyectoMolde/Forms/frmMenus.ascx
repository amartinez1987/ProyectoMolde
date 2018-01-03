<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="frmMenus.ascx.cs" Inherits="ProyectoMolde.Forms.frmMenus" %>
<div class="row">
    <div class="col-sm-6">
        <div id="PanelIDMenus" hidden="hidden">
            <label id="lblIdMenus">Id</label>
            <input id="txtIdMenus" disabled class="form-control" />
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-6">
        <label id="lblnombreMenuMenus">Nombre Menu</label>
        <input id="txtnombreMenuMenus" class="form-control">
    </div>
</div>
<div class="row">
    <div class="col-sm-6">
        <label id="lblaplicacionWebIdMenus">Aplicación Web Asociada</label>
        <div class="form-group input-group">
            <input id="txtaplicacionWebIdMenus" type="text" class="form-control">
            <span class="input-group-btn">
                <button class="btn btn-default" type="button">
                    <i class="fa fa-search"></i>
                </button>
            </span>
        </div>
    </div>

</div>
<div class="row">
    <div class="col-sm-6">
        <label id="lblindexVisibilidadMenus">Index Visibilidad</label>
        <input id="txtindexVisibilidadMenus" type="number" class="form-control">
    </div>
</div>
<div class="row">
    <div class="col-sm-6">
        <label id="lblestadoMenus">Estado</label>
        <input id="txtestadoMenus" class="form-control">
    </div>
</div>
<div class="row">
    <div class="col-sm-6">
        <label id="lbliconMenus">Iconono</label>
        <input id="txticonMenus" class="form-control">
    </div>
</div>
