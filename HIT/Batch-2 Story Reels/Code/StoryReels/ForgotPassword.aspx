<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%"
        
    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #E0E0E0; text-decoration: blink">
<tr>
<td align="center" bgcolor="#E0E0E0" colspan="3">
    <asp:Label ID="Label1" runat="server" Text="Forgot Password" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True" ForeColor="#A40052"></asp:Label>
</td>

</tr>
</table>
<br />
<br />
<table width="100%">
<tr>
<td  style="text-align: center; width: 943px;">

    <asp:Label ID="Label2" runat="server" Text="Enter Your Email Id :" Font-Size="X-Large" ForeColor="#666666"></asp:Label>
</td>
<td  style="text-align: left; width: 943px;">
    <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large" ForeColor="Blue" 
        style="margin-left: 0px" Width="217px"></asp:TextBox>

</td>
</tr>
<tr>
<td></td></tr>
<tr>
<td colspan="2" style="text-align: center; width: 943px;">
    <asp:Button ID="Button1" runat="server" Text="Submit" ForeColor="Gray" 
        Font-Size="Medium" />
</td>

</tr>
</table>
</asp:Content>

