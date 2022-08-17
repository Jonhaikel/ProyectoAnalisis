<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultAJ.aspx.cs" Inherits="Proyecto.Admin_Jefe.Default" %>

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
<body bgcolor="teal">
 <form id="form1" runat="server">
        <h1 class="auto-style1">Menu de Aprobador jefe</h1>
        <hr />
        <asp:TreeView ID="TreeView1" runat="server" Height="184px" ImageSet="Contacts" NodeIndent="10" Width="117px">
            <HoverNodeStyle Font-Underline="False" />
            <Nodes>
                <asp:TreeNode Target="ContenidoAJ" Text="Inicio" Value="Inicio" NavigateUrl="~/Admin_Jefe/InicioAJ.aspx"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/Admin_Jefe/Solicitudes.aspx" Target="ContenidoAJ" Text="Solicitudes" Value="Solicitud"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/Admin_Jefe/InformeAJ.aspx" Target="ContenidoAJ" Text="Informe" Value="Informe"></asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="True" ForeColor="#5555DD" />
            <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    </form>
</body>
</html>
