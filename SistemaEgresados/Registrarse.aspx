<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="SistemaEgresados.Registrarse" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--/TODO: cambiar caracteres de password a invisible y alargar cuadro para meter guia de cedula -->

    <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/> 
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    
    <div class="row" style="justify-content:center">
     
        
    
        <div class="col-md-12">
            <br /><br /><br />

            <link href="Content/LoginStyle.css" rel="stylesheet" type="text/css" />
                <div class="wrapper fadeInDown">
                    <div id="formContent" style=" width: 900px;height: 300px; ">
 
                        <div class="fadeIn first" style="font-size: x-large">
                            Registrarse
                        </div>

                    <form>
                        
                        <asp:TextBox ID="mail" placeholder="Correo" runat="server"></asp:TextBox>
                        <asp:TextBox ID="password" autocomplete="off" placeholder="Contraseña" runat="server" ></asp:TextBox> <!-- /Si pongo TextMode=password se desmadra el text box -->
                        <asp:TextBox ID="ID" placeholder="Identificación" runat="server"></asp:TextBox>
                        <asp:Button ID="send" type="submit"  OnClick="Register_click" runat="server" CausesValidation="False" Text="Registrar" style="background-color: #150E38; color: #FFFFFF;" />
                    </form>
                    <div runat="server" id="pop1" class="alertBox" Visible="false">
                        <div runat="server" id="msg1"></div>
                        <button onclick="Default.aspx">Ok</button>
                    </div>
                    <div runat="server" id="pop2" class="alertBox" Visible="false">
                        <div runat="server" id="msg2"></div>
                        <button onclick="closeAlert.call(this, event)">Ok</button>
                    </div>
                    <div runat="server" id="pop3" class="alertBox" Visible="false">
                        <div runat="server" id="msg3"></div>
                        <button onclick="closeAlert.call(this, event)">Ok</button>
                    </div>
                    <div runat="server" id="pop4" class="alertBox" Visible="false">
                        <div runat="server" id="msg4"></div>
                        <button onclick="closeAlert.call(this, event)">Ok</button>
                    </div>
                    <div runat="server" id="pop5" class="alertBox" Visible="false">
                        <div runat="server" id="msg5"></div>
                        <button onclick="closeAlert.call(this, event)">Ok</button>
                    </div>
                    
      

                </div>
                </div>
            </div>
            <!-- Central Modal Medium Danger -->
            <div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
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
 
            <div class="modal fade" id="modal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2"
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
                      <p>La identificación no se encuentra registrada en el sistema.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="modal fade" id="modal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3"
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
            
            <div class="modal fade" id="modal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel4"
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
                      <p>La identificación solo debe contener numeros. Ej: 102345678</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="modal fade" id="modal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel4"
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
                      <p>Ya existe una cuenta registrada con esta identificacion.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="modal fade" id="modal1" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="myModalLabel5"
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

        </div>

<script type="text/javascript">
        function openModal2() {
            $('#modal2').modal('show');
        }
        function openModal3() {
            $('#modal3').modal('show');
        }
        function openModal4() {
            $('#modal4').modal('show');
        }
        function openModal5() {
            $('#modal5').modal('show');
        }
        function openModal6() {
            $('#modal6').modal('show');
        }
        function openModal1() {
            $('#modal1').modal('show');
        }
</script>
       

   
</asp:Content>
