<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="Status.aspx.cs" Inherits="Customer_Status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue" Text="STATUS"></asp:Label>
            </td>
        </tr>
        <tr align="right">
            <td style="height: 18px">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="~/buttons/back.png" Width="53px" PostBackUrl="~/Customer/Transaction.aspx" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

