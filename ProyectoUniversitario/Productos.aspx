<%@ Page Title="" Language="C#" MasterPageFile="~/Menuprincipal.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="ProyectoUniversitario.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        CATALOGO DE ARTICULOS</p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <p>
        &nbsp;</p>
    <p>
        CODIGO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        DESCRIPCION:&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        PRECIO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>
        CATEGORIA:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SQLCATEGORIA" DataTextField="NOMBRE" DataValueField="NOMBRE" Height="28px" Width="127px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SQLCATEGORIA" runat="server" ConnectionString="<%$ ConnectionStrings:uhbanco %>" SelectCommand="SELECT [NOMBRE] FROM [CATEGORIA]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

     <asp:Button ID="bagregar" CssClass=" button button1" runat="server" Text="Agregar" OnClick="bagregar_Click" />
        <asp:Button ID="Bborrar" CssClass="button button2" runat="server" Text="Borrar" />
        <asp:Button ID="bmodificar" CssClass="button button4" runat="server" Text="Modificar" />
        <asp:Button ID="bconsultar" CssClass="button button3" runat="server" Text="Consultar" />
</asp:Content>
