<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/frmCrudMaster.Master" AutoEventWireup="true" CodeBehind="frmCargueAnexos.aspx.cs" Inherits="ProyectoMolde.Forms.frmCargueAnexos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenPlaceDocument" runat="server">
      <div class="row">
        <div class="col-sm-12">
            <asp:HiddenField ID="HiddenField1" runat="server" />
        </div>        
    </div>
    <div class="row">
        <div class="col-sm-12">
            <asp:DropDownList ID="cmbTipoAnexo" runat="server">
                <asp:ListItem Value="1"></asp:ListItem>
                <asp:ListItem Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>
        
    </div>
    <div class="row">
        <div class="col-sm-12">
        <input type="file" id="File1" name="File1" runat="server" />
        </div>
    </div>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceFoot" runat="server">
</asp:Content>
