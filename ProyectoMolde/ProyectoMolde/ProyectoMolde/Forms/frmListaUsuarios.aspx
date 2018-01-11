<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/frmMasterPage.Master" AutoEventWireup="true" CodeBehind="frmListaUsuarios.aspx.cs" Inherits="ProyectoMolde.Forms.frmListaUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenPlaceDocument" runat="server">
    <br />
    <div class="row">
        <div class="panel panel-primary">
            <div class="panel-heading">
                Listado Usuarios
            </div>
            <div class="panel-body">
                <div class="col-sm-5 col-md-5 col-lg-1">
                    <button id="btnUsuarios_Nuevo" onclick="btnUsuarios_NuevoClick()" type="button" class="btn btn-default">Nuevo</button>
                </div>
            </div>
            <br />
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <table id="gridListaUsuarios" class="display" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>#</th>  
                                <th>#</th>                                
                                <th>Nombre Usuario</th>
                                <th>Tipo Documento</th>                                
                                <th>Nombre Completo</th>                                                                
                                <th>Perfil</th>
                                <th>Estado</th>
                            </tr>
                        </thead>
                    </table>
                </div>
                <!-- /.col-lg-12 -->
            </div>
        </div>
    </div>
    <!-- /.row -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerScripst" runat="server">
    <script src="../Js/Forms/Usuarios.js"></script>
    <script>
        cargarListaUsuarios();
    </script>
</asp:Content>
