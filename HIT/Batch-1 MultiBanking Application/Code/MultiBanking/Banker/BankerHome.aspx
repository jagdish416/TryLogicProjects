<%@ Page Title="" Language="C#" MasterPageFile="~/Banker/BankerMasterPage.master" AutoEventWireup="true" CodeFile="BankerHome.aspx.cs" Inherits="Banker_BankerHome" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="height: 113px">
                <table style="width: 100%; height: 196px">
                    <tr>
                        <td style="width: 515px">
                            <asp:Image ID="Image1" runat="server" Height="174px" ImageUrl="~/Banker/banker1.jpg" Width="264px" />
                        </td>
                        <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333CC" Text="Welcome To Banker Home Page"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

