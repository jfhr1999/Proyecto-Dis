<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarEstudiante.aspx.cs" Inherits="SistemaEgresados.AgregarEstudiante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.css" rel="stylesheet"/>

<div class="container">
     <br /><br /><br /><br /><br />
     <div style="background-color:#f5f5f5; padding:20px;">           
                        
        <div class="row">
            <div class="col">
                <br /><br /><br /><br />
                <asp:Label id="Label1" Text="Información Básica" runat="server" Width="210" Font-Size="XLarge"/>
                <img src="Images/edit.png" height="18" width="45"/>
            </div>
        </div>
                      

                       
                        
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
                <asp:TextBox id="TextBoxGenero" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
            </div>
            <div class="col">
                <asp:Label id="LabelCarnet" Text="Carné:" runat="server" Width="100" Font-Size="Large"/>
                <asp:TextBox id="TextBoxCarnet" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/>
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
                    <br />
                    <asp:Label id="LabelCelular" Text="Celular:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextBoxCel" Columns="2" MaxLength="50" Text="" runat="server"  Width="320" Font-Size="Large"/>
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
                <div class="w-100"></div>
                <br />
                <div class="col">
                    <asp:Label id="LabelDireccion" Text="Direccion:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextBoxDireccion" Columns="2" MaxLength="50" Text="" runat="server"  Width="320" Font-Size="Large"/> 
                </div>
                                    
                                    
            </div>
        </div>

                    
                  
        <div class="container"> 
            <div class="row">
                <div class="col">
                    <br /> <br /> <br /> <br />
                               
                    <asp:Label id="Label4" Text="Información de Graduación" runat="server" Width="290" Font-Size="XLarge"/>
                    <img src="Images/edit.png" height="18" width="45"/>
                </div>
            </div>
        </div>
        <br />
        <div class="container">
       
            <div class="row">
                <div class="col">
                    <asp:Label id="Acta" Text="Acta:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextBoxActa" Columns="2" MaxLength="50" Text="" runat="server" Width="320" Font-Size="Large"/>  
                </div>
                <div class="col">
                    <asp:Label id="Plan" Text="Plan:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextBoxPlan" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
        
                </div>
                <div class="w-100"></div>
                <br />
                <div class="col">
                    <asp:Label id="Carrera" Text="Carrera:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextBoxCarrera" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
        
                </div>
                <div class="col">
                    <asp:Label id="Sede" Text="Sede:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextBoxSede" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
        
                </div>
                <div class="w-100"></div>
                <br />
                <div class="col">
                    <asp:Label id="Grado" Text="Grado:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextBoxGrado" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
                </div>
                <div class="col">
                    <asp:Label id="Titulo" Text="Titulo:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextBoxTitulo" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/>
                </div>
                <div class="w-100"></div>
                <br />
                <div class="col">
                    <asp:Label id="Enfasis" Text="Énfasis:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:TextBox id="TextBoxEnfasis" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/>
                    <br /><br /><br /><br /><br /><br />
                                
                    <asp:Button id="btnSend" class="btn btn-primary btn-lg float-left" Text="Agregar Estudiante" CausesValidation="False" runat="server" OnClick="agregarEstudiante"></asp:Button>
                </div>
                            

                            
                <div class="col">
                    <br />
                    Fecha de graduacion
                    <asp:Calendar ID="graduacion1" runat="server"></asp:Calendar>

                </div>
                <div class="w-100"></div>
                <br />
                        
                              
                    
            </div>
        </div>
    </div>
</div>

</asp:Content>
