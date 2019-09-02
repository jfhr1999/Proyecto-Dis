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
    


    



<div class="container">
      
      <div class="row" style="justify-content:center"  >
           
          <div style="background-color:#f5f5f5; padding:100px;">
             <h1 >Registro de llamadas</h1> 
             <br />
             Digite la cédula
              <br />
               <asp:TextBox ID="cedula" runat="server" ></asp:TextBox>
                
              
                <div class="form-group">
                    <br />
                    Fecha de llamada
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    
                </div>
                Motivo
                <div class="select"> 
                   
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList_Changed">  
                    <asp:ListItem Value="Actualizar datos">Actualizar datos</asp:ListItem>  
                    <asp:ListItem Value="Ofrecer">Ofrecer cursos</asp:ListItem>  
                    <asp:ListItem Value="Otro">Otro</asp:ListItem>  
                    </asp:DropDownList>
                </div> 
                <br />
                 <asp:Panel ID="pnlTextBox" runat="server" Visible="false">
                    Codigo de curso:
                    <asp:TextBox ID="curso" runat="server" />
                </asp:Panel>
                
                <div class="input-group">
                    <br />
                    <asp:TextBox id="TextArea1" TextMode="multiline" placeholder="Comentarios..." Columns="50" Rows="5" runat="server" ></asp:TextBox>
                </div>
                <br />
                <asp:Button ID="sendBTN" type="submit" runat="server" OnClick="saveCall" CausesValidation="False" Text="Enviar" style="background-color: #150E38; color: #FFFFFF;" />
                <div class="modal fade" id="modal1" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
                  aria-hidden="true">
                  <div class="modal-dialog modal-notify modal-danger" role="document">
                    <!--Content-->
                    <div class="modal-content">
                      <!--Header-->
                      <div class="modal-header" style ="background-color:#01C851; color: #FFFFFF; font-family: 'Arial Black';">
                        <p class="heading lead">Llamada registrada!</p>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="white-text">&times;</span>
                        </button>                      

                      </div>
                      <!--Body-->
                      <div class="modal-body" >
                        <div class="fa fa-check-circle fa-3x" style="color:#01C851;text-align:center;" href="Default.aspx" runat="server"></div>
                      </div>
                    </div>
                  </div>
                </div>
                
            </div>
          

        </div>
</div>


<script type="text/javascript">
    $(function () {
        $('#datetimepicker1').datetimepicker();
        
    });
    function openModal1() {
        $('#modal1').modal('show');
    }

   
    

   
    
</script>
</asp:Content>
