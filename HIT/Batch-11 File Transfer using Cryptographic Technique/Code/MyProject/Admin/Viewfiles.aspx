<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Viewfiles.aspx.cs" Inherits="Admin_Viewfiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
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
        <asp:Label ID="Label2" runat="server" Text='<%#Eval("FileId") %>'></asp:Label>
        </ItemTemplate>
            
           
        </asp:TemplateField>
        <asp:TemplateField HeaderText="File Name">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("FileName") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText=" Encryption Key">
        <ItemTemplate>
          <asp:Label ID="Label3" runat="server" Text='<%#Eval("EncryptionKey") %>'></asp:Label>
        </ItemTemplate>
          
        </asp:TemplateField>
        <asp:TemplateField HeaderText="File path">
        <ItemTemplate>
         <asp:Label ID="Label4" runat="server" Text='<%#Eval("FilePath") %>'></asp:Label>
        </ItemTemplate>
           
        </asp:TemplateField>
        </Columns>
    </asp:GridView>

</td>
</tr>

</table>
</asp:Content>

