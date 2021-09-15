<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="ReportAdmin.aspx.cs" Inherits="User_ReportAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="lblrep" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Red" Text="REPORT"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center">
                    <asp:Label ID="lblun" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#990000" Text="User Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtun" runat="server" Font-Size="Large" ForeColor="Black" OnTextChanged="txtun_TextChanged" style="text-align: left"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center">
                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#990000" Text="Message"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtmsg" runat="server" Font-Size="Large" ForeColor="Black" TextMode="MultiLine" Width="387px" OnTextChanged="txtmsg_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center">&nbsp;</td>
                <td style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center" colspan="2">
                    <asp:Button ID="btnsub" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text="SUBMIT" OnClick="btnsub_Click" />
                </td>
            </tr>
        </table>
</asp:Content>

