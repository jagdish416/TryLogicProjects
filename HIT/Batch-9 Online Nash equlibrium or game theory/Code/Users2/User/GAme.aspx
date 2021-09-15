<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="GAme.aspx.cs" Inherits="User_GAme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width=100% 
        style="font-family: 'Trebuchet MS'; font-size: xx-large; font-weight: lighter; font-style: normal; color: #FFFFFF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label4" runat="server" Text="Puzzle Page" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>
</tr>
</table>
<br />
<br />
<br />
<table width="100%" bgcolor="#CCFFFF" 
        style="font-family: 'Sitka Text'; font-size: xx-large; font-weight: bolder; font-style: normal; font-variant: normal; color: #FF00FF">

<tr>
<td align="center">
    <asp:Label ID="Label3" runat="server" Text="Question"></asp:Label>
</td>
<td align="center">

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td>
    </tr>
    <tr>
    <td align="center">
        <asp:Label ID="Label2" runat="server" Text="Enter The Answer"></asp:Label>
    </td>
    <td align="center">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td>
    </tr>
    
    <tr>

    <td align="center" colspan="2">
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
            BackColor="#FFFF66" Font-Size="X-Large" ForeColor="#660066" />
    </td>
    </tr>

</table>
</asp:Content>

