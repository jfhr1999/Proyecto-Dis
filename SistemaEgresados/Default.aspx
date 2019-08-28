<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SistemaEgresados._Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <link href="Content/Site.css" rel="stylesheet" type="text/css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    
    <div class="row" style="justify-content:center">
        
    
        <div class="col-md-4">
            <br /><br /><br />
            <link href="Content/LoginStyle.css" rel="stylesheet" type="text/css" />
                <div class="wrapper fadeInDown">
                    <div id="formContent">
        <!-- Tabs Titles -->

        <!-- Icon -->
                        <div class="fadeIn first">
                            <img src="Images/loginIcon.JPG" id="icon" alt="User Icon" style="width: 70px; height: 65px;"/>
                        </div>

        <!-- Login Form -->
                    <form>
                        <asp:TextBox ID="LoginBox" runat="server" type="text" class="fadeIn second" name="login" placeholder="Correo"></asp:TextBox>
                        <asp:TextBox ID="passBox" type="password" autocomplete="off" runat="server" class="fadeIn third" name="login" placeholder="Contraseña"></asp:TextBox>
                        <asp:Button ID="sendBTN" type="submit" class="fadeIn fourth" onClick="login_Click" runat="server" CausesValidation="False" Text="Login" style="background-color: #150E38; color: #FFFFFF;" />

                    </form>

        <!-- Remind Passowrd -->
                    <div id="formFooter">
                         <a class="underlineHover" href="RecuperarCuenta.aspx">¿Olvido su contraseña?</a>
                    </div>

                   

                </div>
               </div>
            </div>
        </div>
        
  

</asp:Content>
