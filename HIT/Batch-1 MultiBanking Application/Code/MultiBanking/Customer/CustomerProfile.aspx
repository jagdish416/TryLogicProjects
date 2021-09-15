<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerProfile.aspx.cs" Inherits="Customer_CustomerProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td>
    
        <table>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="lblup" runat="server" Text="UserProfile" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333CC" ></asp:Label>
                </td>
            </tr>

            <tr>
                <td align="center" style="width: 969px; height: 33px;">
                    <asp:Label ID="lblun1" runat="server" Text="UserName" Font-Bold="True" ForeColor="Black" Font-Size="Large" ></asp:Label>
                </td>
                <td style="height: 33px" >
                    <asp:TextBox ID="txtun" runat="server" Height="16px" style="text-align: left" Width="142px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 969px; height: 31px;">
                    <asp:Label ID="lbldob" runat="server" Text="Date Of Birth" Font-Bold="True" ForeColor="Black" Font-Size="Large"></asp:Label>
                </td>
                <td style="height: 31px">
                    <asp:TextBox ID="txtdob" runat="server" Height="16px" Width="142px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 969px; height: 66px;">
                    <asp:Label ID="lbladd" runat="server" Text="Address" Font-Bold="True" style="text-align: center" ForeColor="Black" Font-Size="Large"></asp:Label>
                </td>
                <td style="height: 66px">
                    
                    <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" Height="51px" Width="179px" ReadOnly="True"></asp:TextBox>
                    <asp:LinkButton ID="lbadd" runat="server" ForeColor="Red" OnClick="lbadd_Click">Edit</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 969px; height: 35px;">
                    <asp:Label ID="lblemail" runat="server" Font-Bold="True" Text="E-Mail" ForeColor="Black" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style19" style="width: 835px; height: 35px;">
                    <asp:TextBox ID="txtemail" runat="server" Height="22px" Width="137px" ReadOnly="True"></asp:TextBox>

                    <asp:LinkButton ID="lbemail" runat="server" ForeColor="Red" OnClick="lbemail_Click">Edit</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 969px; height: 34px;">
                    <asp:Label ID="lblpw" runat="server" Font-Bold="True" Text="Password" ForeColor="Black" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style21" style="width: 835px; height: 34px;">
                    <asp:TextBox ID="txtpw" runat="server" Height="18px" TextMode="Password" Width="141px" ReadOnly="True"></asp:TextBox>

                    <asp:LinkButton ID="lbpw" runat="server" ForeColor="Red" OnClick="lbpw_Click">Edit</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 969px; height: 41px;">
                    <asp:Label ID="lblmobile" runat="server" Font-Bold="True" Text="Mobile" ForeColor="Black" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style17" style="width: 835px; height: 41px;">
                    <asp:TextBox ID="txtmobile" runat="server" Height="21px" Width="139px" ReadOnly="True"></asp:TextBox>

                    <asp:LinkButton ID="lbmobile" runat="server" ForeColor="Red" OnClick="lbmobile_Click">Edit</asp:LinkButton>
                </td>
            </tr>
            <tr align="center">
                <td class="auto-style23" colspan="2">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" ImageUrl="~/Customer/update-hi.png" Width="109px" OnClick="ImageButton1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="2">
                    &nbsp;</td>
            </tr>
            </table>
    
        </td>
    </tr>
</table>
</asp:Content>

