<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td>
            
            <table style="width: 100%">
                <tr>
                    <td align="center">
                        <asp:Label ID="Label2" runat="server" Text="ABOUT US" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333FF"></asp:Label>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="We propose an enhanced smart multi-banking integrated using service oriented composition model by which using single username and password the user can able to access multiple account .This application integrates all existing banks and provides business solutions .This application acts as a standard interface between the clients and all the banks. " Font-Size="Large" Font-Bold="True" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="309px" ImageUrl="~/Get-Financial-Help-with-Simple-Free-Investment-Tools-Online.jpg" Width="953px" />
                    </td>
                </tr>
                
            </table>
        </td>
    </tr>
</table>
</asp:Content>

