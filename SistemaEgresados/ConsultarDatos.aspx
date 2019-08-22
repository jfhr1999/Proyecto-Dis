<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultarDatos.aspx.cs" Inherits="SistemaEgresados.ConsultarDatos" %>
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
                <label class="custom-control-label" for="defaultUnchecked">Información de residencia</label>
                </div>

             </div>
        </div>
        <div class="col-md-4" >
            <br /><br /><br /><br /><br />

            <div class="checkbox" id="residencia">
            <input type="checkbox" class="custom-control-input" id="Residencia"/>
            <label class="custom-control-label" for="defaultUnchecked">Datos de graduación</label>
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
            <label class="custom-control-label" for="defaultUnchecked">Información de contacto</label>
            </div>
            <div class="checkbox">
            <input type="checkbox" class="custom-control-input" id="interes"/>
            <label class="custom-control-label" for="defaultUnchecked">Programa de interés</label>
            </div>

        </div>
       </div>
 </div>

</asp:Content>
