<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="feedbackusers.aspx.cs" Inherits="Admin_feedbackusers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
<tr>
<td bgcolor="#9900FF" colspan="2" align="center">
    <asp:Label ID="Label1" runat="server" Text="Users feedback" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>
</tr>
<tr>
<td align="center">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        Font-Size="Large" AutoGenerateColumns="False">
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
        <asp:TemplateField HeaderText="S.No">
        <ItemTemplate>
         <%# Container.DataItemIndex + 1 %>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name Of the User">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("name") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Message">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("message") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>
    </asp:GridView>
</td>
</tr>

</table>
</asp:Content>

