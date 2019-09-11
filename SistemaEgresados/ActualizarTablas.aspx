<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActualizarTablas.aspx.cs" Inherits="SistemaEgresados.ActualizarTablas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />


 
 <div class="container">
     <br /><br /><br /><br /><br />
     <div style="background-color:#f5f5f5; padding:20px;">

         <ul class="nav nav-pills nav-justified"  >
             <li class="nav-item">
                 <a class="nav-link active show" id="pills-agregarEstudiante" data-toggle="pill" href="#add" aria-controls="add" aria-selected="true">Agregar Estudiante</a>
             </li>
             <li class="nav-item" >
                 <a class="nav-link active show" id="pills-editarEstudiante" data-toggle="pill" href="#edit" aria-controls="edit" aria-selected="false">Editar Estudiante</a>
             </li>
         </ul>
         <br />
         <div class="tab-content">
            <div class="tab-pane fade in active" id="add">
                <div class="row justify-content-md-center">
                    <div class="container">   
                        
                        <div class="row">
                        <div class="col">
                        <asp:Label id="LabelNombre" Text="Nombre:" runat="server" Width="100" Font-Size="Large"/>
                        <asp:TextBox id="TextBoxNombre" Columns="2" MaxLength="50" Text="" runat="server" Width="320" Font-Size="Large"/>  
                        </div>
                        <div class="col">
                        <asp:Label id="LabelCedula" Text="Cédula:" runat="server" Width="100" Font-Size="Large"/>
                        <asp:TextBox id="TextBoxCedula" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
        
                        </div>
                        <div class="w-100"></div>
                        <br />
                        <div class="col">
                        <asp:Label id="LabelGenero" Text="Genero:" runat="server" Width="100" Font-Size="Large"/>
                        <asp:TextBox id="genero" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
                        </div>
                        <div class="col">
                        <asp:Label id="LabelCarnet" Text="Carné:" runat="server" Width="100" Font-Size="Large"/>
                        <asp:TextBox id="TextBoxCarnet" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/>
                        </div>

                        </div>
                        </div>

                        <hr/>

                        <div class="container"> 
                        <div class="row">
                            <div class="col">
                                <asp:Label id="Label2" Text="Información del Contacto" runat="server" Width="280" Font-Size="XLarge"/>
                                <img src="Images/edit.png" height="18" width="45"/>
                            </div>
                        </div>
                        </div>
                        <br />

                        <div class="container"> 
                        <div class="row">
                            <div class="col">
                                <asp:Label id="LabelCorreo" Text="Correo:" runat="server" Width="100" Font-Size="Large"/>
                                <asp:TextBox id="TextBoxCorreo" Columns="2" MaxLength="50" Text="" runat="server" Width="320" Font-Size="Large"/>  
                            </div>
                            <div class="col">
                                <asp:Label id="LabelTelefono" Text="Teléfono:" runat="server" Width="100" Font-Size="Large"/>
                                <asp:TextBox id="TextBoxTelefono" Columns="2" MaxLength="50" Text="" runat="server"  Width="320" Font-Size="Large"/>
                                <asp:Label id="LabelCelular" Text="Teléfono:" runat="server" Width="100" Font-Size="Large"/>
                                <asp:TextBox id="TextBox1" Columns="2" MaxLength="50" Text="" runat="server"  Width="320" Font-Size="Large"/>
                            </div>
                        </div>
                        </div>

                        <hr/>

                        <div class="container"> 
                        <div class="row">
                            <div class="col">
                                <asp:Label id="Label3" Text="Información de Residencia" runat="server" Width="290" Font-Size="XLarge"/>
                                <img src="Images/edit.png" height="18" width="45"/>
                            </div>
                        </div>
                        </div>
                        <br />

                        <div class="container"> 
                        <div class="row">
                            <div class="col">
                                <asp:Label id="LabelProvincia" Text="Provincia:" runat="server" Width="100" Font-Size="Large"/>
                                <asp:TextBox id="TextBoxProvincia" Columns="2" MaxLength="50" Text="" runat="server" Width="320" Font-Size="Large"/>  
                            </div>
                            <div class="col">
                                <asp:Label id="LabelCanton" Text="Cantón:" runat="server" Width="100" Font-Size="Large"/>
                                <asp:TextBox id="TextBoxCanton" Columns="2" MaxLength="50" Text="" runat="server"  Width="320" Font-Size="Large"/> 
                            </div>
                            <div class="w-100"></div>
                                <br />
                            <div class="col">
                                <asp:Label id="LabelDistrito" Text="Distrito:" runat="server" Width="100" Font-Size="Large"/>
                                <asp:TextBox id="TextBoxDistrito" Columns="2" MaxLength="50" Text="" runat="server"  Width="320" Font-Size="Large"/> 
                            </div>
                            <div class="col">
                                <asp:Label id="LabelPais" Text="País:" runat="server" Width="100" Font-Size="Large"/>
                                <asp:TextBox id="TextBoxPais" Columns="2" MaxLength="50" Text="" runat="server"  Width="320" Font-Size="Large"/> 
                            </div>
                        </div>
                        </div>

                        <hr/>
                    
                    </div>
                </div>
            
                <div class="tab-pane fade" id="edit">
                    <div class="row justify-content-md-center">
                    
                     </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
