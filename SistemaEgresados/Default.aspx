﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SistemaEgresados._Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--<link href="Content/Site.css" rel="stylesheet" type="text/css" />--%>
    
    <div class="row">
        <div class="col-md-12">
        </div>
    
        <div class="col-md-4">
        </div>
    
        <div class="col-md-4">
            <link href="Content/LoginStyle.css" rel="stylesheet" type="text/css" />
                <div class="wrapper fadeInDown">
                    <div id="formContent">
        <!-- Tabs Titles -->

        <!-- Icon -->
                        <div class="fadeIn first">
                            <img src="Images/loginIcon.JPG" id="icon" alt="User Icon" style="width: 70px; height: 65px;"/>
                        </div>

        <!-- Login Form -->
                    <form>
                        <input type="text" id="login" class="fadeIn second" name="login" placeholder="Correo">
                        <input type="text" id="password" class="fadeIn third" name="login" placeholder="Contraseña">
                        <input type="submit" class="fadeIn fourth" value="Ingresar" style="background-color: #150E38">
                    </form>

        <!-- Remind Passowrd -->
                    <div id="formFooter">
                         <a class="underlineHover" href="#">¿Olvido su contraseña?</a>
                    </div>

                </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
     </div>
    

</asp:Content>
