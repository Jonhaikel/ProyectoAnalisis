<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitudesAF.aspx.cs" Inherits="Proyecto.Admin_financiero.SolicitudesAF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
.solis {
    width: 80%;
    background: #ffffff;
    padding: 30px 60px 40px 40px;
    border-radius: 6px;
    box-shadow: 0 5px 10px;
    margin-left: 8%;
    align-content: center;
}

        .auto-style1 {
            text-align: center;
        }
        .auto-style4 {
            text-align: left;
            width: 185px;
        }
        .auto-style5 {
            width: 296px;
        }
        .auto-style7 {
            width: 96px;
        }
        .auto-style9 {
            background-color: #CCCCCC;
        }
        .auto-style10 {
            width: 96px;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style8 {
            height: 23px;
            width: 96px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style12 {
            text-align: right;
        }
        </style>
</head>
<body bgcolor ="Lightblue">
        <br>
    <form class="solis" runat="server">
        <h1 class="auto-style1">Solicitudes de requisicion</h1>
        <hr />
        <p>
            <strong>Consulte la solicitud que necesita </strong></p>
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
                        <asp:Button ID="Button1" runat="server" Text="Buscar" Width="102px" BackColor="#6699FF" BorderStyle="Groove" />
                    </td>
                </tr>
            </table>
        </p>
        <hr />
        <div class="auto-style1">
            <strong>Solicitudes</strong><hr />
        </div>
        <div>

            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="646px">
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>

        </div>
        <hr />
    
         <h1 class="auto-style1">Aprobacion de requisicion</h1>
        <hr />

        <div>

            <table style="width:100%;">
                <tr>
                    <td class="auto-style7"><strong>ID:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style9" Enabled="False" Width="212px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Articulo:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style9" Enabled="False" Width="213px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>Precio</strong></td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style9" Enabled="False" Width="212px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Estado:</strong></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#6699FF">
                            <asp:ListItem>Aprobado</asp:ListItem>
                            <asp:ListItem>Rechazado</asp:ListItem>
                            <asp:ListItem>Pendiente</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>

        </div>
        <div class="auto-style12">

            <asp:Button ID="Button2" runat="server" Text="Aceptar" Width="100px" BackColor="#6699FF" BorderColor="Black" BorderStyle="Groove" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        </div>
    </form>
</body>
</html>
