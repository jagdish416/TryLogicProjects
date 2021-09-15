<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddVillage.aspx.cs" Inherits="Admin_AddVillage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 91%;
            height: 29px;
        }
        .auto-style2 {
            width: 146px;
        }
        .auto-style5 {
            height: 17px;
            text-align: center;
        }
        .auto-style7 {
            height: 19px;
        }
        .auto-style8 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="Red" Text="Admins Add Village"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblss" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#990000" Text="Select State"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlss" runat="server" Font-Size="Large" ForeColor="#0033CC" OnSelectedIndexChanged="ddlss_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>--Select--</asp:ListItem>
                         <asp:ListItem>AndhraPradesh</asp:ListItem>
                        <asp:ListItem>Telangana</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="lblsd" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#990000" Text="Select District"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlsd" runat="server" Font-Size="Large" ForeColor="Blue" OnSelectedIndexChanged="ddlsd_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="4">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="lblsv" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#990000" Text="Select Village"></asp:Label>
&nbsp;&nbsp;
                                <asp:DropDownList ID="ddlsv" runat="server" Font-Size="Large" ForeColor="#0033CC" OnSelectedIndexChanged="ddlsv_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: center">
                    <asp:TextBox ID="txt1" runat="server" Font-Size="Large" ForeColor="#0033CC" TextMode="MultiLine" Width="521px" OnTextChanged="txt1_TextChanged" Height="95px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="4" style="text-align: center">
                    <asp:Button ID="btnsub" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red" Text="Submit" OnClick="btnsub_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
        </table>
</asp:Content>

