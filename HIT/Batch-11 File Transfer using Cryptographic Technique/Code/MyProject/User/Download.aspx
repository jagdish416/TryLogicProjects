<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="User_Download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center">
<tr>
<td align="center">
<asp:GridView ID="gvDownload" runat="server" AutoGenerateColumns="false">
<Columns>
<asp:TemplateField HeaderText="File Id">
<ItemTemplate>
<asp:Label ID="lblFileID" runat="server" Text='<%# Eval("FileId") %>'></asp:Label>

</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="File Name">
<ItemTemplate>
<asp:Label ID="lblFileName" runat="server" Text='<%# Eval("FileName") %>'></asp:Label>

</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField Visible="false">
<ItemTemplate>
<asp:Label ID="lblEKey" runat="server" Text='<%# Eval("EncryptionKey") %>'></asp:Label>

</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="User Name">
<ItemTemplate>
<asp:Label ID="lblUserName" runat="server" Text='<%# Eval("UserId") %>'></asp:Label>

</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<ItemTemplate>
<asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click">
</asp:LinkButton>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</td>
</tr>
</table>
</asp:Content>

