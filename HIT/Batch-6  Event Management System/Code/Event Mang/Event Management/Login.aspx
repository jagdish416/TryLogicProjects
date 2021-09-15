<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
   
<table style="width: 100%">
    <tr>
        <td style="width: 314px">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; width: 117px">
            &nbsp;</td>
        <td style="width: 184px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 314px">
            &nbsp;</td>
        <td colspan="2" 
            style="text-align: center; font-family: 'Segoe Print'; font-size: large; color: #0066FF">
            <strong>Login Page</strong></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 314px">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; width: 117px">
            &nbsp;</td>
        <td style="width: 184px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 314px">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; width: 117px">
            Select Type</td>
        <td style="width: 184px">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="34px" Width="167px">
                <asp:ListItem>--Select Type--</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>User</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="*" Font-Bold="True" 
                Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 314px">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; width: 117px">
            &nbsp;</td>
        <td style="width: 184px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 314px">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; width: 117px">
            Username</td>
        <td style="width: 184px">
            <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="165px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="True" 
                Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 314px">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; width: 117px">
            &nbsp;</td>
        <td style="width: 184px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 314px">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; width: 117px">
            Password</td>
        <td style="width: 184px">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="23px" 
                Width="162px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="*" Font-Bold="True" 
                Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 314px">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; width: 117px">
            &nbsp;</td>
        <td style="width: 184px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 314px">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; width: 117px">
            &nbsp;</td>
        <td style="width: 184px">
            <asp:Button ID="Button1" runat="server" 
                style="font-weight: 700; color: #3366FF" Text="Login" Width="163px" 
                onclick="Button1_Click" />
            &nbsp;</td>
        <td>
            click here for
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Italic="True" 
                NavigateUrl="~/Regi.aspx">New User</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td style="width: 314px">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; width: 117px">
            &nbsp;</td>
        <td style="width: 184px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 314px; height: 21px;">
        </td>
        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; width: 117px; height: 21px;">
        </td>
        <td style="height: 21px; width: 184px">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ForgotPwd.aspx">Forgot Password ?</asp:HyperLink>
        </td>
        <td style="height: 21px">
        </td>
    </tr>
    <tr>
        <td style="width: 314px">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; width: 117px">
            &nbsp;</td>
        <td style="width: 184px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 314px">
            &nbsp;</td>
        <td style="font-family: 'Times New Roman', Times, serif; font-size: medium; width: 117px">
            &nbsp;</td>
        <td style="width: 184px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
 </asp:Panel>
</asp:Content>

