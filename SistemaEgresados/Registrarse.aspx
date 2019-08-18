<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="SistemaEgresados.Registrarse" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--/TODO: cambiar caracteres de password a invisible y alargar cuadro para meter guia de cedula -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    
    <div class="row">
        <div class="col-md-12">
        </div>
     
        <div class="col-md-4">
        </div>
    
        <div class="col-md-4">
            
            <link href="Content/LoginStyle.css" rel="stylesheet" type="text/css" />
                <div class="wrapper fadeInDown">
                    <div id="formContent" style=" width: 900px;height: 300px; ">
 
                        <div class="fadeIn first" style="font-size: x-large">
                            Registrarse
                        </div>

                    <form>
                        
                        <asp:TextBox ID="register" placeholder="Correo" runat="server"></asp:TextBox>
                        <asp:TextBox ID="password" Password = "True" placeholder="Contraseña" runat="server" ></asp:TextBox> <!-- /Si pongo TextMode=password se desmadra el text box -->
                        <asp:TextBox ID="ID" placeholder="Identificación" runat="server"></asp:TextBox>
                        <input type="submit" class="fadeIn fifth" value="Registrarse" style="background-color: #150E38"/>
                    </form>

      

                </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
        </div>
   
</asp:Content>
