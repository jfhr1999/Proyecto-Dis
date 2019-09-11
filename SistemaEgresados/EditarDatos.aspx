<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarDatos.aspx.cs" Inherits="SistemaEgresados.EditarDatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />


    <div class="container"> 
        <div class="row">
            <div class="col">
                <br /><br /><br /><br />
                <asp:Label id="Label1" Text="Información Básica" runat="server" Width="210" Font-Size="XLarge"/>
                <img src="Images/edit.png" height="18" width="45"/>
            </div>
        </div>
    </div>
    <br />

<div class="container">    
  <div class="row">
    <div class="col">
        <asp:Label id="LabelNombre" Text="Nombre:" runat="server" Width="100" Font-Size="Large"/>
        <asp:TextBox id="TextBoxNombre" Columns="2" MaxLength="50" Text="" runat="server" Width="320" Font-Size="Large"/>  
    </div>
    <div class="col">
        <asp:Label id="LabelCedula" Text="Cédula:" runat="server" Width="100" Font-Size="Large"/>
        <asp:Label id="LabelSetCedula" Text="" runat="server" Width="200" Font-Size="Large" ForeColor="GrayText"/>
    </div>
    <div class="w-100"></div>
      <br />
    <div class="col">
        <asp:Label id="LabelGenero" Text="Genero:" runat="server" Width="100" Font-Size="Large"/>
        <asp:TextBox id="genero" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
    </div>
    <div class="col">
        <asp:Label id="LabelCarnet" Text="Carné:" runat="server" Width="100" Font-Size="Large"/>
        <asp:Label id="LabelSetCarnet" Text="" runat="server" Width="200" Font-Size="Large" ForeColor="GrayText"/>
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
            </div>
            <div class="w-100"></div>
                <br />
            <div class="col">
                <asp:Label id="LabelCelular" Text="Celular:" runat="server" Width="100" Font-Size="Large"/>
                <asp:TextBox id="TextBoxCelular" Columns="2" MaxLength="50" runat="server"  Width="320" Font-Size="Large"/> 
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
    <br />
     <asp:Button id="btn" class="btn btn-primary btn-lg float-right" Text="Guardar Datos Editados" CausesValidation="False" runat="server" onClick="editarDatos"></asp:Button>
    <br /> <br />
    <hr/>

    <div class="container"> 
        <div class="row">
            <div class="col">
                <asp:Label id="Label4" Text="Ofertas de Interés" runat="server" Width="300" Font-Size="XLarge"/>
            </div>
        </div>
    </div>
    <br />

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

     <%--Seleccionar curso (select y boton)--%>
    <form>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="form-row align-items-center">
                    <div class="col-auto">
                        <label for="sel1">Seleccione un curso:</label>
                    </div>
                    <div class="col-auto">
                        <asp:DropDownList CssClass="form-control" ID="dropDownCursos" runat="server" AppendDataBoundItems="true" OnSelectedIndexChanged="dropDownCursos_SelectedIndexChanged">
                            <asp:ListItem Text="Por favor seleccione una opción" Value="0" />
                        </asp:DropDownList>
                        <script runat="server">
                            protected void dropDownCursos_SelectedIndexChanged(object sender, EventArgs e)
                            {
                                string msg = dropDownCursos.SelectedItem.Text;
                                ScriptManager.RegisterClientScriptBlock(sender as Control, this.GetType(), "alert", "alert('" + msg + "')", true);

                                Session["IdCurso"] = dropDownCursos.SelectedValue;
                            }
                        </script>
                    </div>
                    <div class="col-auto">
                        <asp:LinkButton runat="server" class="btn btn-primary mb-2" ID="btnSearch" OnClick="mostrarInfo">Buscar</asp:LinkButton>
                    </div>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="dropDownCursos" 
                EventName="SelectedIndexChanged" />
                <%--<asp:AsyncPostBackTrigger ControlID="btnSearch"
                EventName="mostrarInfo" />--%>
            </Triggers>
        </asp:UpdatePanel>
                
    </form>
    

    <%--Cuadro con informacion del curso--%>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <div class="container bg-light">
                <div class="row">
            
                    <%--Dos columnas con informacion del curso--%>
                    <div class="col-sm-2">Código:</div>
                    <div class="col-sm-4"><asp:Label ID="lblCodigo" Text="" runat="server"></asp:Label></div>

                    <div class="col-sm-2">Nombre:</div>
                    <div class="col-sm-4"><asp:Label ID="lblNombre" Text="" runat="server"></asp:Label></div>

                    <%--Separador de filas--%>
                    <div class="w-100"></div>

                    <div class="col-sm-2">Precio:</div>
                    <div class="col-sm-4"><asp:Label ID="lblPrecio" Text="" runat="server"></asp:Label></div>

                    <div class="col-sm-2">Descripción:</div>
                    <div class="col-sm-4"><asp:Label ID="lblDescripcion" Text="" runat="server"></asp:Label></div>

                    <div class="w-100"></div>

                    <div class="col-sm-2">Periodo:</div>
                    <div class="col-sm-4"><asp:Label ID="lblPeriodo" Text="" runat="server"></asp:Label></div>

                    <div class="col-sm-2">Profesor:</div>
                    <div class="col-sm-4"><asp:Label ID="lblProfesor" Text="" runat="server"></asp:Label></div>

                    <div class="w-100"></div>

                    <div class="col-sm-2">Horario:</div>
                    <div class="col-sm-4"><asp:Label ID="lblHorario" Text="" runat="server"></asp:Label></div>

                    <div class="col-sm-2"></div>
                    <div class="col-sm-4"></div>
          
                </div>
        
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSearch" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>

        <asp:Button id="Button1" class="btn btn-primary btn-lg float-right" Text="Seleccionar Curso" CausesValidation="False" runat="server" onclick="btnSeleccionarCurso"></asp:Button>

</asp:Content>
