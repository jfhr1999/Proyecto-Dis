<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Llamadas.aspx.cs" Inherits="SistemaEgresados.Llamadas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />

<br />
<br />
<br />
<br />
<br />
<div class="container">
      <div class="row">
        
       
            <div class="checkbox-inline" >
            <input type="checkbox" class="custom-control-input" id="InfoGeneral"/>
            <label class="custom-control-label" for="defaultUnchecked">Información General</label>
            

            <div class="checkbox-inline" >
            <input type="checkbox" class="custom-control-input" id="Graduación"/>
            <label class="custom-control-label" for="defaultUnchecked">Graduación</label>
            </div>

            <div class="checkbox-inline">
            <input type="checkbox" class="custom-control-input" id="Residencia"/>
            <label class="custom-control-label" for="defaultUnchecked">Residencia</label>
            </div>

            <div class="checkbox-inline">
            <input type="checkbox" class="custom-control-input" id="cursados"/>
            <label class="custom-control-label" for="defaultUnchecked">Programas cursados</label>
            </div>

            <div class="checkbox-inline">
            <input type="checkbox" class="custom-control-input" id="Contacto"/>
            <label class="custom-control-label" for="defaultUnchecked">Contacto</label>
            </div>
            <div class="checkbox-inline">
            <input type="checkbox" class="custom-control-input" id="interes"/>
            <label class="custom-control-label" for="defaultUnchecked">Programa de interés</label>
            </div>
        </div>
    
    </div>

</div>
</asp:Content>
