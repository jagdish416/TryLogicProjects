<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="ViewBank.aspx.cs" Inherits="Customer_ViewBank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
                <td align="center">
                    <h1>
                    <asp:Label ID="lblvb" runat="server" style="text-align: center" Text="LIST OF BANKS" Font-Size="X-Large"></asp:Label>
                </h1>
                        </td>
            </tr>
        <tr>
                <td style="text-align: center">
                   </td>
            </tr>
        <tr align="center">
                <td>
                    <asp:GridView ID="GridView2" runat="server" Height="179px" Width="914px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    </asp:GridView>
            </td>
            </tr>
        <tr>
                <td align="right" class="auto-style9">
                   
                    </td>
                </tr>
        <tr>
                <td align="center" class="auto-style9">
                   </td>
                </tr>
        <tr>
                <td align="center" class="auto-style9">
                   </td>
                </tr>
        <tr>
                <td align="center" class="auto-style5">
                 </td>
            </tr>
        <tr>
                <td align="center" class="auto-style5">
                   </td>
            </tr>
        <tr>
                <td align="center" class="auto-style5">
                    </td>
            </tr>
        <tr>
                <td align="center" class="auto-style5">
                   </td>
            </tr>
        <tr>
            <td></td>
        </tr>
    </table>
</asp:Content>
