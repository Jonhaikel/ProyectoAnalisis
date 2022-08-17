<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="informe.aspx.cs" Inherits="Proyecto.Comprador.informe" %>

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
    </style>
</head>
<body>
        <br>
        <br>
    <form class="solis" runat="server">
        <asp:Label ID="txtCedulaUsu" runat="server" Text="."></asp:Label>
        <br />
        <br>
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        <br>
        <br>
        <asp:Label ID="Label1" runat="server" Text="Selecione el estado para filtrar"></asp:Label>
        <br>
        <asp:DropDownList ID="ddlEstado" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEstado_SelectedIndexChanged">
            <asp:ListItem>Todos</asp:ListItem>
            <asp:ListItem>Pendiente</asp:ListItem>
            <asp:ListItem>Aprobado</asp:ListItem>
            <asp:ListItem>Rechazado</asp:ListItem>
        </asp:DropDownList>
        <br>
        <div>
            <h1 class="auto-style1">Informe de solicitudes</h1>
        </div>
        <hr />
        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="202px" Width="860px">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </form>
</body>
</html>
