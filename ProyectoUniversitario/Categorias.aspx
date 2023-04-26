<%@ Page Title="" Language="C#" MasterPageFile="~/Menuprincipal.Master" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" Inherits="ProyectoUniversitario.Categorias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <p>
    </p>
    <p>
        codigo Categoria:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tcodigo" runat="server"></asp:TextBox>
    </p>
    <p>
        Descripcion:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tcategoria" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="bagregar" CssClass="button button1" runat="server" Text="Agregar" OnClick="bagregar_Click" />
        <asp:Button ID="Bborrar" CssClass="button button2" runat="server" Text="Borrar" OnClick="Bborrar_Click" />
        <asp:Button ID="bmodificar" CssClass="button button4" runat="server" Text="Modificar" />
        <asp:Button ID="bconsultar" CssClass="button button3" runat="server" Text="Consultar" />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
