<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Soli.aspx.cs" Inherits="Proyecto.Comprador.Soli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="solicitud.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 153px;
        }
        .auto-style3 {
            background-color: #66FF99;
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
        <h1 class="auto-style1">Solicitud de requisicion</h1>
        <hr />
        <p>
            <strong>Llenar debidamente los campos solicitados</strong></p>
        <hr />
        <div>
            <strong>
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3" Height="199px">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text="Nombre de articulo:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="301px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Text="Precio:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label3" runat="server" Text="Descripcion:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="108px" TextMode="MultiLine" Width="403px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            </strong>
        </div>
    </form>
</body>
</html>
