<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultarDatos.aspx.cs" Inherits="SistemaEgresados.ConsultarDatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />


 
 <div class="container">
     <br /><br /><br /><br /><br />
     <div style="background-color:#f5f5f5; padding:20px;">

         <br />
         <div class="tab-content">
            <asp:RadioButtonList ID="Rb1" runat="server" RepeatDirection="Horizontal" >
                <asp:ListItem Value="Informacion">Información General&nbsp;&nbsp;&nbsp;</asp:ListItem>
                <asp:ListItem Value="Graduacion">Graduación&nbsp;&nbsp;&nbsp;</asp:ListItem>
                <asp:ListItem Value="Residencia">Residencia&nbsp;&nbsp;&nbsp;</asp:ListItem>
                <asp:ListItem Value="cursados">Programas cursados&nbsp;&nbsp;&nbsp;</asp:ListItem>
                <asp:ListItem Value="Contacto">Contacto&nbsp;&nbsp;&nbsp;</asp:ListItem>
                <asp:ListItem Value="interes">Programas de interés</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:LinkButton runat="server" ID="btnSearch2" OnClick="filtroExacto" text="Buscar" Font-Size="XX-Large">
                <span aria-hidden="true" class="glyphicon glyphicon-search"></span>
            </asp:LinkButton>

            <br /><br /><br />
             <asp:GridView ID="GridView2" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="No se encontraron resultados." AllowPaging="True" CssClass="table table-bordered table-light" OnPageIndexChanging="GridView2_PageIndexChanging" PageSize="10">     
                <PagerStyle CssClass="GridPager" HorizontalAlign="Right" />
             </asp:GridView>
        </div>
    </div>
 </div>


<script>
 
$(document).ready(function(){ 
    $("#Checkboxlist1_Informacion").change(function(){
        if($(this).is(":checked"))
            $("#Checkboxlist1_Graduacion, #Checkboxlist1_Residencia").attr('disabled','disabled');
        else
            $("#Checkboxlist1_Graduacion, #Checkboxlist1_Residencia").removeAttr('disabled','disabled');
    });
});

</script>

</asp:Content>