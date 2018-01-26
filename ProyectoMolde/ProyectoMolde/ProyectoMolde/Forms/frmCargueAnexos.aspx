<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/frmCrudMaster.Master" AutoEventWireup="true" CodeBehind="frmCargueAnexos.aspx.cs" Inherits="ProyectoMolde.Forms.frmCargueAnexos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenPlaceDocument" runat="server">
    <input type="file" id="File1" name="File1" runat="server" />
    <br>
    <input type="submit" id="Submit1" value="Upload" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceFoot" runat="server">
</asp:Content>
