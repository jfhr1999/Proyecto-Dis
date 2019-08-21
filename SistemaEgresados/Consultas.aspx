<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultas.aspx.cs" Inherits="SistemaEgresados.Consultas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />

 <div class="container">
    <div class="row">
        
        <div class="col-md-4" >
            <br /><br /><br /><br /><br />

            <div class="checkbox" >
                <input type="checkbox" class="custom-control-input" id="InfoGeneral"/>
                <label class="custom-control-label" for="defaultUnchecked">Información General</label>
            

                <div class="checkbox" >
                <input type="checkbox" class="custom-control-input" id="Graduación"/>
                <label class="custom-control-label" for="defaultUnchecked">Graduación</label>
                </div>

             </div>
        </div>
        <div class="col-md-4" >
            <br /><br /><br /><br /><br />

            <div class="checkbox" id="residencia">
            <input type="checkbox" class="custom-control-input" id="Residencia"/>
            <label class="custom-control-label" for="defaultUnchecked">Residencia</label>
            </div>

            <div class="checkbox" id="cursados">
            <input type="checkbox" class="custom-control-input" />
            <label class="custom-control-label" for="defaultUnchecked">Programas cursados</label>
            </div>

        </div>
        <div class="col-md-4">
            <br /><br /><br /><br /><br />

            <div class="checkbox">
            <input type="checkbox" class="custom-control-input" id="contacto"/>
            <label class="custom-control-label" for="defaultUnchecked">Contacto</label>
            </div>
            <div class="checkbox">
            <input type="checkbox" class="custom-control-input" id="interes"/>
            <label class="custom-control-label" for="defaultUnchecked">Programa de interés</label>
            </div>

        </div>




       </div>
     
 </div>
 <div class="container">

     <div style="background-color:#f5f5f5; padding:20px;">
         <ul class="nav nav-pills nav-justified"  >
             <li class="nav-item">
                 <a class="nav-link active show" id="pills-cedula" data-toggle="pill" href="#Cedula" aria-controls="Cedula" aria-selected="true">Búsqueda por cédula</a>
             </li>
             <li class="nav-item" >
                 <a class="nav-link active show" id="pills-filtro" data-toggle="pill" href="#Filtro" aria-controls="Filtro" aria-selected="false">Búsqueda por filtros</a>
             </li>
         </ul>
        <br />
         <div class="tab-content" id="pills-tabContent">
             <div class="tab-pane fade show active" id="Cedula" role="tabpanel" aria-labelledby="Cedula">
                <asp:TextBox ID="cedula" placeholder="Escriba la cédula" runat="server" ></asp:TextBox>
                <a href="#" ><span class="glyphicon glyphicon-search" style="color: #150E38"></span></a>
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
             <div class="tab-pane fade" id="Filtro" role="tabpanel" aria-labelledby="Filtro">
                 <asp:TextBox ID="TextBox2" placeholder="mail" runat="server" ></asp:TextBox>
                <a href="#" ><span class="glyphicon glyphicon-search" style="color: #150E38"></span></a>
            </div>
         </div>
    </div>
 </div>


 


</asp:Content>
