<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="UserPro.aspx.cs" Inherits="User_UserPro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="jag" runat="server">   <table width=100% 
        
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #9933FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#AA0055" colspan="2" style="color: #AA0055">
    <asp:Label ID="Label1" runat="server" Text="My Profile" Font-Bold="True" 
        Font-Size="X-Large" Font-Underline="True" ForeColor="White"></asp:Label>
</td>

</tr>
</table>
<br />
<br />

<table width="100%" style="background-color:  #E0E0E0">
<tr>
<td align="center" style="width: 526px">
    <asp:Label ID="Label2" runat="server" Text="Name :" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
</td>
<td class="text-left">
    <asp:TextBox ID="txtname" runat="server" Width="141px" ReadOnly="true" Font-Size="Large" BorderColor="#666666"></asp:TextBox>
    
</td>
</tr>
<tr>
<td align="center" style="width: 526px">
    <asp:Label ID="Label4" runat="server" Text="Email ID :" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
</td>
<td class="text-left">
 <asp:TextBox ID="txtmail" runat="server" Width="141px" ReadOnly="true" 
        Font-Size="Large" BorderColor="#666666" Height="26px"></asp:TextBox>
   
</td>
</tr>
<tr>
<td align="center" style="width: 526px">
    <asp:Label ID="Label6" runat="server" Text="Password :" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
</td>
<td class="text-left">
 <asp:TextBox ID="txtpas" runat="server" Width="141px" ReadOnly="true" Font-Size="Large" BorderColor="#666666" Height="28px"></asp:TextBox>

    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" 
        ForeColor="Red" onclick="LinkButton1_Click">Edit</asp:LinkButton>   
</td>
</tr>


<tr>
<td align="center" style="width: 526px">
    <asp:Label ID="Label3" runat="server" Text="Age" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
</td>
<td class="text-left">
 <asp:TextBox ID="txtage" runat="server" Width="130px" ReadOnly="true" Font-Size="Large" BorderColor="#666666" Height="26px"></asp:TextBox>
     <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Large" 
        ForeColor="Red" onclick="LinkButton2_Click">Edit</asp:LinkButton>   
</td>
</tr>
<tr>
<td align="center" style="width: 526px">
    <asp:Label ID="Label8" runat="server" Text="Gender" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
</td>
<td class="text-left">
    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Font-Size="Large" BorderColor="#666666" Height="18px" Width="133px"></asp:TextBox>
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
    <asp:Label ID="Label7" runat="server" Text="DOB :" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
</td>
<td class="text-left">
 <asp:TextBox ID="txtdob" runat="server" Width="123px" ReadOnly="true" Font-Size="Large" BorderColor="#666666" Height="28px"></asp:TextBox>
    
</td>
</tr>

<tr>
<td align="center" style="width: 526px; height: 42px;">
    <asp:Label ID="Label10" runat="server" Text="State :" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
</td>
<td class="text-left" style="height: 42px">
 <asp:TextBox ID="txtstate" runat="server" Width="117px" ReadOnly="true" Font-Size="Large" BorderColor="#666666" Height="24px"></asp:TextBox>
    
    <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Large" 
        ForeColor="Red" onclick="LinkButton4_Click">Edit</asp:LinkButton> 
    
</td>
</tr>


<tr><td style="width: 526px"></td></tr>
<tr>
<td align="center" colspan="2">
    <asp:Button ID="Button1" runat="server" BackColor="#AC0056" Font-Size="Large" Text="Update" OnClick="Button1_Click" ForeColor="White" />
</td>
</tr>
</table>
        </form>
 
</asp:Content>

