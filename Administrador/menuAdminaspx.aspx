﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menuAdminaspx.aspx.cs" Inherits="Proyecto.Administrador.menuAdminaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 320px;
        }

        .auto-style2 {
            width: 393px;
            text-align: center;
        }

        .auto-style3 {
            width: 320px;
            height: 45px;
        }

        .auto-style4 {
            width: 393px;
            height: 45px;
        }

        .auto-style5 {
            height: 45px;
        }

        table {
            text-align: center;
        }
        .auto-style6 {
            width: 393px;
            text-align: left;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</head>
<body style="width: 1027px">
    <form id="form1" runat="server">
        <div>
        </div>
        <div style="text-align: center;">
            <table style="width: 100%;" align="center">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="LbUsuario" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Width="257px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Btbuscar" runat="server" Text="Buscar" />
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="IntUser" runat="server" Height="102px" OnClick="Button1_Click" Text="Insertar Usuario" Width="187px" />
                        <br />
                        <br />
                    </td>

                    <td class="auto-style6">
                        <asp:RadioButton ID="RBcomprador" runat="server" Checked="True" GroupName="Tip_user" Text="Comprador" />
                        <br />
                        <asp:RadioButton ID="RBaprovadorJefe" runat="server" GroupName="Tip_user" Text="Aprovador jefe" />
                        <br />
                        <asp:RadioButton ID="RBaprovadorFinanciero" runat="server" GroupName="Tip_user" Text="Aprovador financiero" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Agregar" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Inactivar" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <p class="auto-style7">
        &nbsp;</p>
</body>
</html>
