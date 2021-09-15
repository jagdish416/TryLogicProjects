<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermain.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="User_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
<tr>
<td>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/prjmmg/user-icon1.jpg" 
        Height="243px" Width="242px"/>
</td>



<td align="center" style="font-family: 'Palatino Linotype'; font-size: Large">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Welcome to" Font-Size="XX-Large" 
        BackColor="#FFFFCC" ForeColor="#3333FF"></asp:Label>&nbsp
    <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="XX-Large" 
        BackColor="#FFFFCC" ForeColor="#3333FF"></asp:Label>
</td>
</tr>
</table>
</asp:Content>

