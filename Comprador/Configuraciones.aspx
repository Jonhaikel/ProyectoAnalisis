<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Configuraciones.aspx.cs" Inherits="Proyecto.Comprador.Configuraciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="solicitud.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            background-color: #00CC99;
        }
    </style>
</head>
<body>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
    <form class="solis" runat="server">
        <div class="auto-style1">
            <h1>Editar perfil</h1>
        </div>
        <hr />
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3" Height="194px">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                        </strong></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" Width="278px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><strong>
                        <asp:Label ID="Label2" runat="server" Text="Apellido:"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="278px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><strong>
                        <asp:Label ID="Label3" runat="server" Text="Contraseña:"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="278px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Actualizar" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
