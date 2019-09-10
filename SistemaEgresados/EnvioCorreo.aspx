<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EnvioCorreo.aspx.cs" Inherits="SistemaEgresados.EnvioCorreo" %>

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
            <asp:Label class="text-dark" id="LabelEnviarCorreo" Text="Enviar correo" runat="server" Width="400" Font-Size="XX-Large"/>
        </div>
        <br /><br />

        <asp:Label class="text-dark" id="LabelSeleccionRemitentes" Text="Seleccione las personas a las que desea enviar el correo:" runat="server" Width="250" Font-Size="Large"/>
        <br /><br />

        <%--Tabla con info de correo de interesados--%>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="No se encontraron resultados." AllowPaging="True" CssClass="table table-responsive-sm table-hover table-bordered" HeaderStyle-CssClass="thead-dark" AutoGenerateColumns="false" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="10">     
                    <Columns>
                        <asp:TemplateField HeaderText="Seleccionar" ItemStyle-CssClass="thead-dark">  
                            <EditItemTemplate>  
                                <asp:CheckBox ID="CheckBox1" runat="server" />  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:CheckBox ID="CheckBox1" runat="server" />  
                            </ItemTemplate>  
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Nombre" ItemStyle-CssClass="thead-dark" DataField="Nombre" />
                        <asp:BoundField HeaderText="Cédula" ItemStyle-CssClass="thead-dark" DataField="Cedula" />
                        <asp:BoundField HeaderText="Correo" ItemStyle-CssClass="thead-dark" DataField="Correo" />
                    </Columns>
                    <PagerStyle CssClass="GridPager" HorizontalAlign="Right" />
                </asp:GridView>
            </ContentTemplate>
            <Triggers>
            </Triggers>
        </asp:UpdatePanel>

        <hr/>

        <br /><br />

        <form>
            
            <div class="form-group">
                <label for="TextBoxAsuntoCorreo">Indique el asunto del correo (favor no utilizar asteriscos):</label>
                <asp:TextBox ID="TextBoxAsuntoCorreo" runat="server" TextMode="MultiLine" CssClass="form-control col-12" Text="" Rows="1">
                </asp:TextBox>
            </div>

            <%--<hr />--%>

            <div class="form-group">
                <label for="TextBoxCuerpoCorreo">Indique el cuerpo del correo (favor no utilizar asteriscos y no modificar el campo **NOMBRE**):</label>
                <asp:TextBox ID="TextBoxCuerpoCorreo" runat="server" TextMode="MultiLine" CssClass="form-control col-12" Text="" Rows="15">
                </asp:TextBox>
            </div>
            <asp:LinkButton runat="server" class="btn btn-primary mb-2" ID="btnEnviar" OnClick="enviarCorreo">Enviar correo</asp:LinkButton>
        </form>
                    
             
    </div>
</asp:Content>

