<%@ Page Title="" Language="C#" MasterPageFile="~/Owner/Owner.master" AutoEventWireup="true" CodeFile="OwnerHome.aspx.cs" Inherits="Owner_OwnerHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
       
        <tr align="center">

            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Img/Owner.png" Height="279px" Width="367px" />

               
            </td>
            <td> <asp:Label ID="Label1" runat="server" Text="Welcome To - " Font-Size="X-Large" ForeColor="#0000CC"></asp:Label><asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="#0000CC"></asp:Label></td>
            
        </tr>
    </table>
</asp:Content>

