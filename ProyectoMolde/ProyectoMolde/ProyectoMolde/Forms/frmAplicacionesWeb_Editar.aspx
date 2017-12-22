<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/frmCrudMaster.Master" AutoEventWireup="true" CodeBehind="frmAplicacionesWeb_Editar.aspx.cs" Inherits="ProyectoMolde.Forms.frmAplicacionesWeb_Editar" %>
<%@ Register Src="~/Forms/frmAplicacionesWeb.ascx" TagPrefix="uc1" TagName="frmAplicacionesWeb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../Js/Forms/AplicacionesWeb.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenPlaceDocument" runat="server">
    <uc1:frmAplicacionesWeb runat="server" ID="frmAplicacionesWeb" />
    <br />
    <a id="btnAplicacionWeb_Editar" onclick="btnAplicacionWeb_EditarClick()" class="btn btn-success">Editar</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceFoot" runat="server">
</asp:Content>
