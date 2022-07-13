
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {            
            text-align: center;
        }
        .auto-style4 {
            width: 100px;
        }
         .auto-style5 {
            width: 500px;
        }
        table {
           margin: 0 auto;
        }
        </style>
 
</head>

<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <table>
            <tr>
                <td class="auto-style3" style="font-size: xx-large" colspan="4">
                    Registro de Usuario
                </td>
                <td rowspan="10" class="auto-style4">

                    <asp:Button ID="Button1" runat="server" Text="Registro" Width="105px" />

                    <br />
                    <br />

                    <asp:Button ID="Button2" runat="server" Text="Limpiar" Width="105px" />

                </td>
            </tr>
            <tr>  
                <td class="auto-style4">
                    Cedula                
                </td>
                <td>
                     <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Nombre                   
                </td>
                <td>
                     <asp:TextBox ID="TbNombre" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Apellidos                   
                </td>
                <td>
                     <asp:TextBox ID="TbApellido" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Teléfono                   
                </td>
                <td>
                     <asp:TextBox ID="TbTelefono" runat="server" Width="300px" CssClass="auto-style2" TextMode="Phone"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Dirección                   
                </td>
                <td>
                     <asp:TextBox ID="TbDireccion" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Correo Electronico                  
                </td>
                <td>
                      <asp:TextBox ID="TbCorreo" runat="server" Width="300px" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Rol                   
                </td>
                <td>
                     <asp:TextBox ID="TbRol" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>                 
                <td class="auto-style4">
                    Clave                    
                </td>
                <td>
                    <asp:TextBox ID="Tbclave" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>                
                <td class="auto-style4">
                    Jefe</td>
                <td>
                    <asp:TextBox ID="TbJefe" runat="server" Width="300px"></asp:TextBox>
                </td>    
            </tr>
           
        </table>
    <p style="text-align: center">
        &nbsp;</p>
    </form>
    </body>
</html>
 