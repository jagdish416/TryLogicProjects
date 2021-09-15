<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="AddBank.aspx.cs" Inherits="Customer_AddBank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td align="center" colspan="2" style="height: 110px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Enter Account Details" ForeColor="Blue"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center" style="width: 466px; font-weight: bold;">
            <asp:Label ID="lblselectbank" runat="server" Text="SelectBank" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
        </td>
        <td style="height: 43px">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="108px">
                <asp:ListItem>--SELECT--</asp:ListItem>
                <asp:ListItem>SBI</asp:ListItem>
                <asp:ListItem>HDFC</asp:ListItem>
                <asp:ListItem>ICICI</asp:ListItem>
                <asp:ListItem>AXIS</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="center" style="width: 466px; font-weight: bold;">
            <asp:Label ID="Label3" runat="server" Text="Account Number" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
        </td>
        <td style="height: 34px">
            <asp:TextBox ID="txtaccno" runat="server" Height="25px" Width="144px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" style="width: 466px; font-weight: bold;">
            <asp:Label ID="Label4" runat="server" Text="Account Holder Name" Font-Bold="True" Font-Size="Large"  ForeColor="Black"></asp:Label>
        </td>
        <td style="height: 61px">
            <asp:TextBox ID="txtacchname" runat="server" Height="26px" Width="145px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center"style="width: 466px; font-weight: bold;">
            <asp:Label ID="Label5" runat="server" Text="Customer ID" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
        </td>
        <td style="height: 46px">
            <asp:TextBox ID="txtcustid" runat="server" Height="23px" Width="144px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right"style="width: 466px">
            <asp:ImageButton ID="ImageButton2" runat="server" Height="32px" ImageUrl="~/buttons/reset.png" Width="74px" OnClick="ImageButton2_Click" />
        </td>
        <td style="height: 54px">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/buttons/upload.png" Width="90px" OnClick="ImageButton1_Click" />

        </td>
    </tr>
</table>
</asp:Content>

