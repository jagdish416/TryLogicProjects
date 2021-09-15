<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Loginn.aspx.cs" Inherits="Login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td colspan="5" style="text-align: center; background-color: #990000;">
            <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="35pt" ForeColor="White" Text="LOGIN"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 630px">&nbsp;</td>
        <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 630px">&nbsp;</td>
        <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center; width: 630px">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#CC0000" Text="Select User:"></asp:Label>
        </td>
        <td colspan="4" style="text-align: left">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="109px" Font-Size="Larger">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>User</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
            </asp:DropDownList>
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
        </td>
    </tr>
    <tr>
        <td style="height: 20px; width: 630px"></td>
        <td style="height: 20px" colspan="4"></td>
    </tr>
    <tr>
        <td style="text-align: center; width: 630px">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#CC0000" Text="User Name:"></asp:Label>
        </td>
        <td style="text-align: left;" colspan="2">
            <asp:TextBox ID="TextBox1" runat="server" Width="183px" Font-Size="Large" Height="27px"></asp:TextBox>
            <asp:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBox1" WatermarkText="enter name">
            </asp:TextBoxWatermarkExtender>
        </td>
        <td colspan="2" style="text-align: left">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Enter Name" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 630px; height: 20px;"></td>
        <td style="height: 20px" colspan="4"></td>
    </tr>
    <tr>
        <td style="text-align: center; width: 630px">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#CC0000" Text="Password:"></asp:Label>
        </td>
        <td style="text-align: left;" colspan="2">
            <asp:TextBox ID="TextBox2" runat="server" Width="183px" Font-Size="Large"></asp:TextBox>
            <asp:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBox2" WatermarkText="password">
            </asp:TextBoxWatermarkExtender>
        </td>
        <td style="width: 178px; text-align: left;">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Enter Password" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </td> 
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center; width: 630px; height: 20px"></td>
        <td style="height: 20px" colspan="4"></td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Button ID="Button1" runat="server" BackColor="#CC0000" Font-Size="Larger" ForeColor="White" Height="31px" Text="Login" Width="91px" OnClick="Button1_Click" />
        </td>
        <td style="text-align: right; width: 138px;">
            <asp:Label ID="Label5" runat="server" Text="New User"></asp:Label>
        </td>
        <td style="text-align: left; width: 138px;">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registeration.aspx">Click Here</asp:HyperLink>
        </td>
        <td colspan="2" style="text-align: left">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">
            &nbsp;</td>
        <td colspan="2" style="text-align: center">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="5" style="text-align: center">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password..?</asp:HyperLink>
        </td>
    </tr>
</table>
</asp:Content>

