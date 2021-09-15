<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="User_Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td style="width: 190px">
            File name :</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 190px; height: 38px">
            Encrypted key :</td>
        <td style="height: 38px">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 190px">
            Upload File :</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

