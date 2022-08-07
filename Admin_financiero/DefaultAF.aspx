<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultAF.aspx.cs" Inherits="Proyecto.Admin_financiero.DefaultAF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body bgcolor ="lightblue">
 <form id="form1" runat="server">
        <h1 class="auto-style1">Menu Aprobador financiero</h1>
        <hr />
        <asp:TreeView ID="TreeView1" runat="server" Height="184px" ImageSet="XPFileExplorer" NodeIndent="15" Width="117px">
            <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
            <Nodes>
                <asp:TreeNode NavigateUrl="~/Admin_financiero/InicioAF.aspx" Target="ContenidoAF" Text="Inicio" Value="Inicio"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="https://localhost:44386/Admin_financiero/SolicitudesAF.aspx" Target="ContenidoAF" Text="Solicitudes" Value="Solicitud"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="https://localhost:44386/Admin_financiero/InformesAF.aspx" Target="ContenidoAF" Text="Informe" Value="Informe"></asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="2px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" BackColor="#B5B5B5" />
        </asp:TreeView>
    </form>
</body>
</html>
