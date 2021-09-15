<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="View Users.aspx.cs" Inherits="Admin_View_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
<tr>
<td align="center">
    <asp:Label ID="Label1" runat="server" Text="View Users " Font-Names="Algerian" 
        Font-Size="X-Large" ForeColor="Blue"></asp:Label>
</td>
</tr>
<tr><td></td></tr>
<tr>
<td align="center">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
        <Columns>
        <asp:TemplateField Visible="false">
        <ItemTemplate>
        
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("StudId") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField>
        <ItemTemplate>
            <asp:Button ID="Button2" runat="server" Text="DELETE" onclick="Button2_Click" />
        </ItemTemplate>
        </asp:TemplateField>
        
        </Columns>
    </asp:GridView>
</td>
</tr>

</table>
    </asp:Content>

