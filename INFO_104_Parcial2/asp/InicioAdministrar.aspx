<%@ Page Title="" Language="C#" MasterPageFile="~/menuAdministar.Master" AutoEventWireup="true" CodeBehind="InicioAdministrar.aspx.cs" Inherits="INFO_104_Parcial2.asp.InicioAdministrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="text-center">
          <section class="layout">
            <div class="grow1">
                  <a>
                  <div class="text-start">
                      Reparos</div>
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
                      Detalles de reparos</div>
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
                      Asignaciones</div>
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
        <h5> INFO-104. Proyecto 2</h5>
        <asp:Label ID="lCodigo" runat="server" Text=""></asp:Label>
        <asp:Label ID="lNombre" runat="server" Text=""></asp:Label>
        <asp:Label ID="lUsuario" runat="server" Text=""></asp:Label>
    </footer>
</asp:Content>
