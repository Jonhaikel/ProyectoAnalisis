<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Solicitudes.aspx.cs" Inherits="Proyecto.Administrador.Solicitudes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="admi.css" rel="stylesheet" />
    <title></title>
</head>
<body bgcolor ="#1de9b6">
    <form class="solis" runat="server">
        <div>
            <h1 class="auto-style1">Informe de solicitudes</h1>
        </div>
        <hr />
                <div>
             <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style4"><strong>Financiero:
                        <asp:TextBox ID="txtNombreAproFina" runat="server" Width="135px" AutoPostBack="True" OnTextChanged="txtCedulaApro_TextChanged"></asp:TextBox>
                        </strong></td>
                    <td class="auto-style5"><strong>Jefe:
                        <asp:TextBox ID="txtNombreApro" runat="server" Width="222px" AutoPostBack="True" OnTextChanged="txtNombreApro_TextChanged"></asp:TextBox>
                        </strong></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Buscar" Width="102px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Cliente:</strong><asp:TextBox ID="txtCedulaCli" runat="server" AutoPostBack="True" OnTextChanged="txtCedulaCli_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </p>
        </div>
        <hr />
        <asp:GridView ID="GridView1" runat="server" CellPadding="3" Height="190px" Width="644px" GridLines="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
    </form>
</body>
</html>
