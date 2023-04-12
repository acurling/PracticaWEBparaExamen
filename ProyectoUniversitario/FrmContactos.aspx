<%@ Page Title="" Language="C#" MasterPageFile="~/Menuprincipal.Master" AutoEventWireup="true" CodeBehind="FrmContactos.aspx.cs" Inherits="ProyectoUniversitario.FrmContactos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    CONTACTOS</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        NOMBRE ESTUDIANTE<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        CEDULA<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    
        <asp:Button ID="Button1" CssClass="button button1" runat="server" Text="Agregar" />
        <asp:Button ID="Button2" CssClass="button button2" runat="server" Text="Borrar" />
        <asp:Button ID="Button3" CssClass="button button3" runat="server" Text="Consultar" />
        <asp:Button ID="Button4" CssClass="button button4" runat="server" Text="Consultar" />


</asp:Content>
