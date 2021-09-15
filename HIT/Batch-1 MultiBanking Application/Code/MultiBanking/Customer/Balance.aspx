<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="Balance.aspx.cs" Inherits="Customer_Balance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="width: 100%">
        <tr>
            <td>
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center">
                    <h1>
                    <asp:Label ID="lblvb" runat="server" style="text-align: center" Text="View Balance" Font-Size="X-Large"></asp:Label>
                </h1>
                        </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="auto-style9" style="width: 949px">
                    <asp:Label ID="lblb" runat="server" style="text-align: right" Text="SELECT BANK" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style8" style="width: 923px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddselect" runat="server" Height="24px" Width="121px" Font-Bold="True" ForeColor="Black">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                        <asp:ListItem>SBI</asp:ListItem>
                        <asp:ListItem>HDFC</asp:ListItem>
                        <asp:ListItem>ICICI</asp:ListItem>
                        <asp:ListItem>AXIS</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="center" class="auto-style9" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="auto-style9" style="width: 949px">
                    &nbsp;</td>
                <td class="auto-style8" style="width: 923px; text-align: left;">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="auto-style5" colspan="2">
                    <asp:ImageButton ID="ibsubmit" runat="server" Height="44px" ImageUrl="~/buttons/Submit.jpg" Width="90px" OnClick="ibsubmit_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" class="auto-style5" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="auto-style5" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="auto-style5" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" Height="119px" Width="949px">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center" class="auto-style5" colspan="2">
                    &nbsp;</td>
            </tr>
            </table>
            </td>
        </tr>
    </table>
</asp:Content>

