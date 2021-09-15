<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 89%;
        }
        .auto-style2 {
        }
        .auto-style3 {
        }
        .auto-style4 {
            width: 280px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="Red" Text="Recover Password" Font-Bold="True" Font-Italic="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblfp" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Medium" Text=" Your User Name" ForeColor="Blue"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtfp" runat="server" Font-Size="Medium" ForeColor="Black" Height="22px" OnTextChanged="txtfp_TextChanged" Width="183px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblfp0" runat="server" Font-Bold="False" Font-Italic="True" Font-Size="Medium" Text=" Your Password" ForeColor="Blue"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtpass" runat="server" Height="23px" Width="183px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red" Text="OK" OnClick="Button2_Click" Height="28px" Width="77px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

