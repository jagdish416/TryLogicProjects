<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="User_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="Feedback Form" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
        </td>

</tr>
<tr>
<td align="center">
    <asp:Label ID="Label2" runat="server" Text="Name :"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true"></asp:TextBox>
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label3" runat="server" Text="To :"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Text="Admin"></asp:TextBox>
</td>

</tr>
<tr>
<td align="center">
    <asp:Label ID="Label5" runat="server" Text="Want To Search"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="***" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label4" runat="server" Text="Message :"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server" Height="147px" TextMode="MultiLine" 
        Width="300px"></asp:TextBox>
</td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="***" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td  align="right">
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
</td>
<td>
    <asp:Button ID="Button2" runat="server" Text="Clear" onclick="Button2_Click" />
</td>
</tr>
</table>
</asp:Content>

