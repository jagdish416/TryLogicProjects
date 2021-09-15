<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2">_________________________________________________________________________________________________________________________________________________________________________________________________________-</td>
        </tr>
        <tr>
            <td style="width: 568px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 568px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 568px; text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Size="20pt" Text="Enter Registered Mobile No:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" style="text-align: center" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 568px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 568px; text-align: center">
                <asp:Button ID="Button1" runat="server" Font-Size="Large" Height="33px" OnClick="Button1_Click" Text="Submit" Width="90px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 568px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 568px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 568px; text-align: center"><asp:Label ID="Label2" runat="server" Font-Size="15pt" Text="Your Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" style="text-align: center" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 568px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">__________________________________________________________________________________________________________________________________________________________________________________________________________________-</td>
        </tr>
    </table>
</asp:Content>

