﻿<%@ Page Title="" Language="C#" MasterPageFile="~/menuAdministar.Master" AutoEventWireup="true" CodeBehind="Reparos.aspx.cs" Inherits="INFO_104_Parcial2.asp.Reparos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <h1>Reparos</h1>
    </header>

    <div class="text-center">
        <br />
        <br />
        <asp:GridView runat="server" ID="datagrid" PageSize="10" HorizontalAlign="Center"
            CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
            RowStyle-CssClass="rows" AllowPaging="True" />
        <br />
        <br />
    </div>

     <div>
        <table class="w-50" align="center">
            <tr>
                <td>Codigo</td>
                <td><asp:TextBox ID="tCodigo" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Codigo Equipo</td>
                <td><asp:DropDownList ID="dropEquipo" runat="server" DataSourceID="SQLequipoID" DataTextField="equipoID" DataValueField="equipoID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SQLequipoID" runat="server" ConnectionString="<%$ ConnectionStrings:conexion %>" SelectCommand="SELECT [equipoID] FROM [equipos]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Fecha Solicitud</td>
                <td><asp:TextBox ID="tFecha" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Estado</td>
                <td><asp:TextBox ID="tEstado" runat="server"></asp:TextBox></td>
            </tr>
        </table>
    </div>

     <div>
        <table class="w-50" align="center">
            <tr align="center">
                <td ><asp:Button ID="BttAgregar" runat="server" Text="Agregar" CssClass="button button1"  OnClick="BttAgregar_Click"  /></td>
                <td ><asp:Button ID="BttBorrar" runat="server" Text="Borrar" CssClass="button button2"  OnClick="BttBorrar_Click"  /></td>
                <td ><asp:Button ID="BttConsultar" runat="server" Text="Consultar" CssClass="button button3"  OnClick="BttConsultar_Click" /></td>
                <td ><asp:Button ID="BttModificar" runat="server" Text="Modificar" CssClass="button button4" OnClick="BttModificar_Click"  /></td>
            </tr>
            <tr align="center">
                <td >&nbsp;</td>
                <td colspan="2" >&nbsp;</td>
                <td >&nbsp;</td>
            </tr>
        </table>
    </div>

    <div class="text-center">
        <asp:Button ID="BttLlenar" runat="server" Text="Refrescar" CssClass="button button5" OnClick="BttLlenar_Click" />
        <br />
        <br />
    </div>
</asp:Content>
