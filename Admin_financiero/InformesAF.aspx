<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InformesAF.aspx.cs" Inherits="Proyecto.Admin_financiero.InformesAF" %>

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

    </style>
</head>
<body bgcolor ="lightblue">
    <form class="solis" runat="server">
        <div>
            <h1 class="auto-style1">Informe de solicitudes</h1>
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
