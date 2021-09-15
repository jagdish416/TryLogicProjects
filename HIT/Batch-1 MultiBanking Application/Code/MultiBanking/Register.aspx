<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table>
        <tr align="center">
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="REGISTRATION FORM" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="#3333CC"></asp:Label>
            </td>
        </tr>
        <tr align="center">
            <td style="width: 501px; height: 215px;">
                <asp:HyperLink ID="hplcr" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" NavigateUrl="~/CustomerReg.aspx">CUSTOMER REGISTRATION</asp:HyperLink>
            </td>
            <td style="height: 215px; width: 452px;">
                <asp:HyperLink ID="hplbr" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" NavigateUrl="~/BankerReg.aspx">BANKER REGISTRATION</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="height: 160px;" colspan="2"></td>
        </tr>
    </table>
    
</asp:Content>

