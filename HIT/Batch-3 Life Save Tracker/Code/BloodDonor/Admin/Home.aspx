<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMain.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
<tr>
<td >
    <asp:Image ID="Image1" runat="server" ImageUrl="~/prjmmg/Admin.png" 
        Height="300px" Width="300px" />
    <br />
</td>
<td align="left" style="font-family: 'Palatino Linotype'; font-size: Large">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Welcome to" Font-Size="X-Large"></asp:Label>&nbsp
    <asp:Label ID="Label2" runat="server" Text="Admin" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
</td>
</tr>
</table>
</asp:Content>

