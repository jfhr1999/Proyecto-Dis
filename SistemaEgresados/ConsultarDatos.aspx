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
            <a href="#" class="btn btn-primary float-right" role="button" aria-pressed="true">Generar Cuadro</a>
        </div>
      <hr/> 
    </div>
   </div>

    <hr/> 
<div class="container">
    <div class="p-3 mb-2 bg-light text-dark border">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="label" >
                        <asp:Label class="text-dark" id="Label3" Text="Nombre:" runat="server" Width="100" Font-Size="Large"/>
                        <asp:Label class="text-black-50" id="Label4" Text="Natalia Rodriguez Arias" runat="server" Width="100" Font-Size="Large"/>
                    </div>
                </div>
            <div class="col">
                 <div class="label" >
                    <asp:Label class="text-dark" id="Label5" Text="Género:" runat="server" Width="100" Font-Size="Large"/>
                    <asp:Label class="text-black-50" id="Label6" Text="Femenino" runat="server" Width="100" Font-Size="Large"/>
                </div>
            </div>
            <br /><br /><br />
            <div class="w-100"></div>
                <div class="col">
                    <div class="label" >
                        <asp:Label class="text-dark" id="Label1" Text="Cédula:" runat="server" Width="100" Font-Size="Large"/>
                        <asp:Label class="text-black-50" id="Label2" Text="112233445" runat="server" Width="100" Font-Size="Large"/>
                    </div>
                </div>
                <div class="col">
                    <div class="col">
                    <div class="label" >
                        <asp:Label class="text-dark" id="Label7" Text="Pasaporte:" runat="server" Width="100" Font-Size="Large"/>
                        <asp:Label class="text-black-50" id="Label8" Text="-" runat="server" Width="100" Font-Size="Large"/>
                    </div>
                </div>
              </div>
            <br /><br /><br />
            <div class="w-100"></div>
                <div class="col">
                    <div class="label" >
                        <asp:Label class="text-dark" id="Label9" Text="Carné:" runat="server" Width="100" Font-Size="Large"/>
                        <asp:Label class="text-black-50" id="Label10" Text="2017112233" runat="server" Width="100" Font-Size="Large"/>
                    </div>
                </div>
            <br /><br /><br />
            <div class="w-100"></div>
                <div class="col">
                    <div class="label" >
                        <asp:Label class="text-dark" id="Label11" Text="Correo:" runat="server" Width="100" Font-Size="Large"/>
                        <asp:Label class="text-black-50" id="Label12" Text="a123@gmail.com" runat="server" Width="100" Font-Size="Large"/>
                    </div>
                </div>
                <div class="col">
                    <div class="col">
                    <div class="label" >
                        <asp:Label class="text-dark" id="Label13" Text="Teléfono:" runat="server" Width="100" Font-Size="Large"/>
                        <asp:Label class="text-black-50" id="Label14" Text="83838383" runat="server" Width="100" Font-Size="Large"/>
                    </div>
                </div>
              </div>
              </div>  
        </div>
    </div>
</div>
  
    <br />

<div class="container">
    <a href="#" class="btn btn-primary float-right" role="button" aria-pressed="true">Descargar en PDF</a>
</div>

</asp:Content>
