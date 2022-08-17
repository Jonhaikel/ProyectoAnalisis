<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="Proyecto.Administrador.Empleados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="admi.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body bgcolor ="#1de9b6">
    <form class="solis" runat="server">
        <div>
            <h1 class="auto-style1">Informe de empleados</h1>
        </div>
        <hr />
        <div>
             <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style4"><strong>ID:
                        <asp:TextBox ID="TextBox4" runat="server" Width="135px"></asp:TextBox>
                        </strong></td>
                    <td class="auto-style5"><strong>Nombre:
                        <asp:TextBox ID="TextBox5" runat="server" Width="222px"></asp:TextBox>
                        </strong></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Buscar" Width="102px" OnClick="Button1_Click" />
                    </td>
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
            <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSelect" runat="server" AutoPostBack="True" OnCheckedChanged="chkSelect_CheckedChanged" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Estado:"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="txtEstado" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtIdUsario" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCambiar" runat="server" Text="Cambiar" CssClass="auto-style1" OnClick="btnCambiar_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body></html>
