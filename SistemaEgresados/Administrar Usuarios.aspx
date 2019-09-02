<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administrar Usuarios.aspx.cs" Inherits="SistemaEgresados.Administrar_Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/> 
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <div class="row" style="justify-content:center">
     
        
    
        <div class="col-md-12">
            <br /><br /><br />

            <link href="Content/LoginStyle.css" rel="stylesheet" type="text/css" />
                <div class="wrapper fadeInDown">
                    <div id="formContent" style=" width: 900px;height: 400px; ">
 
                        <div class="fadeIn first" style="font-size: x-large">
                            Registrar Usuario
                        </div>

                        <form>
                        
                            <asp:TextBox ID="mail" placeholder="Correo" runat="server"></asp:TextBox>
                            <asp:TextBox ID="password" type="password" autocomplete="off" placeholder="Contraseña" runat="server" ></asp:TextBox> 
                   
                            <br/>
                            <asp:Label id="Label1" Text="Tipo de Usuario:" runat="server" Width="210" Font-Size="Medium"/>
                            <br/>
                            <asp:DropDownList ID="usuario" runat="server">
                                <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Administrador" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Consultor" Value="2"></asp:ListItem>
                           
                            
                            </asp:DropDownList>
                        
                        
                        </form>
                        <br/><br/><br/><br/>
                        <asp:Button ID="send" type="submit" OnClick="Register_click" runat="server" CausesValidation="False" Text="Registrar" style="background-color: #150E38; color: #FFFFFF;" />


                        
                    
                </div>
            </div>
        </div>
        <div class="modal fade" id="modalA" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="myModalLabelA"
            aria-hidden="true">
            <div class="modal-dialog modal-notify modal-danger" role="document">
            <!--Content-->
            <div class="modal-content">
                <!--Header-->
                <div class="modal-header" style ="background-color:#01C851; color: #FFFFFF; font-family: 'Arial Black';">
                <p class="heading lead">Registrado satisfactoriamente!</p>
                <a href="Default.aspx" style="color: #FFFFFF"><span class="glyphicon glyphicon-remove" style="color: #FFFFFF"></span></a>
                </div>
                <!--Body-->
                <div class="modal-body" >
                <div class="fa fa-check-circle fa-3x" style="color:#01C851;text-align:center;" href="Default.aspx" runat="server"></div>
                </div>
            </div>
            </div>
        </div>

        <div class="modal fade" id="modalB" tabindex="-1" role="dialog" aria-labelledby="myModalLabelB"
            aria-hidden="true">
            <div class="modal-dialog modal-notify modal-danger" role="document">
            <!--Content-->
            <div class="modal-content">
                <!--Header-->
                <div class="modal-header" style ="background-color:#fc3444; color: #FFFFFF; font-family: 'Arial Black';">
                <p class="heading lead">Error</p>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="white-text">&times;</span>
                </button>
                </div>
                <!--Body-->
                <div class="modal-body">
                <div class="text-center" style="font-family:'Arial Black'">
                    <p>Formato de correo incorrecto.</p>
                </div>
                </div>
            </div>
            </div>
        </div>
 
        <div class="modal fade" id="modalC" tabindex="-1" role="dialog" aria-labelledby="myModalLabelC"
            aria-hidden="true">
            <div class="modal-dialog modal-notify modal-danger" role="document">
            <!--Content-->
            <div class="modal-content">
                <!--Header-->
                <div class="modal-header" style ="background-color:#fc3444; color: #FFFFFF; font-family: 'Arial Black';">
                <p class="heading lead">Error</p>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="white-text">&times;</span>
                </button>
                </div>
                <!--Body-->
                <div class="modal-body">
                <div class="text-center" style="font-family:'Arial Black'">
                    <p>El correo ya existe esta registrado.</p>
                </div>
                </div>
            </div>
            </div>
        </div>

        <div class="modal fade" id="modalD" tabindex="-1" role="dialog" aria-labelledby="myModalLabelD"
            aria-hidden="true">
            <div class="modal-dialog modal-notify modal-danger" role="document">
            <!--Content-->
            <div class="modal-content">
                <!--Header-->
                <div class="modal-header" style ="background-color:#fc3444; color: #FFFFFF; font-family: 'Arial Black';">
                <p class="heading lead">Error</p>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="white-text">&times;</span>
                </button>
                </div>
                <!--Body-->
                <div class="modal-body">
                <div class="text-center" style="font-family:'Arial Black'">
                    <p>La contraseña debe tener al menos 8 caracteres.</p>
                </div>
                </div>
            </div>
            </div>
        </div>
    </div>

<script type="text/javascript">
        function openModalA() {
            $('#modalA').modal('show');
        }
        function openModalB() {
            $('#modalB').modal('show');
        }
        function openModalC() {
            $('#modalC').modal('show');
        }
        function openModalD() {
            $('#modalD').modal('show');
        }
        
        
</script>

</asp:Content>
