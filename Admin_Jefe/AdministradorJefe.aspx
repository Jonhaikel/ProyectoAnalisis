<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorJefe.aspx.cs" Inherits="Proyecto.Admin_Jefe.AdministradorJefe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


        .auto-style8 {
            width: 100%;
            height: 352px;
        }

        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
    font-family: 'Roboto', sans-serif;
}

        .auto-style10 {
            text-align: center;
            font-size: x-large;
        }

        .auto-style16 {
            height: 101px;
            font-size: large;
        }

        .auto-style15 {
            text-align: center;
            font-size: large;
        }
        
        .auto-style14 {
            margin: auto;
            text-align: right;
        }

        </style>
</head>
<body bgcolor="orange">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style10" colspan="2">Aprobador Financiero</td>
                </tr>
                <tr>
                    <td class="auto-style16" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>uno</asp:ListItem>
                        <asp:ListItem>dos</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Id Solicitud&nbsp;
                        <asp:TextBox ID="txtQueja" runat="server" Width="208px" OnTextChanged="txtQueja_TextChanged"></asp:TextBox>
                        &nbsp; Nombre solicitante&nbsp;&nbsp;
                        <asp:TextBox ID="txtDescripcion" runat="server" Width="208px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="2">
                        <br />
                        Requesiciones<br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="2">
                        <asp:GridView ID="grdEmpleados" runat="server" BackColor="#66FFFF" BorderColor="#00CC99" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style12" GridLines="Vertical" Width="96%">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="2"><strong>
                        <br />
                        &nbsp;&nbsp;
                        </strong>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style13" ForeColor="#FBE128" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
