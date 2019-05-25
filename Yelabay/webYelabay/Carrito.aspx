﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="webYelabay.Carrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"/>
    <div id ="innerContainer">
        <div id ="title">
            <h1>Carrito</h1>
        </div>
        <div id="content">
            <h1>Artículos actualmente en el carrito:<asp:Label ID="CompruebaBD" runat="server"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataCarrito">
                    <Columns>
                        <asp:BoundField DataField="nombreproducto" HeaderText="nombreproducto" SortExpression="nombreproducto" />
                        <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                        <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                        <asp:BoundField DataField="precioxcantidad" HeaderText="precioxcantidad" SortExpression="precioxcantidad" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataCarrito" runat="server" ConnectionString="<%$ ConnectionStrings:miconexion %>" SelectCommand="SELECT [nombreproducto], [precio], [cantidad], [precioxcantidad] FROM [Carrito]"></asp:SqlDataSource>
            </h1>

            
            
            
            
            
            <asp:Button ID="Comprar" runat="server" Text="Confirmar Compra" OnClick="Comprar_Click"/>
            <asp:Label ID="PruebaCompra" runat="server"></asp:Label>
            
            <asp:Label ID="CosteTotal" runat="server" Text="Total: "></asp:Label>
            
        </div>
    </div>
</asp:Content>
