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
                 <a class="nav-link active show" id="pills-cedula" data-toggle="pill" href="#AproxName" aria-controls="AproxName" aria-selected="true">Búsqueda aproximada por nombre</a>
             </li>
             <li class="nav-item" >
                 <a class="nav-link active show" id="pills-filtro" data-toggle="pill" href="#FilterID" aria-controls="FilterID" aria-selected="false">Búsqueda por ID o Carnet</a>
             </li>
         </ul>
        <br />
         <div class="tab-content" id="pills-tabContent">
             <div class="tab-pane fade show active" id="AproxName" role="tabpanel" aria-labelledby="AproxName">
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
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="table table-bordered table-light" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="10">     
                            <PagerStyle CssClass="GridPager" HorizontalAlign="Right" />
                        </asp:GridView>
                
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

             <div class="tab-pane fade" id="FilterID" role="tabpanel" aria-labelledby="FilterID">
                 <asp:TextBox ID="ID" placeholder="mail" runat="server" ></asp:TextBox>
                <a href="#" ><span class="glyphicon glyphicon-search" style="color: #150E38"></span></a>
                 <asp:GridView ID="GridView2" runat="server"></asp:GridView>

            </div>
         </div>
    </div>
 </div>


 
<script type="text/javascript">
    function visible1() {
        var v1 = document.getElementById('nombre');
        v1.style.visibility = 'True';
        var v2 = document.getElementById('btnSearch');
        v2.style.visibility = 'True';
    }
</script>

</asp:Content>
