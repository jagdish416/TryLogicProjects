<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Update Password.aspx.cs" Inherits="User_Update_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" 
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="Update Password" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>

</tr>
</table>
<br />
<br />

<table width="100%">
<tr>
<td align="justify">
    <asp:Label ID="Label2" runat="server" Text="Old Password :" Font-Size="Large"></asp:Label>
</td>
<td align="justify">
   
    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large"></asp:TextBox></td>
    <td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="***" Font-Size="Large" 
        ForeColor="#FFFFCC"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="justify">
    <asp:Label ID="Label3" runat="server" Text="New Password :" Font-Size="Large"></asp:Label>
</td>
<td align="justify">
    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" TextMode="Password"></asp:TextBox></td>
    <td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="***" Font-Size="Large" 
        ForeColor="#FFFF99"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="justify">
    <asp:Label ID="Label4" runat="server" Text="Confirm Password :" Font-Size="Large"></asp:Label>
</td>
<td align="justify">
    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" TextMode="Password"></asp:TextBox></td>
    <td>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="***" Font-Size="Large" 
        ForeColor="#FFFF99"></asp:RequiredFieldValidator></td>
    <td>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
        ErrorMessage="Password Doesn't Match" Font-Size="Large" ForeColor="#FFFF99"></asp:CompareValidator>

</td>
</tr>
<tr>
<td align="center" colspan="4">
    <asp:Button ID="Button1" runat="server" Text="Update" Font-Size="Large" 
        onclick="Button1_Click" />
</td>
</tr>
</table>
</asp:Content>

