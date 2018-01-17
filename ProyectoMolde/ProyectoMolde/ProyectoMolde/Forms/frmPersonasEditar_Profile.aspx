<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/frmMasterPage.Master" AutoEventWireup="true" CodeBehind="frmPersonasEditar_Profile.aspx.cs" Inherits="ProyectoMolde.Forms.frmPersonasEditar_Profile" %>

<%@ Register Src="~/Forms/frmPersonas.ascx" TagPrefix="uc1" TagName="frmPersonas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenPlaceDocument" runat="server">
    <div class="panel panel-primary">
        <div class="panel-heading">
            Datos personales
        </div>        
        <uc1:frmPersonas runat="server" ID="frmPersonas" />
        <br />
        <a id="btnPersonas_Editar" onclick="btnPersonas_EditarClick()" class="btn btn-success">Editar</a>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerScripst" runat="server">
    <script src="../Js/Forms/Personas.js"></script>
    <script>
<% string usuariosIdString = Request.QueryString["id"];
        int usuarioId = 0;
        int.TryParse(usuariosIdString, out usuarioId);
        string jsonPersonas = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(new ControlUsuarios.Entity.Controller.UsuariosController().getUsuariosId(usuarioId)); %>
        personas = <%= jsonPersonas %>
        console.log(personas);
        cargarDatos(personas);
    </script>
</asp:Content>
