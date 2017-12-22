<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/frmMasterPage.Master" AutoEventWireup="true" CodeBehind="frmListaAplicacionesWeb.aspx.cs" Inherits="ProyectoMolde.Forms.OperacionesFormulario.frmListaAplicacionesWeb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenPlaceDocument" runat="server">
    <br />
    <div class="row">
        <div class="panel panel-primary">
            <div class="panel-heading">
                Listado Aplicaciones Web
            </div>
            <div class="panel-body">
                <div class=" col-sm-5 col-md-5 col-lg-1">
                    <button data-load-url='' id="btnAplicacionWeb_Nuevo" type="button" class="btn btn-default">Nuevo</button>
                </div>
            </div>
            <br />
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">

                    <table id="gridListaAplicacionesWeb" class="display" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Descripción</th>
                            </tr>
                        </thead>
                    </table>
                </div>

                <!-- /.col-lg-12 -->
            </div>
        </div>
    </div>
    <!-- /.row -->
    <div class="row">
        <div id="myModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header alert-info">
                        <button id="croosModal" type="button" class="close" >X</button>
                        <h4 id="lblTitutloPopModal" class="modal-title"></h4>
                    </div>
                    <div id="modalUrl" class="modal-body">
                        <p>Loading...</p>
                    </div>
                    <div class="modal-footer">
                        Molde 
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerScripst" runat="server">
    <script src="../Js/Forms/AplicacionesWeb.js"></script>
    <script>
        cargarListaAplicacionesWeb();
    </script>
</asp:Content>
