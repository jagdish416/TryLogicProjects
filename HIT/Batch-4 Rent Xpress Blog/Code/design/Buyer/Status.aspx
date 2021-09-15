<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/Buyer.master" AutoEventWireup="true" CodeFile="Status.aspx.cs" Inherits="Buyer_Status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width=100% 
        
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #9933FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="Status Form" Font-Bold="True" 
        Font-Size="XLarge" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>

</tr>
</table>
<br />
<br />
    <table width="100%">
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

