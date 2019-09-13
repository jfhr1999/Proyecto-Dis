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
         
        <div class="tab-content">
            <div class="tab-pane fade in active" id="add">
                <div class="row justify-content-md-center">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"/>
                    

                            <div class="container">   
                        
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
                                        <asp:TextBox id="text_acta" Columns="2" MaxLength="50" Text="" runat="server" Width="320" Font-Size="Large"/>  
                                    </div>
                                    <div class="col">
                                        <asp:Label id="Plan" Text="Plan:" runat="server" Width="100" Font-Size="Large"/>
                                        <asp:TextBox id="text_plan" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
        
                                    </div>
                                    <div class="w-100"></div>
                                    <br />
                                    <div class="col">
                                        <asp:Label id="Carrera" Text="Carrera:" runat="server" Width="100" Font-Size="Large"/>
                                        <asp:TextBox id="text_carrera" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
        
                                    </div>
                                    <div class="col">
                                        <asp:Label id="Sede" Text="Sede:" runat="server" Width="100" Font-Size="Large"/>
                                        <asp:TextBox id="text_Sede" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
        
                                    </div>
                                    <div class="w-100"></div>
                                    <br />
                                    <div class="col">
                                        <asp:Label id="Grado" Text="Grado:" runat="server" Width="100" Font-Size="Large"/>
                                        <asp:TextBox id="text_grado" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
                                    </div>
                                    <div class="col">
                                        <asp:Label id="Titulo" Text="Titulo:" runat="server" Width="100" Font-Size="Large"/>
                                        <asp:TextBox id="text_titulo" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/>
                                    </div>
                                    <div class="w-100"></div>
                                    <br />
                                    <div class="col">
                                        <asp:Label id="Enfasis" Text="Énfasis:" runat="server" Width="100" Font-Size="Large"/>
                                        <asp:TextBox id="text_enfasis" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/>
                                        <br /><br /><br /><br /><br /><br />
                                
                                        <asp:Button id="btnSend" class="btn btn-primary btn-lg float-left" Text="Agregar Estudiante" CausesValidation="False" runat="server"></asp:Button>
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
        
    
            
            <div class="tab-pane fade" id="edit">
                <div class="row justify-content-md-center">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" updatemode="Conditional">
                            <Triggers>
                              <asp:AsyncPostBackTrigger controlid="search"
                                    eventname="Click" />
                            </Triggers>
                            <ContentTemplate>
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
                            </div>

                            <hr/>

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
                                
                                        <asp:Button id="btnSend2" class="btn btn-primary btn-lg float-left" Text="Guardar Datos Editados" CausesValidation="False" runat="server"></asp:Button>
                                    </div>
                            
                                    <div class="col">
                                        <br />
                                        Fecha de graduacion
                                        <asp:Calendar ID="graduacion2" runat="server"></asp:Calendar>

                                    </div>
                                
                        
                            
                    
                                </div>

                            </div>
                        </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
</div>



</asp:Content>
