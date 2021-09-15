<%@ Page Title="" Language="C#" MasterPageFile="~/Banker/BankerMasterPage.master" AutoEventWireup="true" CodeFile="ViewCustomers.aspx.cs" Inherits="Banker_ViewCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr align="center">
            <td style="height: 66px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="List Of Customers" ForeColor="#3333CC"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 31px">
                <asp:GridView ID="GridView1" runat="server" Height="208px" Width="950px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="height: 41px"></td>
        </tr>
        </table>
</asp:Content>


