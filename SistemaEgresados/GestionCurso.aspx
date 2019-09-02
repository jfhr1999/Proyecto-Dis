<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GestionCurso.aspx.cs" Inherits="SistemaEgresados.GestionCurso" %>
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
                    <div id="formContent" style=" width: 900px;height: 600px; ">
 
                        <div class="fadeIn first" style="font-size: x-large">
                            Agregar curso
                        </div>

                        <form>
                        
                            <asp:TextBox ID="codigo" placeholder="Codigo de curso" runat="server"></asp:TextBox>
                            
                            <asp:TextBox ID="nombre" placeholder="Nombre de curso" runat="server"></asp:TextBox>
                            
                            <asp:TextBox ID="precio" placeholder="Precio" runat="server"></asp:TextBox>
                            
                            <div class="input-group">
                    
                                <asp:TextBox id="comentarios" TextMode="multiline" placeholder="Comentarios..." Columns="50" Rows="5" runat="server" ></asp:TextBox>
                            </div>
                            
                            <asp:TextBox ID="periodo" placeholder="Periodo" runat="server"></asp:TextBox>
                            
                            <asp:TextBox ID="tipo" placeholder="Tipo de curso" runat="server"></asp:TextBox>
                            
                            <asp:Button ID="Button1" type="submit" runat="server"  onClick="addCurso" CausesValidation="False" Text="Registrar" style="background-color: #150E38; color: #FFFFFF;" />
                        </form>
                        
                    </div>
                </div>
            </div>
            <div class="modal fade" id="modal1" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
                aria-hidden="true">
                <div class="modal-dialog modal-notify modal-danger" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <div class="modal-header" style ="background-color:#01C851; color: #FFFFFF; font-family: 'Arial Black';">
                    <p class="heading lead">Curso registrado!</p>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true" class="white-text">&times;</span>
                    </button>                      

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
    
    function openModal1() {
        $('#modal1').modal('show');
    }  
    
</script>       
</asp:Content>
