<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto.Inicio.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href ="login.css" rel ="stylesheet" />

    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
    </style>

</head>
<body>
        <form id="form1" runat="server">
        <h1>Iniciar de Sesión</h1>
              <p class="auto-style3">
                  <label for="Correo" class="" style="padding-right: 45px;">Correo:</label><asp:TextBox ID="TextBox1" runat="server" Width="212px"></asp:TextBox>
              </p>
              <p class="auto-style3">
                  <label for="Contraseña" class="" style="padding-right: 15px;">Contraseña:</label>&nbsp;
                  <asp:TextBox ID="TextBox2" runat="server" Width="220px"></asp:TextBox>
              </p>              
              <p style="margin-top: 25px;" class="auto-style3">
                  &nbsp;<asp:Button ID="Button1" runat="server" Height="26px" Text="Ingresar" Width="102px" OnClick="Button1_Click" />
              </p>
              <p class="auto-style3">No tienes cuenta?<a class="link" href="Re.html">Registrarse</a></p>
          </form>

</body>
</html>
