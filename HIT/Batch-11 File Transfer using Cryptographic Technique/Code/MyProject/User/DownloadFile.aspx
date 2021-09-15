<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="DownloadFile.aspx.cs" Inherits="User_DownloadFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center">
<tr>
<td>
Enter Decryption Key:
</td>
<td><asp:TextBox ID="txtKey" runat="server"></asp:TextBox></td>
</tr>
<tr><td align="center"><asp:Button ID="btnDownload" runat="server" Text="Download" 
        onclick="btnDownload_Click" /></td></tr>
</table>
</asp:Content>

