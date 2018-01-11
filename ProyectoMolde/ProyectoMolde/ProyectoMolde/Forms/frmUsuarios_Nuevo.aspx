<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/frmCrudMaster.Master" AutoEventWireup="true" CodeBehind="frmUsuarios_Nuevo.aspx.cs" Inherits="ProyectoMolde.Forms.frmUsuarios_Nuevo" %>

<%@ Register Src="~/Forms/frmUsuarios.ascx" TagPrefix="uc1" TagName="frmUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .modal-dialog,
        .modal-content {
            /* 80% of window height */
            height: 80%;
        }

        .modal-body {
            /* 100% = dialog height, 120px = header + footer */
            max-height: calc(100% - 100px);
            overflow-y: scroll;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenPlaceDocument" runat="server">
    <uc1:frmUsuarios runat="server" ID="frmUsuarios" />
    <br />
    <div id="panelGuardar">
        </div>
        <a id="btnUsuarios_Guardar" onclick="btnUsuarios_GuardarClick()" class="btn btn-success">Guardar</a>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceFoot" runat="server">
    <script src="../Js/Forms/Usuarios.js"></script>
    <script src="../Js/frmHelp.js"></script>
</asp:Content>
