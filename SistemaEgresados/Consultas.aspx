<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultas.aspx.cs" Inherits="SistemaEgresados.Consultas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />


 
 <div class="container">
     <br /><br /><br /><br /><br />
     <div style="background-color:#f5f5f5; padding:20px;">

         <ul class="nav nav-pills nav-justified"  >
             <li class="nav-item">
                 <a class="nav-link active show" id="pills-cedula" data-toggle="pill" href="#AproxName" aria-controls="AproxName" aria-selected="true">Búsqueda aproximada por nombre</a>
             </li>
             <li class="nav-item" >
                 <a class="nav-link active show" id="pills-filtro" data-toggle="pill" href="#FilterID" aria-controls="FilterID" aria-selected="false">Búsqueda por ID o Carnet</a>
             </li>
         </ul>
         <br />
         <div class="tab-content">
            <div class="tab-pane fade in active" id="AproxName">
                <div class="row justify-content-md-center">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"/>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" updatemode="Conditional">
                        <Triggers>
                          <asp:AsyncPostBackTrigger controlid="btnSearch"
                                eventname="Click" />
                        </Triggers>
                        <ContentTemplate>
                        
                   
                
                            <asp:TextBox ID="nombre" placeholder="Escriba el nombre" runat="server" ></asp:TextBox>
                            <asp:LinkButton runat="server" ID="btnSearch" OnClick="filtroAproximado">
                                <span aria-hidden="true" class="glyphicon glyphicon-search"></span>
                            </asp:LinkButton>
                        
                            <br /><br /><br />
                            <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="No se encontraron resultados." AllowPaging="True" CssClass="table table-bordered table-light" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="10">     
                                <PagerStyle CssClass="GridPager" HorizontalAlign="Right" />
                            </asp:GridView>
                
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
             </div>
            
             <div class="tab-pane fade" id="FilterID">
                <div class="row justify-content-md-center">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" updatemode="Conditional">
                        <Triggers>
                            <asp:AsyncPostBackTrigger controlid="btnSearch2"
                                eventname="Click" />
                        </Triggers>
                        <ContentTemplate>
                        
                            <asp:RadioButtonList ID="Rb1" runat="server" RepeatDirection="Horizontal" >

                            <asp:ListItem Value="Informacion">Información General&nbsp;&nbsp;&nbsp;</asp:ListItem>
                            <asp:ListItem Value="Graduacion">Graduación&nbsp;&nbsp;&nbsp;</asp:ListItem>
                            <asp:ListItem Value="Residencia">Residencia&nbsp;&nbsp;&nbsp;</asp:ListItem>
                            <asp:ListItem Value="cursados">Programas cursados&nbsp;&nbsp;&nbsp;</asp:ListItem>
                            <asp:ListItem Value="Contacto">Contacto&nbsp;&nbsp;&nbsp;</asp:ListItem>
                            <asp:ListItem Value="interes">Programas de interés</asp:ListItem>
                            </asp:RadioButtonList>
                            <br />
                            <asp:TextBox ID="ID" placeholder="Buscar" runat="server" ></asp:TextBox>
                            <asp:LinkButton runat="server" ID="btnSearch2" OnClick="filtroExacto" >
                            <span aria-hidden="true" class="glyphicon glyphicon-search"></span>
                            </asp:LinkButton>
                            <asp:RadioButtonList ID="Rb2" runat="server" RepeatDirection="Horizontal" >

                            <asp:ListItem Value="Carnet">Carnet&nbsp;&nbsp;&nbsp;</asp:ListItem>
                            <asp:ListItem Value="Cedula">Cedula</asp:ListItem>
                    
                            </asp:RadioButtonList>
                            <br /><br /><br />
                            <asp:GridView ID="GridView2" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="No se encontraron resultados." AllowPaging="True" CssClass="table table-bordered table-light" OnPageIndexChanging="GridView2_PageIndexChanging" PageSize="10">     
                                <PagerStyle CssClass="GridPager" HorizontalAlign="Right" />
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
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
