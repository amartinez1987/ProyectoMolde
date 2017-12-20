<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="frmAplicacionesWeb.ascx.cs" Inherits="ProyectoMolde.Forms.frmAplicacionesWeb" %>
<div class="row">
    <div class="col-sm-6">
        <asp:Label ID="lblNombreAplicacionWeb" runat="server" Text="Nombre" Width="90%"></asp:Label>
        <asp:TextBox ID="txtNombreAplicacionWeb" runat="server" Width="90%"></asp:TextBox>
    </div>
    <div class="col-sm-6">
        <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion" Width="90%"></asp:Label>
        <asp:TextBox ID="txtDescripcion" runat="server" Width="90%"></asp:TextBox>
    </div>
</div>
