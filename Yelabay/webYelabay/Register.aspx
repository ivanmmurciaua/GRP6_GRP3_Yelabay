﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="webYelabay.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id ="innerContainer">
        <div id ="title">
            <h1>Regístrate</h1>
        </div>
        <div class="invisibleRow">
            <div class="invisibleCol">
                Nombre de usuario</div>
            <div class="invisibleCol">
                <asp:TextBox ID="TextBoxNick" runat="server"></asp:TextBox>
            </div>
            <asp:Label ID="LabelUsuario" runat="server" CssClass="ErrorMessage" Text="El campo nombre de usuario es obligatorio"></asp:Label>
        </div>
        <div class="invisibleRow">
            <div class="invisibleCol">
                Correo Electrónico:</div>
            <div class="invisibleCol">
                <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
            </div>
            <asp:Label ID="LabelErrorEmail" runat="server" CssClass="ErrorMessage" Text="El campo correo  es obligatorio"></asp:Label>
        </div>
        <div class="invisibleRow">
            <div class="invisibleCol">
                Contraseña:</div>
            <div class="invisibleCol">
                <asp:TextBox ID="TextBoxPassword" runat="server" type="password"></asp:TextBox>
            </div>
            <asp:Label ID="LabelErrorPassword" runat="server" CssClass="ErrorMessage" Text="La contraseña no es segura"></asp:Label>
        </div>
        <div class="invisibleRow">
            <div class="invisibleCol">
                Confirmar Contraseña:</div>
            <div class="invisibleCol">
                <asp:TextBox ID="TextBoxRepassword" runat="server" type="password"></asp:TextBox>
            </div>
            <asp:Label ID="LabelErrorPassworddiferente" runat="server" CssClass="ErrorMessage" Text="Las contraseñas no coinciden"></asp:Label>
            <asp:Label ID="nocoinciden" runat="server" CssClass="ErrorMessage" Text="Las dos contraseñas han de ser iguales"></asp:Label>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Registrarse" OnClick="Button1_Click1" />
    </div>
</asp:Content>
