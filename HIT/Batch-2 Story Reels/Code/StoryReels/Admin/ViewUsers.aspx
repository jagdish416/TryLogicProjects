<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ViewUsers.aspx.cs" Inherits="Admin_ViewUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server" style="background-color:  #E0E0E0; color: #E0E0E0;">
        <table align="center">
            <tr >
                <td>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="378px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
        
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField>
        <ItemTemplate>
            <asp:Button ID="Button" runat="server" Text="DELETE" OnClick="Button_Click"  />
        </ItemTemplate>
        </asp:TemplateField>
        
        </Columns>
        </asp:GridView>
                     </td>
            </tr>
                </table>
    </form>
</asp:Content>

