<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="Proyecto.Administrador.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="admi.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 547px;
        }
    </style>
</head>
<body bgcolor="#1de9b6">
        <div class="auto-style1">
            <h1 class="auto-style1">Registrar empleado</h1>
        </div>
    <hr />
    <p>
        <strong>Te encuentras en la seccion de registro de empleado</strong></p>
    <hr />
        <br>
    <form class="solis" runat="server">
        <h1 class="auto-style13">Nuevo empleado</h1>
        <hr />
    
         <h2 class="auto-style1">Datos personales</h2>
        <hr />

        <div>

            <table class="auto-style10">
                <tr>
                    <td class="auto-style5"><strong>Nombre:</strong></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="auto-style9" Width="212px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" CssClass="auto-style9" ErrorMessage="Debes ingresar un nombre">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Cedula:</strong></td>
                    <td>
                        <asp:TextBox ID="txtCedula" runat="server" CssClass="auto-style9" Width="213px"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCedula" CssClass="auto-style9" ErrorMessage="Debes ingresar la cedula">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCedula" CssClass="auto-style9" ErrorMessage="Formato incorrecto(9-9999-9999)" ValidationExpression="\d{1}-\d{4}-\d{4}">*</asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>
                        <asp:Label ID="Label2" runat="server" Text="Correo"></asp:Label>
                        </strong></td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="auto-style9" Width="212px"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCorreo" CssClass="auto-style19" ErrorMessage="Requiere de un correo ">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCorreo" CssClass="auto-style18" ErrorMessage="Formato de correo erroneo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Telefono:</strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtTelefono" runat="server" CssClass="auto-style9" Width="212px"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTelefono" CssClass="auto-style19" ErrorMessage="Ingrese su numero">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtTelefono" CssClass="auto-style19" ErrorMessage="Formato de telefono erroneo(9999-9999)" ValidationExpression="\d{4}-\d{4}">*</asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>
                        <asp:Label ID="Label4" runat="server" Text="Contraseña:"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtpassword" runat="server" CssClass="auto-style9" Width="212px"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpassword" CssClass="auto-style19" ErrorMessage="Debes ingresar una contraseña">*</asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>
                        <asp:Label ID="Label7" runat="server" Text="Rol:"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="tresT" runat="server" GroupName="x" Text="Administrador financiero" />
                        <br />
                        <asp:RadioButton ID="ejecutivo" runat="server" GroupName="x" Text="Administrador jefe" />
                        <br />
                        <asp:RadioButton ID="todo" runat="server" GroupName="x" Text="Comprador" />
                    </td>
                </tr>
                </table>

        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <hr />
        <div class="auto-style1">

        </div>
    </form>
</body>
</html>
