<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Soli.aspx.cs" Inherits="Proyecto.Comprador.Soli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="solicitud.css" rel="stylesheet" />
     <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.24/dist/sweetalert2.all.min.js"></script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 153px;
        }
        .auto-style3 {
            background-color: #66FF99;
        }
        .auto-style4 {
            margin-left: 17px;
        }
    </style>

    <script>

        function alertme() {
            swal.fire(
                'Ingresado Correctamente',
                '',
                'success'
            )
        }

        function alertme2() {
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
<body>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
    <form class="solis" runat="server">
        <h1 class="auto-style1">Solicitud de requisicion</h1>
        <hr />
        <p>
            <strong>Llenar debidamente los campos solicitados&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="txtCedulaUsu" runat="server" Text="."></asp:Label>
&nbsp;<asp:Label ID="lblMensaje" runat="server" Text="."></asp:Label>
            </strong></p>
        <hr />
        <div>
            <strong>
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3" Height="199px">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text="Nombre de articulo:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNombreArt" runat="server" Width="301px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:TextBox ID="txtCantidad" runat="server" CssClass="auto-style4" Height="21px" Width="117px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Text="Precio:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPrecio" runat="server" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label3" runat="server" Text="Descripcion:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDescripcion" runat="server" Height="108px" TextMode="MultiLine" Width="403px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click1" Text="Guardar" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            </strong>
        </div>
    </form>
</body>
</html>
