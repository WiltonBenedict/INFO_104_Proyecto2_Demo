<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acceso.aspx.cs" Inherits="INFO_104_Parcial2.asp.Acceso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <h4 class="auto-style2">acceso</h4>
        <h1 class="auto-style2">Sistema de reparaciones</h1>
    </header>
    <form action="#" class="signin-form" id="login" runat="server">
        <div class="container">
            
            <table class="auto-style1" align="center">
                <tr>
                    <td><h4>Usuario</h4></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="tUsuario" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><h4>Clave</h4></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="tClave" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="BttIngresar" runat="server" Text="Ingresar" OnClick="BttIngresar_Click" /></td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
