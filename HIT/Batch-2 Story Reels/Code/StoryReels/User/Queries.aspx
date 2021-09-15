<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Queries.aspx.cs" Inherits="User_Queries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form id="form1" runat="server"  style="background-color:  #E0E0E0; color: #E0E0E0;">
        <table class="nav-justified">
            <tr>
                
                     <td align="center" bgcolor="#AE0057" colspan="2" style="color: #AA0055">
    <asp:Label ID="Label6" runat="server" Text="Post Your Queries" Font-Bold="True" 
        Font-Size="X-Large" Font-Underline="True" ForeColor="White"></asp:Label>
            
                </td>
            </tr>
            <tr>
                <td style="height: 52px; width: 420px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Size="Larger" ForeColor="#AC0056" Text="Name"></asp:Label>
                </td>
                <td class="text-left" style="height: 52px">
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="#666666" Font-Size="Medium"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 420px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Size="Larger" ForeColor="#AC0056" Text="Your Query"></asp:Label>
                </td>
                <td class="text-left">
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="#666666" Font-Size="Medium" TextMode="MultiLine" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 420px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 420px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="height: 28px">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" Font-Strikeout="False" Text="ASK" ForeColor="White" OnClick="Button1_Click" BackColor="#AC0056" />
                </td>
            </tr>
            <tr>
                <td style="width: 420px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 420px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 420px; height: 17px;"></td>
                <td style="height: 17px"></td>
            </tr>
            <tr>
                <td style="width: 420px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>

</asp:Content>

