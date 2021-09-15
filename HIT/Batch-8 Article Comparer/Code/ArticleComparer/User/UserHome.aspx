<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="User_Logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
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
            <td style="width: 593px; text-align: center">
                <asp:Image ID="Image1" runat="server" Height="432px" ImageUrl="~/new folder/user-icon1.jpg" Width="467px" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Names="Forte" Font-Size="40pt" ForeColor="#006600" Text="Hi"></asp:Label>
                <asp:Label ID="Label3" runat="server" ForeColor="White" Text="aaa"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Names="Forte" Font-Size="40pt" ForeColor="#0019C8"></asp:Label>
                <asp:Label ID="Label4" runat="server" Font-Names="Forte" Font-Size="40pt" ForeColor="#0019C8" Text="..."></asp:Label>
                <asp:Label ID="Label5" runat="server" Font-Names="Forte" Font-Size="40pt" ForeColor="#006600" Text="You are Welcomed to this site. "></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>


