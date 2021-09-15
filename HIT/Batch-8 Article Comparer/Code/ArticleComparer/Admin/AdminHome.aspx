<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Admin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 621px; text-align: center">
                <asp:Image ID="Image1" runat="server" Height="319px" Width="374px" ImageUrl="~/new folder/Admin.png" />
            </td>
            <td style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Names="Forte" Font-Size="60pt" Text="Hello Admin...!" ForeColor="Yellow"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 621px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

