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
            <div class="carrito">
            <h1>Artículos actualmente en el carrito:</h1><asp:Label ID="CompruebaBD" runat="server"></asp:Label>
                
           

                    <asp:GridView ID="GridCarrito" runat="server" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="nombreproducto"
                  
                OnRowUpdating="GridCarrito_RowUpdating" OnRowDeleting="GridCarrito_RowDeleting"
                
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="90%">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
 
                 <Columns>
                        <asp:BoundField DataField="nombreproducto" HeaderText="Nombre" SortExpression="nombreproducto" />
                        <asp:BoundField DataField="precio" HeaderText="Precio" SortExpression="precio" />
                        <asp:BoundField DataField="cantidad" HeaderText="Cantidad" SortExpression="cantidad" />
                        <asp:BoundField DataField="precioxcantidad" HeaderText="Total" SortExpression="precioxcantidad" />
                        
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />


            </asp:GridView>
            
            <asp:Label ID="NombreProduct" runat="server"></asp:Label>
            <asp:Label ID="PruebaCompra" runat="server"></asp:Label>
            <br />
            <div class ="precio">
                <asp:Label ID="CosteTotal" runat="server" Text="Total: "></asp:Label>
            </div>
            <br />
            <br />
            <div class ="compra1">
                <asp:Button ID="Borrar"  style="background:#249cf4" runat="server" Text="Borrar Carrito" OnClick="Borrar_Click" ForeColor="White" BorderColor="Black"/>
            </div>
            <div class ="compra">
                <asp:Button ID="Comprar"  style="background:#249cf4" runat="server" Text="Confirmar Compra" OnClick="Comprar_Click" ForeColor="White" BorderColor="Black"/>
            </div>
            
            </div>
        </div>
    </div>
</asp:Content>
