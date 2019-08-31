<%@ Page Title="" Language="C#" Async="true" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Llamadas.aspx.cs" Inherits="SistemaEgresados.Llamadas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet"/> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.css" rel="stylesheet"/>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.2/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
    


    

<br />
<br />
<br />
<br />
<br />
<div class="container">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A4CEA1_graduadosmgpConnectionString %>" SelectCommand="SELECT Contacto$.* FROM Contacto$"></asp:SqlDataSource>
     <h1 align="center">Registro de llamadas</h1>  
     <hr />
      <div class="row" style="justify-content:center"  >
           
          <div style="background-color:#f5f5f5; padding:130px;">
             Digite la cédula
              data source=SQL5045.site4now.net;initial catalog=DB_A4CEA1_graduadosmgp;user id=DB_A4CEA1_graduadosmgp_admin;password=*****
              <br />
               <asp:TextBox ID="cedula" runat="server" ></asp:TextBox>
              
               
                <div class="form-group">
                     <br />
                    Fecha de llamada
                    <div class='input-group date' id='datetimepicker1'>
                        <input type='text' class="form-control" />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
              Motivo
               <div class="select"> 
                   
                    <select name="slct" id="slct"> 
                        
                        <option value="1">Actualizar datos</option> 
                        <option value="2">Ofrecer cursos</option> 
                        <option value="3">Otro</option> 
                         
                    </select> 
                </div> 
                
                <div class="input-group">
                    <br />
                      <textarea class="form-control" placeholder="Comentarios..."></textarea>
                </div>
                <br />
                <asp:Button ID="sendBTN" class="btn btn-dark" type="submit"  OnClick="test" runat="server" CausesValidation="False" Text="Enviar" style="background-color: #150E38; color: #FFFFFF;" />
                
                
            </div>
          

        </div>
</div>


<script type="text/javascript">
    $(function () {
        $('#datetimepicker1').datetimepicker();
    });
</script>
</asp:Content>
