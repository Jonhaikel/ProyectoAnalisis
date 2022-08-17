<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="Proyecto.Administrador.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="admi.css" rel="stylesheet" />
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.24/dist/sweetalert2.all.min.js"></script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 547px;
        }
        .auto-style3 {
            height: 34px;
        }
    </style>
      <script>

        function InsertadoCo() {
            swal.fire(
                'Se ha agregado correctamente',
                '',
                'success'
            )
        }

        function Error() {
            swal.fire(
                'Ah ocurrido un error',
                '',
                'error'
            )
        }

        function alertme3() {
            swal.fire(
                'No se ha podido registrar el pedido',
                '',
                'warning'
            )
        }

      </script>

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
                    <td class="auto-style5"><strong>Cedula:</strong></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtCedula" runat="server" CssClass="auto-style9" Width="213px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Nombre:</strong></td>
                    <td class="auto-style3">
                        <strong>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="auto-style9" Width="212px" style="margin-left: 0px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCedula" CssClass="auto-style9" ErrorMessage="Debes ingresar la cedula">*</asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Telefono:</strong></td>
                    <td>
                        <asp:TextBox ID="txtTelefono" runat="server" CssClass="auto-style9" Width="212px"></asp:TextBox>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTelefono" CssClass="auto-style19" ErrorMessage="Ingrese su numero">*</asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Direccion</strong></td>
                    <td>
                        <asp:TextBox ID="txtDireccion" runat="server" Width="208px"></asp:TextBox>
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
                    <td class="auto-style3"><strong>IdJefe</strong></td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlJefe" runat="server">
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="chkAutoJefe" runat="server" Text="Auto Jefe" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Estado</strong></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddlEstado" runat="server">
                            <asp:ListItem>Inactivo</asp:ListItem>
                            <asp:ListItem>Activo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>
                        <asp:Label ID="Label7" runat="server" Text="Rol:"></asp:Label>
                        </strong></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddlRol" runat="server">
                        </asp:DropDownList>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
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
