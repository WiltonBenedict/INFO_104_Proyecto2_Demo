<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="INFO_104_Parcial2.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1{
            font-family: 'Segoe UI';
            text-align: center;
        }
        .auto-style3 {
            width: 63px;
            height: 60px;
            text-align: center;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <h2 class="auto-style1"> <img alt="base de datos" class="auto-style3" longdesc="imagen con simbolo de una base datos" src="imagenes/bd_imagen.png" /> </h2>
        <h1 class="auto-style1">INICIO</h1>
        <h4 class="auto-style1">sistema de bases de datos</h4>
    </header>

    <div class="text-center">
        <section class="layout">
          <div class="grow1">
                <a>
                <div class="text-start">
                    Usuarios</div>
                </a>
                &nbsp;<br />
                <br />
                <asp:GridView runat="server" ID="datagrid1" PageSize="10" HorizontalAlign="Center"
                    CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
                    RowStyle-CssClass="rows" AllowPaging="True" />
                <br />
                <br />
          </div>
          <div class="grow1">
                <a>
                <div class="text-start">
                    Equipos</div>
                </a>
                &nbsp;<br />
                <br />
                <asp:GridView runat="server" ID="datagrid2" PageSize="10" HorizontalAlign="Center"
                    CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
                    RowStyle-CssClass="rows" AllowPaging="True" />
                <br />
                <br />
          </div>
          <div class="grow1">
                <a>
                <div class="text-start">
                    Tecnicos</div>
                </a>
                &nbsp;<br />
                <br />
                <asp:GridView runat="server" ID="datagrid3" PageSize="10" HorizontalAlign="Center"
                    CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
                    RowStyle-CssClass="rows" AllowPaging="True" />
                <br />
                <br />
          </div>
        </section>
    </div>
    <footer >
        <h5> INFO-104. Examen Parcial 2. Wilton Benedict. 11/25/2023</h5>
    </footer>
</asp:Content>
