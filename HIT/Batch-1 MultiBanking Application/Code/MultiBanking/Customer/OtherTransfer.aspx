<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="OtherTransfer.aspx.cs" Inherits="Customer_OtherTransfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr align="center">
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue" Text="TRANSFER TO OTHER ACCOUNT"></asp:Label>
            </td>
        </tr>
        <tr align="right">
            <td style="width: 456px">&nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="29px" ImageUrl="~/buttons/back.png" Width="60px" PostBackUrl="~/Customer/Transaction.aspx" />
            </td>
        </tr>
        <tr align="center">
            <td style="width: 456px; height: 29px;">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="black" Text="SELECT BANK"></asp:Label>
            </td>
            <td style="height: 29px">
                <asp:DropDownList ID="ddlsb" runat="server" Height="25px" Width="116px" OnSelectedIndexChanged="ddlsb_SelectedIndexChanged">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                    <asp:ListItem>SBI</asp:ListItem>
                    <asp:ListItem>HDFC</asp:ListItem>
                    <asp:ListItem>ICICI</asp:ListItem>
                    <asp:ListItem>AXIS</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr align="center">
            <td style="width: 456px; height: 35px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="black" Text="FROM ACCOUNT"></asp:Label>
            </td>
            <td style="height: 35px">
                <asp:TextBox ID="txtfromaccount" runat="server" ReadOnly="True" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td style="width: 456px; height: 32px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="black" Text="TO ACCOUNT"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="txttoaccount" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td style="width: 456px; height: 38px">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="black" Text="AMOUNT"></asp:Label>
            </td>
            <td style="height: 38px">
                <asp:TextBox ID="txtamount" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td style="width: 456px">
                &nbsp;</td>
            <td>
                <asp:ImageButton ID="imgsubmit" runat="server" Height="40px" ImageUrl="~/buttons/Submit.jpg" Width="82px" OnClick="imgsubmit_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 456px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

