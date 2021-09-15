<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewBankers.aspx.cs" Inherits="Admin_ViewBankers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <table style="width: 100%" align="center">
                    <tr align="center">
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="List Of Bankers" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" Height="157px" Width="939px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            </asp:GridView>
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
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

