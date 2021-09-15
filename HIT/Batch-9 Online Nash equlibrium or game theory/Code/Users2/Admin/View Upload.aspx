<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="View Upload.aspx.cs" Inherits="Admin_View_Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
<tr>
<td align="center">
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" AutoGenerateColumns="False">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
        <Columns>
       
        <asp:TemplateField HeaderText="File ID">
        <ItemTemplate>
            <asp:Label ID="Label6" runat="server" Text='<%#Eval("fileid") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField  HeaderText="File Name">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("filename") %>'></asp:Label>
        </ItemTemplate>
        
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Description">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("description") %>'></asp:Label>
        </ItemTemplate>
        
        </asp:TemplateField>
        <asp:TemplateField HeaderText="File path">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("filepath") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        
        </Columns>
    </asp:GridView>
</td>
</tr>

</table>


</asp:Content>

