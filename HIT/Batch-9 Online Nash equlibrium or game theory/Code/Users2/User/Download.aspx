<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="User_Download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center">
    <tr>
    <td align="center"><h2>View Files</h2></td>
    </tr>
<tr>
<td>
<asp:GridView ID="gvFiles" runat="server" BackColor="White" BorderColor="#336666" 
        BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AutoGenerateColumns="false">
    <FooterStyle BackColor="White" ForeColor="#333333" />
    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#487575" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#275353" />
    <Columns>
    <asp:TemplateField HeaderText="File ID">
    <ItemTemplate><asp:Label ID="lblFileId" runat="server" Text='<%# Eval("fileid") %>'></asp:Label></ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="File Name">
    <ItemTemplate><asp:Label ID="lblFileName" runat="server" Text='<%# Eval("filename") %>'></asp:Label></ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Description">
    <ItemTemplate><asp:Label ID="lblDesc" runat="server" Text='<%# Eval("description") %>'></asp:Label></ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="File Path">
    <ItemTemplate><asp:Label ID="lblFilepath" runat="server" Text='<%# Eval("filepath") %>'></asp:Label></ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField>
    <ItemTemplate><asp:Button ID="btnDownload" runat="server" Text="Download" OnClick="btnclick"  /></ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>


</td>
</tr>
</table>
</asp:Content>

