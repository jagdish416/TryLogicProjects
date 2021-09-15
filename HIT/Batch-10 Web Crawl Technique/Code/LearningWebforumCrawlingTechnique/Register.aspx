<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <table width="100%" 
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="Registration Form" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>

</tr>
</table>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
<br />

<br />
<table width="100%" 
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
        
<tr>
<td align="center" class="style1">
    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtname" runat="server" Width="129px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtname" ErrorMessage="**" ForeColor="#FFFF99"></asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td align="center" class="style1">
    <asp:Label ID="Label3" runat="server" Text="Email Id"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="txtemail" ErrorMessage="**" ForeColor="#FFFF99"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtemail" ErrorMessage="Invalid Emailid" ForeColor="#660033" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td align="center" class="style1">
    <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ErrorMessage="**" ControlToValidate="txtpass" ForeColor="#FFFF99"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center" class="style1">
   <asp:Label ID="Label4" runat="server" Text="Mobile Number"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ControlToValidate="txtmobile" ErrorMessage="**" ForeColor="#FFFF99"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="txtmobile" ErrorMessage="Enter 10 digit mobile no" 
        ForeColor="#660033" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td align="center" class="style1">
    <asp:Label ID="Label5" runat="server" Text="Location"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtloc" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtloc" ErrorMessage="**" ForeColor="#FFFF99"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center" class="style1">
    <asp:Label ID="Label6" runat="server" Text="Date Of Birth"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
    <asp:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
        Enabled="True" TargetControlID="txtdob">
    </asp:CalendarExtender>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtdob" ErrorMessage="**" ForeColor="#FFFF99"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center" class="style1">
    <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="ddlgender" runat="server" AppendDataBoundItems="true">
        <asp:ListItem>--SELECT--</asp:ListItem>
        <asp:ListItem>MALE</asp:ListItem>
        <asp:ListItem>FEMALE</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="ddlgender" ErrorMessage="**" ForeColor="#FFFF99" 
        InitialValue="--SELECT--"></asp:RequiredFieldValidator>
</td>
</tr>
</table>
<br />
<br />
<table width="100%" 
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink" >
<tr>
<td align="center" colspan="2">
    <asp:Button ID="Button1" runat="server" Text="Register" BackColor="#333399" 
        ForeColor="#FFCCFF" Height="31px" Width="76px" onclick="Button1_Click" />
    <asp:Label ID="Label12" runat="server"></asp:Label>
</td>
</tr>
</table>
</asp:Content>

