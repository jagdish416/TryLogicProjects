<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ForgotPassord.aspx.cs" Inherits="ForgotPassord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%"
        
    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #9933FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="3">
    <asp:Label ID="Label1" runat="server" Text="Forgot Password" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>

</tr>
</table>
<br />
<br />
<table width="100%">
<tr>
<td  style="text-align: center; width: 943px;">

    <asp:Label ID="Label2" runat="server" Text="Enter Your Email Id :" Font-Size="X-Large" ForeColor="Blue"></asp:Label>
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
    <asp:Button ID="Button1" runat="server" Text="Submit" ForeColor="#0000CC" 
        Font-Size="Medium" onclick="Button1_Click" />
</td>

</tr>
</table>
</asp:Content>

