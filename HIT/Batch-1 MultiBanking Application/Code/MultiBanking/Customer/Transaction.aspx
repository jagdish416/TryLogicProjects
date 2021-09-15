<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="Transaction.aspx.cs" Inherits="Customer_Transaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td style="width: 399px"></td>
            <td style="width: 383px"></td>
            
        </tr>
        <tr>
            <td style="width: 399px"></td>
            <td style="width: 383px"></td>
            
        </tr>
        <tr align="center">
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="TRANSACTIONS" BorderColor="White" Font-Bold="True" Font-Size="X-Large" ForeColor="#0033CC"></asp:Label>
            </td>
           

        </tr>
        <tr>
            <td style="width: 399px"></td>
            <td style="width: 383px"></td>
            
        </tr>
        <tr>
            <td style="width: 399px">&nbsp;</td>
            <td style="width: 383px">&nbsp;</td>
            
        </tr>
        <tr>
            <td style="width: 399px">&nbsp;</td>
            <td style="width: 383px">&nbsp;</td>
            
        </tr>
        <tr>
            <td style="width: 399px"></td>
            <td style="width: 383px"></td>
           
        </tr>
        <tr>
            <td style="width: 399px"></td>
            <td style="width: 383px"></td>
           

        </tr>
        <tr align="center">
            <td style="width: 399px">
                <asp:HyperLink ID="hplself" runat="server" BorderColor="White" Font-Bold="True" Font-Size="Large" ForeColor="Black" NavigateUrl="~/Customer/SelfTransfer.aspx">   SELF TRANSFER</asp:HyperLink>
            </td>
            <td style="width: 383px">
                <asp:HyperLink ID="hplother" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" NavigateUrl="~/Customer/OtherTransfer.aspx">TRANSFER TO OTHER ACCOUNT</asp:HyperLink>
            </td>
           

        </tr>
        <tr>
            <td style="width: 399px"></td>
            <td style="width: 383px"></td>
         >

        </tr>
        <tr>
            <td style="width: 399px">&nbsp;</td>
            <td style="width: 383px">&nbsp;</td>

        </tr>
        <tr>
            <td align="center" colspan="2">
               
                &nbsp;</td>

        </tr>
        <tr>
            <td style="width: 399px">&nbsp;</td>
            <td style="width: 383px">&nbsp;</td>

        </tr>
        <tr>
            <td colspan="2">
                <asp:Image ID="Image1" runat="server" Height="355px" ImageUrl="~/Customer/shutterstock_141456001.jpg" Width="955px" />
            </td>
       

        </tr>
    </table>
</asp:Content>

