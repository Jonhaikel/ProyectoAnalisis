<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto.Inicio.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href ="login.css" rel ="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.24/dist/sweetalert2.all.min.js"></script>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 41px;
            margin-left: 520px;
        }
    </style>

    <script>
        function alertme() {
            swal.fire(
                'Contrasena incorrecta',
                '',
                'warning'
            )
        }

        function alertme2() {
            swal.fire(
                'Usuario Bloqueado',
                '',
                'warning'
            )
        }

        function alertme3() {
            swal.fire(
                'Usuario Bloqueado contacte a su administrador',
                '',
                'warning'
            )
        }

        function alertme4() {
            swal.fire(
                'Bienvenido al sistema',
                '',
                'success'
            )
        }


    </script>

</head>
<body>
        <form id="form1" runat="server">
        <h1>Iniciar de Sesión</h1>
              <p class="auto-style3">
                  <label for="Correo" class="" style="padding-right: 45px;">Correo:</label><asp:TextBox ID="txtUsuario" runat="server" Width="212px"></asp:TextBox>
              </p>
              <p class="auto-style3">
                  <label for="Contraseña" class="" style="padding-right: 15px;">Contraseña:</label>&nbsp;
                  <asp:TextBox ID="txtClave" runat="server" Width="220px"></asp:TextBox>
              </p>              
              <p style="margin-top: 25px;" class="auto-style3">
                  &nbsp;<asp:Button ID="Button1" runat="server" Height="26px" Text="Ingresar" Width="102px" OnClick="Button1_Click" />
              </p>
              <p class="auto-style3">No tienes cuenta?<a class="link" href="Re.html">Registrarse</a></p>
            <div class="auto-style4">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
          </form>

        <p>
            &nbsp;</p>

</body>
</html>
