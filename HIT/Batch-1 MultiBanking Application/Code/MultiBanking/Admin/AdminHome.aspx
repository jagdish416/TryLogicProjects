<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Admin_AdminHome" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="height: 87px; width: 386px;">
                <asp:Image ID="Image1" runat="server" Height="170px" ImageUrl="~/Admin/admin1.jpg" Width="220px" />
            </td>
            <td style="height: 87px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333CC" Text="Welcome To Admin Page"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

