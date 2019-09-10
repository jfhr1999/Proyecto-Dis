<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManejarOfertasCursos.aspx.cs" Inherits="SistemaEgresados.ManejarOfertasCursos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />


<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>

<div class="container">
    <br /><br /><br /><br />
    
    <%--Label del titulo--%>
    <div class="text-center ">
        <asp:Label class="text-dark" id="LabelManejarOfertasCursos" Text="Manejar ofertas de cursos" runat="server" Width="400" Font-Size="XX-Large"/>
    </div>
    <br /><br />

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
                                //string msg = dropDownCursos.SelectedItem.Text;
                                //ScriptManager.RegisterClientScriptBlock(sender as Control, this.GetType(), "alert", "alert('" + msg + "')", true);

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
    
    <hr/>
    
    <asp:Label class="text-dark" id="LabelInformacionCurso" Text="Información del curso:" runat="server" Width="250" Font-Size="Large"/>
    <br /><br />

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

    <hr/>
    <br /><br />

    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
        <ContentTemplate>
            <asp:Label class="text-dark" id="LabelHistorialOfertas" Text="Historial de ofertas del curso:" runat="server" Width="250" Font-Size="Large"/><span class="badge badge-dark"><asp:Label ID="textoBadge" Text="0" runat="server"></asp:Label></span>
            <br /><br />
    
            <%--Tabla de historial de ofertas--%>
            <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="No se encontraron resultados." AllowPaging="True" CssClass="table table-responsive-sm table-hover table-bordered" HeaderStyle-CssClass="thead-dark" AutoGenerateColumns="false" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="10">     
                 <Columns>
                     <asp:BoundField HeaderText="Cédula" ItemStyle-CssClass="thead-dark" DataField="Cédula" />
                     <asp:BoundField HeaderText="Fecha" ItemStyle-CssClass="thead-dark" DataField="Fecha" />
                     <asp:BoundField HeaderText="Comentarios" ItemStyle-CssClass="thead-dark" DataField="Comentarios" />
                     <asp:BoundField HeaderText="Medio" ItemStyle-CssClass="thead-dark" DataField="Medio" />
                </Columns>
                <PagerStyle CssClass="GridPager" HorizontalAlign="Right" />
            </asp:GridView>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSearch" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
    <br /><br />

    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
        <ContentTemplate>
            <asp:Label class="text-dark" id="LabelInteresados" Text="Interesados en el curso:" runat="server" Width="250" Font-Size="Large"/><span class="badge badge-dark"><asp:Label ID="textoBadge2" Text="0" runat="server"></asp:Label></span>
            <br /><br />

            <%--Tabla de interesados--%>
            <asp:GridView ID="GridView2" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="No se encontraron resultados." AllowPaging="True" CssClass="table table-responsive-sm table-hover table-bordered" HeaderStyle-CssClass="thead-dark" AutoGenerateColumns="false" OnPageIndexChanging="GridView2_PageIndexChanging" PageSize="10">     
                    <Columns>
                        <asp:BoundField HeaderText="Cédula" ItemStyle-CssClass="thead-dark" DataField="Cedula" />
                        <asp:BoundField HeaderText="Nombre" ItemStyle-CssClass="thead-dark" DataField="Nombre" />
                        <asp:BoundField HeaderText="Correo" ItemStyle-CssClass="thead-dark" DataField="Correo" />
                        <asp:BoundField HeaderText="Teléfono casa" ItemStyle-CssClass="thead-dark" DataField="TelCasa" />
                        <asp:BoundField HeaderText="Celular" ItemStyle-CssClass="thead-dark" DataField="Celular" />
                </Columns>
                <PagerStyle CssClass="GridPager" HorizontalAlign="Right" />
            </asp:GridView>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSearch" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>

    <br /><br />

    <%--Botones de llamadas y enviar correo--%>
    <div class="row">
        <%--Columna vacía--%>
        <div class="col-12 col-sm-2 col-md-4 col-lg-6 col-xl-8"></div>
        <%--Columna boton llamadas--%>
        <div class="col-xs-6 col-sm-5 col-md-4 col-lg-3 col-xl-2">  
            <a href="#" class="btn btn-dark btn-block" role="button" aria-pressed="true" onclick="window.location.href='/Llamadas.aspx'">Registrar llamada</a>
        </div>
        <%--Columna boton enviar correo--%>
        <div class="col-xs-6 col-sm-5 col-md-4 col-lg-3 col-xl-2">
            <a href="#" class="btn btn-dark btn-block" role="button" aria-pressed="true" onclick="window.location.href='/EnvioCorreo.aspx'">Enviar correo</a>
        </div>
    </div>

</div>
</asp:Content>
