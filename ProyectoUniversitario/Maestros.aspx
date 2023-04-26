<%@ Page Title="" Language="C#" MasterPageFile="~/Menuprincipal.Master" AutoEventWireup="true" CodeBehind="Maestros.aspx.cs" Inherits="ProyectoUniversitario.Maestros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Maestros<br />
    <br />
    <br />
    NOMBRE:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    CURSO:&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" CssClass="button button1" runat="server" Text="Agregar" OnClick="Button1_Click" />
    <asp:Button ID="Button2" CssClass="button button2" runat ="server" Text="Borrar" />
    <asp:Button ID="Button3" CssClass="button button4" runat="server" Text="Consultar" />
    <asp:Button ID="Button4" CssClass="button button3" runat="server" Text="Modificar" />
    <br />
    <br />
</asp:Content>
