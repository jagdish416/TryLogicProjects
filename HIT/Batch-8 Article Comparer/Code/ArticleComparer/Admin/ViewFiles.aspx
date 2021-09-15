<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ViewFiles.aspx.cs" Inherits="Admin_ViewFiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                      <Columns>
         <asp:TemplateField Visible="false">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text= '<%#Eval("Fid") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
        <ItemTemplate>
        <asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/new folder/Delete.jpg" Height="63px" onclick="ImageButton1_Click" 
                            Width="127px" />
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="text-align: left; color: #800000; font-weight: 700; text-decoration: underline">__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________</td>
        </tr>
    </table>
</asp:Content>


