<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="Admin_AdminPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Red" style="text-align: left" Text="Admin Panel"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td>To add villages clilck here
                <asp:HyperLink ID="AddVillage" runat="server" NavigateUrl="~/Admin/AddVillage.aspx">Add Village</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>To read problems of villages written by user click here
                <asp:HyperLink ID="ReadProblems" runat="server" NavigateUrl="~/Admin/ReadProblems.aspx">Read Problems</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>To see Response to the problems from users click here<asp:HyperLink ID="resprblm" runat="server" NavigateUrl="~/Admin/ResponseProblems.aspx">Users Response  to Problems</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>To Update the problems of villages click here<asp:HyperLink ID="UpdateInfo" runat="server" NavigateUrl="~/Admin/UpdateInformation.aspx">Update Information</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">To see all village lists just Click here
                <asp:HyperLink ID="viewvlgs" runat="server" NavigateUrl="~/Admin/ViewVillages.aspx">ViewVillages</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>To see all users lists Registerd with your site just click here
                <asp:HyperLink ID="VIewUsers" runat="server" NavigateUrl="~/Admin/ViewUsers.aspx">ViewUsers</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>Please check your inbox To check your any response messages
                <br />
                To check your inbox click here
                <asp:HyperLink ID="inbox" runat="server" NavigateUrl="~/Admin/Inbox.aspx">Inbox</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

