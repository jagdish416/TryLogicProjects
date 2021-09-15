<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="FileDetails.aspx.cs" Inherits="Admin_FileDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" 
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="File Details" Font-Bold="True" 
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
        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
        CellSpacing="1" Font-Size="Large" GridLines="None" 
        AutoGenerateColumns="False">
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
        <Columns>
        <asp:TemplateField HeaderText="File ID">
        
        <ItemTemplate>
        <%#Eval("fid") %>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="File Name">
        
        <ItemTemplate>
        <%#Eval("filename") %>
        </ItemTemplate>
         </asp:TemplateField>
        <asp:TemplateField HeaderText="Date">
        
        <ItemTemplate>
        <%#Eval("date") %>
        </ItemTemplate>
         </asp:TemplateField>
        <asp:TemplateField HeaderText="Keypoint">
        
        <ItemTemplate>
        <%#Eval("keypoint") %>
        </ItemTemplate>
        </asp:TemplateField>
        
        </Columns>
    </asp:GridView>
</td>
</tr>
</table>
</asp:Content>

