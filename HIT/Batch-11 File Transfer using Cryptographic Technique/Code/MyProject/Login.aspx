<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
    <tr>
        <td>
            Login ID:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td >
            Password :</td>
        <td >
            <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
                TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center"  colspan="2">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                Width="80px" />
        
            <asp:Button ID="Button2" runat="server" Text="Clear" onclick="Button2_Click1" 
                />
        </td>
    </tr>
    <tr>
    <td colspan="2" align="center">If New User?<asp:LinkButton ID="lnkSignup" runat="server" Text="Sign Up" PostBackUrl="~/register2.aspx"></asp:LinkButton></td>
    </tr>
</table>
</asp:Content>

