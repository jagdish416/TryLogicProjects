<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/Buyer.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Buyer_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table width=100% 
        
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #9933FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="FeedBack Form" Font-Bold="True" 
        Font-Size="XLarge" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>

</tr>
</table>
<br />
<br />
    <table width="100%">
        <tr>
            <td align="center" style="width: 470px">
                <asp:Label ID="Label2" runat="server" Text="Name" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" ForeColor="#0000CC" ReadOnly="true"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 470px">
                <asp:Label ID="Label3" runat="server" Text="Message :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="63px" Width="183px" Font-Size="Large" ForeColor="#0000CC"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">

            <td colspan="2">

                <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#FF6666" Font-Size="X-Large" ForeColor="#0000CC" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

