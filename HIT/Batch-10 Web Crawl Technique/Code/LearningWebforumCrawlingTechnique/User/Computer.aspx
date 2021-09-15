<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Computer.aspx.cs" Inherits="User_Computer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
<tr>
<td align="left">
    &nbsp;</td>

</tr>
<tr>
<td align="center">
    <asp:Panel ID="pnlContent" runat="server">
                <h2><asp:Label ID="lblHeader" runat="server" ForeColor="Aqua" Font-Size="XX-Large"></asp:Label></h2><br />
                <asp:Label ID="lblContent" runat="server" Font-Size="Large"></asp:Label> 
                               
                </asp:Panel>
</td>
</tr>
</table>
</asp:Content>

