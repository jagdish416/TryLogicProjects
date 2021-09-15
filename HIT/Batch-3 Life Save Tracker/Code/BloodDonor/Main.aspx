<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width=100% 
        
    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #9933FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="Main Registration Form" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>

</tr>

</table>


<br />
<br />
<br />
<table width="100%">

<tr>
<td align="center" style="width: 529px"> 
    <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#FFFFCC" 
        Font-Size="X-Large" ForeColor="#3333FF" NavigateUrl="~/Registration.aspx">User Registration</asp:HyperLink>
</td>
<td>
    <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#FFFFCC" 
        Font-Size="X-Large" ForeColor="#3333FF" NavigateUrl="~/HospitalReg.aspx">Hospital Registration</asp:HyperLink>
</td>
</tr>
</table>
</asp:Content>

