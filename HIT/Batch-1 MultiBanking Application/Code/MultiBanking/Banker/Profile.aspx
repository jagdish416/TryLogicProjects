<%@ Page Title="" Language="C#" MasterPageFile="~/Banker/BankerMasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Banker_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <table>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Label ID="lblup" runat="server" Text="BankerProfile" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333CC" ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 969px">
                            <asp:Label ID="lblun1" runat="server" Text="UserName" Font-Bold="True" ForeColor="Black" Font-Size="Large" ></asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="txtun" runat="server" Height="16px" style="text-align: left" Width="142px" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 969px">
                            <asp:Label ID="lbladd" runat="server" Text="Bank Address" Font-Bold="True" style="text-align: center" Font-Size="Large" ForeColor="black"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" Height="51px" Width="179px" ReadOnly="True"></asp:TextBox>
                            <asp:LinkButton ID="lbadd" runat="server" ForeColor="Red" OnClick="lbadd_Click">Edit</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 969px">
                            <asp:Label ID="lblempid" runat="server" Font-Bold="True" Text="Employe ID" ForeColor="black" Font-Size="Large"></asp:Label>
                        </td>
                        <td class="auto-style19" style="width: 835px">
                            <asp:TextBox ID="txtempid" runat="server" Height="22px" Width="137px" ReadOnly="True"></asp:TextBox>
                            <asp:LinkButton ID="lbemail" runat="server" ForeColor="Red" OnClick="lbemail_Click">Edit</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 969px">
                            <asp:Label ID="lblpw" runat="server" Font-Bold="True" Text="Password" ForeColor="black" Font-Size="Large"></asp:Label>
                        </td>
                        <td class="auto-style21" style="width: 835px">
                            <asp:TextBox ID="txtpw" runat="server" Height="18px" TextMode="Password" Width="141px" ReadOnly="True"></asp:TextBox>
                            <asp:LinkButton ID="lbpw" runat="server" ForeColor="Red" OnClick="lbpw_Click">Edit</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 969px">
                            <asp:Label ID="lblbankphone" runat="server" Font-Bold="True" Text="Bank Phone" ForeColor="black" Font-Size="Large"></asp:Label>
                        </td>
                        <td class="auto-style17" style="width: 835px">
                            <asp:TextBox ID="txtbankphone" runat="server" Height="21px" Width="139px" ReadOnly="True"></asp:TextBox>
                            <asp:LinkButton ID="lbmobile" runat="server" ForeColor="Red" OnClick="lbmobile_Click">Edit</asp:LinkButton>
                        </td>
                    </tr>
                    <tr align="center">
                        <td class="auto-style23" colspan="2">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" ImageUrl="~/Customer/update-hi.png" Width="109px" OnClick="ImageButton1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

