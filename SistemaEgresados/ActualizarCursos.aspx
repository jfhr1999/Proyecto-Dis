<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActualizarCursos.aspx.cs" Inherits="SistemaEgresados.ActualizarCursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />


 
 <div class="container">
     <%--<br /><br /><br /><br /><br />--%>
     <div style="background-color:#f5f5f5; padding:20px;">

         <ul class="nav nav-pills nav-justified"  >
             <li class="nav-item">
                 <a class="nav-link active show" id="pills-agregarCurso" data-toggle="pill" href="#add" aria-controls="add" aria-selected="true">Agregar Curso</a>
             </li>
             <li class="nav-item" >
                 <a class="nav-link active show" id="pills-editarCurso" data-toggle="pill" href="#edit" aria-controls="edit" aria-selected="false">Editar Curso</a>
             </li>
         </ul>
         
        <div class="tab-content">

            <%--Primer tab--%>
            <div class="tab-pane fade in active" id="add">
                
                <div class="row justify-content-md-center">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"/>
                        <div class="container">   
                            
                            <br /><br />
                            <%--Textboxes para agregar un nuevo curso--%>
                            <div class="row">
                                <asp:Label id="LabelCodigo" CssClass="col-2" Text="Código:" runat="server"/>
                                <asp:TextBox id="TextBoxCodigo" CssClass="form-control col-3" Text="" runat="server"/> 
                                <div class="col-1"></div>

                                <asp:Label id="LabelNombre" CssClass="col-2" Text="Nombre:" runat="server"/>
                                <asp:TextBox id="TextBoxNombre" CssClass="form-control col-3" Text="" runat="server"/>  
                                <div class="col-1"></div>
                                
                                <div class="w-100"></div>
                                <br />

                                <asp:Label id="LabelPrecio" CssClass="col-2" Text="Precio:" runat="server"/>
                                <asp:TextBox id="TextBoxPrecio" CssClass="form-control col-3" Text="" runat="server"/> 
                                <div class="col-1"></div>

                                <asp:Label id="LabelDescripcion" CssClass="col-2" Text="Descripción:" runat="server"/>
                                <asp:TextBox id="TextBoxDescripcion" CssClass="form-control col-3" Text="" runat="server"/>
                                <div class="col-1"></div>

                                <div class="w-100"></div>
                                <br />

                                <asp:Label id="LabelPeriodo" CssClass="col-2" Text="Periodo:" runat="server"/>
                                <asp:TextBox id="TextBoxPeriodo" CssClass="form-control col-3" Text="" runat="server"/> 
                                <div class="col-1"></div>

                                <asp:Label id="LabelProfesor" CssClass="col-2" Text="Profesor:" runat="server"/>
                                <asp:TextBox id="TextBoxProfesor" CssClass="form-control col-3" Text="" runat="server"/>  
                                <div class="col-1"></div>

                                <div class="w-100"></div>
                                <br />


                                <asp:Label id="LabelHorario" Text="Horario:" CssClass="col-2" runat="server"/>
                                <asp:TextBox id="TextBoxHorario" CssClass="form-control col-3" Text="" runat="server"/> 
                                <div class="col-1"></div>

                                <div class="col-2"></div>
                                <div class="col-4"></div>

                            </div>
                            <br /><br />
                            <div class="row">
                                <div class="col-auto">
                                    <asp:LinkButton runat="server" class="btn btn-primary mb-2" ID="btnAgregarCurso" OnClick="agregarCurso">Agregar curso</asp:LinkButton>
                                </div>
                            </div>

                        </div>
                </div>

            </div>          
            
            <%--Segundo tab--%>
            <div class="tab-pane fade" id="edit">
                <div class="container">
                    <div class="row justify-content-md-center">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" updatemode="Conditional">
                                <Triggers>
                                  <asp:AsyncPostBackTrigger controlid="btnSearch"
                                        eventname="Click" />
                                </Triggers>
                                <ContentTemplate>

                                    <br /><br /><br /><br />

                                    <%--Dropdown con los cursos--%>
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-row align-content-center">
                                                <div class="col-auto">
                                                    <label for="sel1">Seleccione un curso:</label>
                                                </div>
                                                <div class="col-auto">
                                                    <asp:DropDownList CssClass="form-control" ID="dropDownCursos" runat="server" AppendDataBoundItems="true">
                                                        <asp:ListItem Text="Por favor seleccione una opción" Value="0" />
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-auto">
                                                    <asp:LinkButton runat="server" class="btn btn-primary mb-2" ID="btnSearch" OnClick="mostrarInfoCurso">Seleccionar</asp:LinkButton>
                                                </div>
                                            </div>
                                
                                        </div>
                                    </div>

                                    <br /><br />

                                    <%--Textboxes con info del curso seleccionado--%>
                                    <div class="row">
                                        <asp:Label id="EditCodigo" CssClass="col-2" Text="Código:" runat="server"/>
                                        <asp:TextBox id="TextEditCodigo" CssClass="form-control col-3" Text="" runat="server"/> 
                                        <div class="col-1"></div>

                                        <asp:Label id="EditNombre" CssClass="col-2" Text="Nombre:" runat="server"/>
                                        <asp:TextBox id="TextEditNombre" CssClass="form-control col-3" Text="" runat="server"/>  
                                        <div class="col-1"></div>

                                        <div class="w-100"></div>


                                        <asp:Label id="EditPrecio" CssClass="col-2" Text="Precio:" runat="server"/>
                                        <asp:TextBox id="TextEditPrecio" CssClass="form-control col-3" Text="" MaxLength="50" runat="server"/> 
                                        <div class="col-1"></div>

                                        <asp:Label id="EditDescripcion" CssClass="col-2" Text="Descripción:" runat="server"/>
                                        <asp:TextBox id="TextEditDescripcion" CssClass="form-control col-3" Text="" runat="server"/>
                                        <div class="col-1"></div>

                                        <div class="w-100"></div>


                                        <asp:Label id="EditPeriodo" CssClass="col-2" Text="Periodo:" runat="server"/>
                                        <asp:TextBox id="TextEditPeriodo" CssClass="form-control col-3" Text="" runat="server"/>  
                                        <div class="col-1"></div>

                                        <asp:Label id="EditProfesor" CssClass="col-2" Text="Profesor:" runat="server"/>
                                        <asp:TextBox id="TextEditProfesor" CssClass="form-control col-3" Text="" runat="server"/>
                                        <div class="col-1"></div>

                                        <div class="w-100"></div>

                                        <asp:Label id="EditHorario" CssClass="col-2" Text="Horario:" runat="server"/>
                                        <asp:TextBox id="TextEditHorario" CssClass="form-control col-3" Text="" runat="server"/>
                                        <div class="col-1"></div>

                                        <div class="col-2"></div>
                                        <div class="col-4"></div>


                                    </div>
                                    <br /><br />
                                    <div class= "row">
                                        <div class="col-auto">
                                            <asp:LinkButton runat="server" class="btn btn-primary mb-2" ID="btnEditarCurso" OnClick="editarCurso">Editar curso</asp:LinkButton>
                                        </div>
                                        
                                    </div>

                                </div>
                                </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>



</asp:Content>
