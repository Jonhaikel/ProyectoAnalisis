<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Solicitudes.aspx.cs" Inherits="Proyecto.Admin_Jefe.Solicitudes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Admin_jefe.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.24/dist/sweetalert2.all.min.js"></script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style4 {
            text-align: left;
            width: 185px;
        }
        .auto-style5 {
            width: 296px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 96px;
        }
        .auto-style8 {
            height: 23px;
            width: 96px;
        }
        .auto-style9 {
            background-color: #CCCCCC;
        }
        .auto-style10 {
            width: 96px;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            margin-left: 49px;
        }
        </style>

     <script>

        function SolicitudAct() {
            swal.fire(
                'Se ha actualizado el estado de la solicitud',
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
<body bgcolor="#73e8ff">
        <br>
        <br>
        <br>
        <br>
    <form class="solis" runat="server">
        <h1 class="auto-style1">Solicitudes de requisicion</h1>
        <hr />
        <p>
            <strong>Consulte la solicitud que necesita&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="txtCedulaUsu" runat="server" Text="Label"></asp:Label>
            </strong></p>
        <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style4"><strong>ID:
                        <asp:TextBox ID="txtIdBuscar" runat="server" Width="144px" AutoPostBack="True" OnTextChanged="txtIdBuscar_TextChanged"></asp:TextBox>
                        </strong></td>
                    <td class="auto-style5"><strong>Nombre:
                        <asp:TextBox ID="txtNombreBuscar" runat="server" AutoPostBack="True" OnTextChanged="txtNombreBuscar_TextChanged"></asp:TextBox>
                        </strong></td>
                    <td>
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="102px" OnClick="btnBuscar_Click" />
                    </td>
                </tr>
            </table>
        </p>
        <hr />
        <div class="auto-style1">
            <strong>Solicitudes
            </strong><hr />
        </div>
        <div>

            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="646px">
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSelect" runat="server" AutoPostBack="True" OnCheckedChanged="chkSelect_CheckedChanged" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </div>
        <hr />
    
         <h1 class="auto-style1">Aprobacion de requisicion</h1>
        <hr />

        <div>

            <table class="auto-style13">
                <tr>
                    <td class="auto-style7"><strong>ID:</strong></td>
                    <td>
                        <asp:TextBox ID="txtIdRequi" runat="server" CssClass="auto-style9" Enabled="False" Width="212px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Articulo:</strong></td>
                    <td>
                        <asp:TextBox ID="txtArticulo" runat="server" CssClass="auto-style9" Enabled="False" Width="213px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>Precio</strong></td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtPrecioA" runat="server" CssClass="auto-style9" Enabled="False" Width="212px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Estado:</strong></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddlEstado" runat="server">
                            <asp:ListItem>Aprobado</asp:ListItem>
                            <asp:ListItem>Rechazado</asp:ListItem>
                            <asp:ListItem>Pendiente</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Descripcion</strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDescripcion" runat="server" Height="63px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                    </td>
                </tr>
            </table>

        </div>
        <div class="auto-style12">

            <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" Width="100px" OnClick="btnAceptar_Click" />

        </div>
    </form>
        <br>
        <br>
        <br>
        <br>
</body>
</html>
