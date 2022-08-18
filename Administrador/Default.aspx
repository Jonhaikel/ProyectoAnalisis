﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proyecto.Administrador.Default" %>

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
        <h1 class="auto-style1">Menu de Administracion</h1>
        <hr />
        <asp:TreeView ID="TreeView1" runat="server" Height="184px" ImageSet="Contacts" NodeIndent="10" Width="117px">
            <HoverNodeStyle Font-Underline="False" />
            <Nodes>
                <asp:TreeNode Target="Contenido" Text="Inicio" Value="Inicio" NavigateUrl="~/Administrador/Inicio.aspx"></asp:TreeNode>
<asp:TreeNode Target="Contenido" Text="Registrar" Value="Registrar" NavigateUrl="~/Administrador/Registrar.aspx"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/Administrador/Solicitudes.aspx" Target="Contenido" Text="Solicitudes" Value="Solicitud"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/Administrador/Empleados.aspx" Target="Contenido" Text="Empleados" Value="Informe"></asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="True" ForeColor="#5555DD" />
            <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    </form>
</body>
</html>
