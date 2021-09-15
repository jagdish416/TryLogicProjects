<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table class="auto-style1" style="width: 91%">
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:Label ID="lblli" runat="server" Text="LogIn" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" style="text-align: center"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 311px">&nbsp;</td>
        <td style="width: 319px" colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 311px; height: 18px;">
            &nbsp;<br />
&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Select Account"></asp:Label>
            <br />
        </td>
        <td class="auto-style3">
           
            <br />
           
            <asp:DropDownList ID="dlistlogin" runat="server" Width="170px" Height="26px" OnSelectedIndexChanged="dlistlogin_SelectedIndexChanged" OnTextChanged="dlistlogin_SelectedIndexChanged">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>User</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
            </asp:DropDownList>
           
            <br />
           
        </td>
        <td style="width: 319px; height: 18px;">
           
            <br />
        </td>
    </tr>
    <tr>
        <td style="width: 311px">
            &nbsp;<br />
&nbsp;&nbsp;
            <asp:Label ID="lblname" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Blue" Text="User Name" Font-Size="Medium"></asp:Label>
            <br />
        </td>
        <td class="auto-style2">
            <br />
            <asp:TextBox ID="txtuname" runat="server" Width="173px" Height="20px"></asp:TextBox>
            <br />
        </td>
        <td style="width: 319px">
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" ErrorMessage="Enter Your User Name" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    </table>
<table class="auto-style1" style="width: 93%">
    <tr>
        <td class="auto-style13">
            <br />
            <asp:Label ID="lblpword" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Blue" Text="Password" Font-Size="Medium"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </td>
        <td class="auto-style14">
            <asp:TextBox ID="txtpword" runat="server" Height="23px" Width="175px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style10">
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpword" ErrorMessage="Enter Your Password" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
           </tr>
    <tr>
        <td style="text-align: center;" colspan="3"></td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">
            <br />
            <asp:Button ID="Lgn" runat="server" Font-Bold="True" Text="LogIn" Height="29px" Width="65px" Font-Italic="True" ForeColor="#FF3300" OnClick="Lgn_Click" />
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="3" class="auto-style12">New User <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>&nbsp;&nbsp;&nbsp; Forgot Password.?
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ForgotPassword.aspx">Click Here</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            
        </td>
    </tr>
</table>
   
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <style type="text/css">
        .auto-style1 {
            height: 18px;
            width: 314px;
        }
        .auto-style2 {
            width: 172px;
        }
        .auto-style3 {
            height: 18px;
            width: 172px;
        }
        .auto-style10 {
            height: 9px;
            width: 33%;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            height: 9px;
            width: 201px;
        }
        .auto-style14 {
            height: 9px;
            width: 35%;
        }
    </style>
</asp:Content>



