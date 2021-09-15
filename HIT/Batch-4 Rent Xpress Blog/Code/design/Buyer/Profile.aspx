<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/Buyer.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Buyer_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width=100% 
        
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #9933FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="My Profile" Font-Bold="True" 
        Font-Size="XLarge" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>

</tr>
</table>
<br />
<br />

<table width="100%">
<tr>
<td align="center" style="width: 526px">
    <asp:Label ID="Label2" runat="server" Text="Name :" Font-Size="Large"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtname" runat="server" Width="141px" ReadOnly="true" Font-Size="Large"></asp:TextBox>
    
</td>
</tr>
<tr>
<td align="center" style="width: 526px">
    <asp:Label ID="Label4" runat="server" Text="Email ID :" Font-Size="Large"></asp:Label>
</td>
<td>
 <asp:TextBox ID="txtmail" runat="server" Width="278px" ReadOnly="true" 
        Font-Size="Large"></asp:TextBox>
   
</td>
</tr>
<tr>
<td align="center" style="width: 526px">
    <asp:Label ID="Label6" runat="server" Text="Password :" Font-Size="Large"></asp:Label>
</td>
<td>
 <asp:TextBox ID="txtpas" runat="server" Width="141px" ReadOnly="true" Font-Size="Large"></asp:TextBox>

    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" 
        ForeColor="Red" onclick="LinkButton1_Click">Edit</asp:LinkButton>   
</td>
</tr>


<tr>
<td align="center" style="width: 526px">
    <asp:Label ID="Label3" runat="server" Text="Mobile No :" Font-Size="Large"></asp:Label>
</td>
<td>
 <asp:TextBox ID="txtmobile" runat="server" Width="141px" ReadOnly="true" Font-Size="Large"></asp:TextBox>
     <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Large" 
        ForeColor="Red" onclick="LinkButton2_Click">Edit</asp:LinkButton>   
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label8" runat="server" Text="Address :" Font-Size="Large"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Font-Size="Large" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Large" 
        ForeColor="Red" onclick="LinkButton4_Click">Edit</asp:LinkButton> 
</td>
</tr>


<%--<tr>
<td align="center" style="width: 526px">
    <asp:Label ID="Label5" runat="server" Text="Location :" Font-Size="Large"></asp:Label>
</td>
<td>
 <asp:TextBox ID="txtloc" runat="server" Width="141px" ReadOnly="true" Font-Size="Large"></asp:TextBox>
</td>
</tr>--%>
<tr>
<td align="center" style="width: 526px">
    <asp:Label ID="Label7" runat="server" Text="DOB :" Font-Size="Large"></asp:Label>
</td>
<td>
 <asp:TextBox ID="txtdob" runat="server" Width="141px" ReadOnly="true" Font-Size="Large"></asp:TextBox>
    
</td>
</tr>

<tr>
<td align="center" style="width: 526px">
    <asp:Label ID="Label10" runat="server" Text="State :" Font-Size="Large"></asp:Label>
</td>
<td>
 <asp:TextBox ID="txtstate" runat="server" Width="141px" ReadOnly="true" Font-Size="Large"></asp:TextBox>
    
</td>
</tr>


<tr><td></td></tr>
<tr>
<td align="center" colspan="2">
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Img/update-hi.png" Height="40px" Width="135px" 
        onclick="ImageButton1_Click" />
</td>
</tr>
</table>
</asp:Content>

