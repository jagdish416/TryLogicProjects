<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerHome.aspx.cs" Inherits="Customer_CustomerHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    
    <table style="width: 100%; height: 172px">
        <tr>
            <td style="width: 396px">
                <asp:Image ID="Image1" runat="server" Height="155px" ImageUrl="~/Customer/customer1.jpg" Width="271px" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333CC" Text="Welcome To Customer Home Page"></asp:Label>
            </td>
        </tr>
    </table>
   
    
</asp:Content>

