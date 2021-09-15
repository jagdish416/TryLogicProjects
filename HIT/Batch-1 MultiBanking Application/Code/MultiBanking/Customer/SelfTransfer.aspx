<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="SelfTransfer.aspx.cs" Inherits="Customer_SelfTransfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr align="center">
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="#3333CC" Text="SELF TRANSFER"></asp:Label>
            </td>
        </tr>
        <tr align="right">
            <td style="width: 469px"></td>
            <td>
                <asp:ImageButton ID="imgback"  runat="server" Height="31px" ImageUrl="~/buttons/back.png" Width="60px" PostBackUrl="~/Customer/Transaction.aspx" />
            </td>
        </tr>
        <tr align="center">
            <td style="height: 121px; width: 469px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="black" Text="Select Bank"></asp:Label>
            </td>
            <td style="height: 121px">
                <asp:DropDownList ID="drpselect" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                    <asp:ListItem>SBH</asp:ListItem>
                    <asp:ListItem>ICICI</asp:ListItem>
                    <asp:ListItem>AXIS</asp:ListItem>
                    <asp:ListItem>HDFC</asp:ListItem>
                    <asp:ListItem>SBI</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr align="center">
            <td style="height: 121px; width: 469px">
                <asp:Label ID="lblaccno" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="black" Text="Account Number"></asp:Label>
            </td>
            <td style="height: 121px">
                <asp:TextBox ID="txtaccno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td style="height: 40px; width: 469px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="black" Text="Amount"></asp:Label>
            </td>
            <td style="height: 40px">
                <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td style="height: 33px; width: 469px">
                &nbsp;</td>
            <td style="height: 33px">
                <asp:ImageButton ID="imgselect" runat="server" Height="25px" ImageUrl="~/buttons/Submit.jpg" Width="77px" OnClick="imgselect_Click" />
            </td>
        </tr>
        <tr>
            <td style="height: 36px; width: 469px"></td>
            <td style="height: 36px"></td>
        </tr>
    </table>
</asp:Content>

