<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Userdetails.aspx.cs" Inherits="Admin_Userdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" 
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="User Details" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>

</tr>
</table>
<br />
<br />
<table width="100%">
<tr>
<td align="center">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="20" CellSpacing="10" 
        Font-Size="Large" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
</td>
</tr>
</table>
</asp:Content>

