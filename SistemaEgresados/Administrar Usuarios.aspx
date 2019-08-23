<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administrar Usuarios.aspx.cs" Inherits="SistemaEgresados.Administrar_Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />


    <div class="row">
     
        <div class="col-md-4">
        </div>
    
        <div class="col-md-4">
            <br /><br /><br />

            <link href="Content/LoginStyle.css" rel="stylesheet" type="text/css" />
                <div class="wrapper fadeInDown">
                    <div id="formContent" style=" width: 900px;height: 400px; ">
 
                        <div class="fadeIn first" style="font-size: x-large">
                            Registrar Usuario
                        </div>

                    <form>
                        
                        <asp:TextBox ID="register" placeholder="Correo" runat="server"></asp:TextBox>
                        <asp:TextBox ID="password" Password = "True" placeholder="Contraseña" runat="server" ></asp:TextBox> <!-- /Si pongo TextMode=password se desmadra el text box -->
                        <asp:TextBox ID="ID" placeholder="Identificación" runat="server"></asp:TextBox>
                        <br/>
                        <asp:Label id="Label1" Text="Tipo de Usuario:" runat="server" Width="210" Font-Size="Medium"/>
                        <br/>
                        <div class="select"> 
                            <select name="slct" id="slct" style="font-size:medium">    
                                <option value="1">Usuario administrador</option> 
                                <option value="2">Usuario consultor</option>  
                            </select> 
                        </div> 
                        <br/>
                        <input type="submit" class="fadeIn fifth" value="Registrar" style="background-color: #150E38"/>
                    </form>
                </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
        </div>

</asp:Content>
