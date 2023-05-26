<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pantalla1.aspx.cs" Inherits="PruebaTecnica_AnalisPro.Pantalla1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Pantalla 1
    </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 208px;
        }
        .auto-style3 {
            width: 126px;
        }
        .auto-style4 {
            width: 208px;
            height: 43px;
        }
        .auto-style5 {
            width: 126px;
            height: 43px;
        }
        .auto-style6 {
            height: 43px;
        }
        .auto-style7 {
            width: 208px;
            height: 23px;
        }
        .auto-style8 {
            width: 126px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            width: 208px;
            height: 26px;
        }
        .auto-style11 {
            width: 126px;
            height: 26px;
        }
        .auto-style12 {
            height: 26px;
        }
        .auto-style13 {
            width: 208px;
            height: 30px;
        }
        .auto-style14 {
            width: 126px;
            height: 30px;
        }
        .auto-style15 {
            height: 30px;
        }
        .auto-style16 {
            height: 30px;
            width: 193px;
        }
        .auto-style17 {
            margin-left: 132px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="font-size:x-large" align="center">
                Datos del usuario
                <br />
                <br />
            </div>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">DPI:</td>
                        <td>
                            <asp:TextBox ID="txt_dpi" runat="server" Width="195px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnAutocompletar" runat="server" OnClick="btnAutocompletar_Click" Text="Autocompletar datos" Width="150px" BackColor="#FFFF66" Height="37px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">Nombres:</td>
                        <td>
                            <asp:TextBox ID="txt_nombres" runat="server" Width="195px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">Apellidos</td>
                        <td>
                            <asp:TextBox ID="txt_apellidos" runat="server" Width="195px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10"></td>
                        <td class="auto-style11">Email:</td>
                        <td class="auto-style12">
                            <asp:TextBox ID="txt_email" runat="server" Width="195px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">No. de hijos:</td>
                        <td>
                            <asp:TextBox ID="txt_hijos" runat="server" Width="195px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">Salario base:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Q</td>
                        <td>
                            <asp:TextBox ID="txt_salario" runat="server" Width="195px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7"></td>
                        <td class="auto-style8"></td>
                        <td class="auto-style9"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style5"></td>
                        <td class="auto-style6">
                            <asp:Button ID="btnGuardar" runat="server" BackColor="#9966FF" Font-Bold="True" Height="40px" OnClick="btnGuardar_Click" Text="Guardar" Width="96px" />
                        &nbsp;&nbsp;
                            <asp:Button ID="btn_Actualizar" runat="server" BackColor="#99CCFF" Font-Bold="True" Height="40px" OnClick="btn_Actualizar_Click" Text="Actualizar" Width="93px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnEliminar" runat="server" BackColor="#FF5050" Font-Bold="True" Height="40px" OnClick="btnEliminar_Click" Text="Eliminar" Width="93px" />
&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnBuscar" runat="server" BackColor="#66FF66" Font-Bold="True" Height="40px" OnClick="btnBuscar_Click" Text="Busqueda DPI" Width="217px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" Width="467px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                                <EditRowStyle HorizontalAlign="Center" />
                                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#33276A" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    </table>
        </div>
        <br />
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRegresarInicio" runat="server" BackColor="#FF6600" CssClass="auto-style17" Font-Bold="True" Height="38px" OnClick="btnRegresarInicio_Click" Text="Regresar" Width="112px" />
        </div>
        <br />
    </form>
</body>
</html>
