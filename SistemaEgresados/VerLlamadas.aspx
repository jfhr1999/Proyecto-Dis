<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerLlamadas.aspx.cs" Inherits="SistemaEgresados.VerLlamadas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />


    <div class="container">
        <%--<br /><br /><br /><br /><br />--%>
        <div class="row" style="justify-content:center;background:#f5f5f5">
            <h1>Visualizacion de Llamadas</h1>
            <div class="col-md-12" style="justify-content:center">
                <asp:TextBox ID="cedula" runat="server" ></asp:TextBox>
                <asp:LinkButton runat="server" ID="btnSearch" OnClick="verLlamadas" >
                    <span aria-hidden="true" class="glyphicon glyphicon-search"></span>
                </asp:LinkButton>
                <br /><br /><br />
                <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="No se encontraron resultados." AllowPaging="True" CssClass="table table-bordered table-light" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="10">     
                    <PagerStyle CssClass="GridPager" HorizontalAlign="Right" />
                </asp:GridView>

            </div>



        </div>



    </div>
</asp:Content>
