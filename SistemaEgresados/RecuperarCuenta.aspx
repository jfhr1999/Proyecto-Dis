<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecuperarCuenta.aspx.cs" Inherits="SistemaEgresados.RecuperarCuenta" %>
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
 
                        <div class="fadeIn first" ">
                            <h1>Recuperar cuenta</h1>
                            <h2 style="color: #000000">Por favor, introduzca el correo asociado a su cuenta. Si la cuenta existe, se le enviarán instrucciones.</h2>
                        </div>
                    <br />
                    <form>
                        
                        <asp:TextBox ID="mail" placeholder="Correo" runat="server"></asp:TextBox>
                        <asp:Button ID="send" type="submit"  OnClick="confirmarOlvidar_onClick" runat="server" CausesValidation="False" Text="Enviar" style="background-color: #150E38; color: #FFFFFF;" />
                    </form>
                    
                    
                    </div>
                    
      

                </div>
                </div>
            </div>
           


</asp:Content>
