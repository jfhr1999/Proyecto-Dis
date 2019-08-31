<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManejarOfertasCursos.aspx.cs" Inherits="SistemaEgresados.ManejarOfertasCursos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />

<div class="container">
    <br /><br /><br /><br />
    <div class="text-center ">
        <asp:Label class="text-dark" id="LabelManejarOfertasCursos" Text="Manejar ofertas de cursos:" runat="server" Width="400" Font-Size="XX-Large"/>
    </div>
    <br /><br />
    <form">
        <div class="form-row align-items-center">
            <div class="col-auto">
                <label for="sel1">Seleccione un curso:</label>
            </div>
            <div class="col-auto">
                <select class="form-control" id="sel1">
                    <option>Project - Básico</option>
                    <option>Project - Avanzado</option>
                    <option>Bases de datos</option>
                    <option>Python</option>
                </select>
            </div>
            <div class="col-auto">
                <button type="submit" class="btn btn-primary mb-2">Buscar</button>
            </div>
        </div>

                
    </form>
    <hr/>
    <asp:Label class="text-dark" id="LabelInformacionCurso" Text="Información del curso:" runat="server" Width="250" Font-Size="Large"/>
    <br /><br />
    <div class="container bg-light">
        <div class="row">
            
            <div class="col-sm-2">Curso:</div>
            <div class="col-sm-4">Project - Básico</div>

            <div class="col-sm-2">Precio:</div>
            <div class="col-sm-4">$150</div>


            <div class="w-100"></div>

            <div class="col-sm-2">Profesor:</div>
            <div class="col-sm-4">GOMEZ SAENZ LUIS ADRIAN</div>

            <div class="col-sm-2">Horario:</div>
            <div class="col-sm-4">M-V 17:00-19:50</div>

          
        </div>
        
    </div>

    <hr/>

    <asp:Label class="text-dark" id="LabelHistorialOfertas" Text="Historial de ofertas:" runat="server" Width="250" Font-Size="Large"/><span class="badge badge-dark">3</span>
    <br /><br />
    <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Tipo de oferta</th>
      <th scope="col">Fecha</th>
      <th scope="col">Identificación</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Llamada</td>
      <td>02/05/2019</td>
      <td>101230456</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Llamada</td>
      <td>15/06/2019</td>
      <td>109870654</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Correo</td>
      <td>16/06/2019</td>
      <td>Masivo</td>
    </tr>
  </tbody>
</table>
</div>
</asp:Content>
