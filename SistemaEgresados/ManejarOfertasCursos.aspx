<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManejarOfertasCursos.aspx.cs" Inherits="SistemaEgresados.ManejarOfertasCursos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />

<div class="container">
    <br /><br /><br /><br />
    
    <%--Label del titulo--%>
    <div class="text-center ">
        <asp:Label class="text-dark" id="LabelManejarOfertasCursos" Text="Manejar ofertas de cursos:" runat="server" Width="400" Font-Size="XX-Large"/>
    </div>
    <br /><br />

    <%--Seleccionar curso (select y boton)--%>
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

    <%--Cuadro con informacion del curso--%>
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
    <br /><br />

    <asp:Label class="text-dark" id="LabelHistorialOfertas" Text="Historial de ofertas del curso:" runat="server" Width="250" Font-Size="Large"/><span class="badge badge-dark">3</span>
    <br /><br />
    
    <%--Tabla de historial de ofertas--%>
    <table class="table table-responsive-sm table-hover table-bordered">
        <thead class="thead-dark">
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

    <br /><br />

    <asp:Label class="text-dark" id="LabelInteresados" Text="Interesados en el curso:" runat="server" Width="250" Font-Size="Large"/>
    <br /><br />

    <%--Tabla de interesados--%>
    <table class="table table-striped table-responsive-sm table-hover table-bordered">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Nombre</th>
                <th scope="col">Identificación</th>
                <th scope="col">Teléfono</th>
                <th scope="col">Correo</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>DURAN CESPEDES REBECA</td>
                <td>101230456</td>
                <td>87654321</td>
                <td>rdurances@correo.com</td>
            </tr>
            <tr>
                <td>VILLALOBOS ARIAS NADIA</td>
                <td>908760543</td>
                <td>81234567</td>
                <td>nadia_va_09@gmail.com</td>
            </tr>
      </tbody>
    </table>

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
