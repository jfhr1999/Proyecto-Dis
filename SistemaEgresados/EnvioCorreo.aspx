<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EnvioCorreo.aspx.cs" Inherits="SistemaEgresados.EnvioCorreo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />

    <div class="container">
        <br /><br /><br /><br />
    
        <%--Label del titulo--%>
        <div class="text-center ">
            <asp:Label class="text-dark" id="LabelEnviarCorreo" Text="Enviar correo:" runat="server" Width="400" Font-Size="XX-Large"/>
        </div>
        <br /><br />
    </div>
</asp:Content>

