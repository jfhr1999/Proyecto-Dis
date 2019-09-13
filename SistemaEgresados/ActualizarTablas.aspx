<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActualizarTablas.aspx.cs" Inherits="SistemaEgresados.ActualizarTablas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />


 
 <div class="container">
     <br /><br /><br /><br /><br />
     <div style="background-color:#f5f5f5; padding:20px;">

    
            
            
        <div class="row">
                        
            <div class="col">
                <br /><br /><br /><br />
                <asp:TextBox ID="cedula" placeholder="Escriba la cedula" runat="server" ></asp:TextBox>
                <asp:LinkButton runat="server" ID="search" OnClick="cargarDatos">
                    <span aria-hidden="true" class="glyphicon glyphicon-search"></span>
                </asp:LinkButton>
                <br /><br /><br /><br />
                <asp:Label id="Label5" Text="Información Básica" runat="server" Width="210" Font-Size="XLarge"/>
                <img src="Images/edit.png" height="18" width="45"/>
            </div>
        </div>
                            
                            
        <br />
        <div class="row">
            <div class="col">
                <asp:Label id="EditNombre" Text="Nombre:" runat="server" Width="100" Font-Size="Large"/>
                <asp:TextBox id="TextEditNombre" Columns="2" MaxLength="50" Text="" runat="server" Width="320" Font-Size="Large"/>  
            </div>
            <div class="col">
                <asp:Label id="EditCedula" Text="Cédula:" runat="server" Width="100" Font-Size="Large"/>
                <asp:TextBox id="TextEditCedula" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
        
            </div>
            <div class="w-100"></div>
            <br />
            <div class="col">
                <asp:Label id="EditGenero" Text="Genero:" runat="server" Width="100" Font-Size="Large"/>
                <asp:TextBox id="TextEditGenero" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
            </div>
            <div class="col">
                <asp:Label id="EditCarnet" Text="Carné:" runat="server" Width="100" Font-Size="Large"/>
                <asp:TextBox id="TextEditCarnet" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/>
            </div>

        </div>
    

        <div class="container"> 
            <div class="row">
                <div class="col">
                    <asp:Label id="Label10" Text="Información del Contacto" runat="server" Width="280" Font-Size="XLarge"/>
                    <img src="Images/edit.png" height="18" width="45"/>
                </div>
            </div>
        </div>
        <br />

        <div class="container"> 
            <div class="row">
                <div class="col">
                    <asp:Label id="EditCorreo" Text="Correo:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditCorreo" Columns="2" MaxLength="50" Text="" runat="server" Width="320" Font-Size="Large"/>  
                </div>
                <div class="col">
                    <asp:Label id="EditTelefono" Text="Teléfono:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditTelefono" Columns="2" MaxLength="50" Text="" runat="server"  Width="320" Font-Size="Large"/>
                    <br />
                    <asp:Label id="EditCel" Text="Celular:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditCel" Columns="2" MaxLength="50" Text="" runat="server"  Width="320" Font-Size="Large"/>
                </div>
            </div>
        </div>

        <hr/>

        <div class="container"> 
            <div class="row">
                <div class="col">
                    <asp:Label id="Label14" Text="Información de Residencia" runat="server" Width="290" Font-Size="XLarge"/>
                    <img src="Images/edit.png" height="18" width="45"/>
                </div>
            </div>
        </div>
        <br />

        <div class="container"> 
            <div class="row">
                <div class="col">
                    <asp:Label id="EditProvincia" Text="Provincia:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditProvincia" Columns="2" MaxLength="50" Text="" runat="server" Width="320" Font-Size="Large"/>  
                </div>
                <div class="col">
                    <asp:Label id="EditCanton" Text="Cantón:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditCanton" Columns="2" MaxLength="50" Text="" runat="server"  Width="320" Font-Size="Large"/> 
                </div>
                <div class="w-100"></div>
                <br />
                <div class="col">
                    <asp:Label id="EditDistrito" Text="Distrito:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditDistrito" Columns="2" MaxLength="50" Text="" runat="server"  Width="320" Font-Size="Large"/> 
                </div>
                <div class="col">
                    <asp:Label id="EditPais" Text="País:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditPais" Columns="2" MaxLength="50" Text="" runat="server"  Width="320" Font-Size="Large"/> 
                </div>
                <div class="w-100"></div>
                <br />
                <div class="col">
                    <asp:Label id="EditDireccion" Text="Direccion:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditDireccion" Columns="2" MaxLength="50" Text="" runat="server"  Width="320" Font-Size="Large"/> 
                </div>
            </div>
        </div>

                    
                  
        <div class="container"> 
            <div class="row">
                <div class="col">
                    <br /> <br /> <br /> <br />
                               
                    <asp:Label id="Label19" Text="Información de Graduación" runat="server" Width="290" Font-Size="XLarge"/>
                    <img src="Images/edit.png" height="18" width="45"/>
                </div>
            </div>
        </div>
        <br />
        <div class="container">
       
            <div class="row">
                <div class="col">
                    <asp:Label id="EditActa" Text="Acta:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditActa" Columns="2" MaxLength="50" Text="" runat="server" Width="320" Font-Size="Large"/>  
                </div>
                <div class="col">
                    <asp:Label id="EditPlan" Text="Plan:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditPlan" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
        
                </div>
                <div class="w-100"></div>
                <br />
                <div class="col">
                    <asp:Label id="EditCarrera" Text="Carrera:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditCarrera" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
        
                </div>
                <div class="col">
                    <asp:Label id="EditSede" Text="Sede:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditSede" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
        
                </div>
                <div class="w-100"></div>
                <br />
                <div class="col">
                    <asp:Label id="EditGrado" Text="Grado:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditGrado" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
                </div>
                <div class="col">
                    <asp:Label id="EditTitulo" Text="Titulo:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditTitulo" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/>
                </div>
                <div class="w-100"></div>
                <br />
                <div class="col">
                    <asp:Label id="EditEnfasis" Text="Énfasis:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextEditEnfasis" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/>
                    <br /><br /><br /><br /><br /><br />
                                
                    <asp:Button id="btnSend2" class="btn btn-primary btn-lg float-left" Text="Guardar Datos Editados" OnClick="editarDatos" CausesValidation="False" runat="server"></asp:Button>
                </div>
                            
                <%--<div class="col">
                    <br />
                    Fecha de graduacion
                    <asp:Calendar ID="graduacion2" runat="server"></asp:Calendar>

                </div>    --%>
            </div>
        </div>
    </div>
</div>                



</asp:Content>
