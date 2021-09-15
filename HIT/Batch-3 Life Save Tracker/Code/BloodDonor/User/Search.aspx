<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermain.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="User_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table width="100%" 
        
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #9933FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="Track The Place" Font-Bold="True" 
        Font-Size="XLarge" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>

</tr>
<tr>
<td align="center" class="style1" style="width: 585px">
    <asp:Label ID="Label15" runat="server" Text="Select Blood Group :" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="DropDownList4" runat="server" AppendDataBoundItems="true" 
        Font-Size="Large">
        <asp:ListItem>--SELECT--</asp:ListItem>
        <asp:ListItem>AB+</asp:ListItem>
        <asp:ListItem>O+</asp:ListItem>
        <asp:ListItem>B+</asp:ListItem>
        <asp:ListItem>A+</asp:ListItem>
        <asp:ListItem>AB-</asp:ListItem>
        <asp:ListItem>O-</asp:ListItem>
        <asp:ListItem>B-</asp:ListItem>
        <asp:ListItem>A-</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator62" runat="server" 
        ControlToValidate="DropDownList4" ErrorMessage="**" ForeColor="#CC0000" 
        InitialValue="--SELECT--"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center">

    <asp:Label ID="Label9" runat="server" Text="Select Country :" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" 
       
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    <asp:ListItem>--SELECT--</asp:ListItem>
        <asp:ListItem>INDIA</asp:ListItem>
        <asp:ListItem>PAKISTAN</asp:ListItem>
        <asp:ListItem>USA</asp:ListItem>
        <asp:ListItem>AUSTRALIA</asp:ListItem>
        <asp:ListItem>SOUTH AFRICA</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
        ErrorMessage="***" ForeColor="Red" InitialValue="--SELECT--" 
        ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label10" runat="server" Text="Select State :" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="Large" 
        AutoPostBack="True" 
        >
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" InitialValue="--SELECT--" 
        ErrorMessage="***" ForeColor="Red" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label11" runat="server" Text="Select Locality :" 
        Font-Size="Large" ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="DropDownList3" runat="server" Font-Size="Large">
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" InitialValue="--SELECT--" 
        ErrorMessage="***" ForeColor="Red" ControlToValidate="DropDownList3"></asp:RequiredFieldValidator>
</td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>

<tr>
<td align="center">
    <asp:Button ID="Button1" runat="server" Text="Search Hospitals" 
        BackColor="#FFFF99" Font-Names="Algerian" Font-Size="Large" 
        ForeColor="#0000CC" />
</td>
<td>
<asp:Button ID="Button2" runat="server" Text="Search Users" 
        BackColor="#FFFF99" Font-Names="Algerian" Font-Size="Large" 
        ForeColor="#0000CC" />

</td>
</tr>
</table>
<div id="mapArea" style="width: 500px; height: 500px;">
          </div>
 
          <asp:Literal ID="Literal1" runat="server"></asp:Literal>
          

</asp:Content>

