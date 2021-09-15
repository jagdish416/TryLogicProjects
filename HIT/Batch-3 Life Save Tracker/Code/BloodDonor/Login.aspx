<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width=100% 
        
    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #9933FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="Login Form" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>

</tr>
</table>
<br />
<br />
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <table width=100% 
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
        <tr>
        <td align="center" style="width: 386px" rowspan="3">
            <asp:Image ID="Image1" ImageUrl="~/prjmmg/login.png" runat="server" 
                Height="234px" />
        </td>
        <td align="center" style="width: 247px">
            <asp:Label ID="Label4" runat="server" Text="Select The Type" Font-Size="Large"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large">
                <asp:ListItem>----SELECT----</asp:ListItem>
                <asp:ListItem>USER</asp:ListItem>
                
                <asp:ListItem>ADMIN</asp:ListItem>
            </asp:DropDownList>
        </td>
        </tr>
<tr>
<td align="center" style="width: 247px">
    <asp:Label ID="Label2" runat="server" Text="Username" Font-Size="Large"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large"></asp:TextBox>
</td>
</tr>
<tr>
<td align="center" style="width: 247px">
    <asp:Label ID="Label3" runat="server" Text="Password" Font-Size="Large"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Font-Size="Large"></asp:TextBox>
</td>
</tr>
<tr>
<td align="center" style="width: 386px">
    &nbsp;</td>
<td align="center" style="width: 247px">
    &nbsp;</td>
<td>
    &nbsp;</td>
</tr>
</table>
<br />
<table width=100% 
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
<tr>
<td colspan="2" align="center">
    <%--<asp:Button ID="Button1" runat="server" Text="Login" BackColor="#333399" 
        ForeColor="#FFCCFF" Height="31px" Width="76px" onclick="Button1_Click" />--%>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/prjmmg/button.png" Height="70px" Width="130px" 
        onclick="ImageButton1_Click" />
</td>
</tr>
</table>
<br />
<table width="100%" >
<tr>
<td align="center" colspan="2">
     
        <asp:Label ID="Label5" runat="server" Text="Click here to" Font-Size="Large"></asp:Label>&nbsp
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Main.aspx" 
            ForeColor="#FF6600" Font-Size="Large">register</asp:HyperLink><asp:Label ID="Label6"
                runat="server" Text="Click here for"></asp:Label>
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/ForgotPassord.aspx"  ForeColor="#FF6600" Font-Size="Large">Forgot Password</asp:HyperLink>
</td>
</tr>
</table>
</asp:Content>

