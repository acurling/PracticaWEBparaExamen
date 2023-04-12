<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="BitacoraEmpleados.aspx.cs" Inherits="ProyectoUniversitario.BitacoraEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    Consulta:&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tnombre" runat="server" AutoPostBack="True" OnTextChanged="tnombre_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tipo Transaccion&nbsp;&nbsp;
    <asp:DropDownList ID="tipo" runat="server" AutoPostBack="True">
        <asp:ListItem>Borrado</asp:ListItem>
        <asp:ListItem>Ingreso</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Bconsulta" runat="server" OnClick="Bconsulta_Click" Text="Consultar" />
&nbsp;&nbsp;
    <asp:Button ID="Brefrescar" runat="server" OnClick="Brefrescar_Click" Text="Refrescar" />
    <br />
<br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <br />
    <br />
<br />
</asp:Content>
