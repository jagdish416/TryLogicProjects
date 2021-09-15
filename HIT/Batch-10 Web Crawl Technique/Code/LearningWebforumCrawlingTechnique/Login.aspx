<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width=100% 
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="Login Form" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>

</tr>
</table>
<br />
<br />
<table width=100% 
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
        <tr>
        <td align="center">
            <asp:Label ID="Label4" runat="server" Text="Select The Type"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true">
                <asp:ListItem>----SELECT----</asp:ListItem>
                <asp:ListItem>ADMIN</asp:ListItem>
                <asp:ListItem>USER</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="***" ForeColor="#FFFF99" 
                InitialValue="----SELECT----"></asp:RequiredFieldValidator>
        </td>
        </tr>
<tr>
<td align="center">
    <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="***" ForeColor="#FFFF99"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="***" ForeColor="#FFFF99"></asp:RequiredFieldValidator>
</td>
</tr>
</table>
<br />
<table width=100% 
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
<tr>
<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#333399" 
        ForeColor="#FFCCFF" Height="31px" Width="76px" onclick="Button1_Click" />
    <asp:Label ID="Label6" runat="server" ForeColor="#FFFF99"></asp:Label>
</td>
</tr>
</table>
<br />
<table width="100%" >
<tr>
<td align="center" >
     
        <asp:Label ID="Label5" runat="server" Text="Click here to"  ForeColor="Blue" 
            Font-Size="Large"></asp:Label>&nbsp
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx" 
            Font-Size="Large">Register</asp:HyperLink>
</td>
</tr></table>

</asp:Content>

