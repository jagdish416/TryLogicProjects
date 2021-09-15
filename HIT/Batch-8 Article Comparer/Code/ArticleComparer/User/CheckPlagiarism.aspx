<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="CheckPlagiarism.aspx.cs" Inherits="User_CheckPlagiarism" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td style="color: #6699FF; font-weight: 700; text-decoration: underline; border-bottom-style: solid; border-bottom-width: medium; border-right-color: #6699FF;" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 414px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 414px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 414px; text-align: center;">
            <asp:Label ID="Label2" runat="server" Text="Upload File Here  :"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="width: 414px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center;" colspan="2">
            <asp:Button ID="Button1" runat="server" BackColor="#6699FF" Font-Size="Large" ForeColor="Black" onclick="Button1_Click" Text="Check" />
        </td>
    </tr>
    <tr>
        <td style="width: 414px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 414px; text-align: center;">
            <asp:Label ID="Label3" runat="server" Text="Same Content :" Font-Size="20pt"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="129px" TextMode="MultiLine" Width="560px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 414px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 414px; text-align: center;">
            <asp:Label ID="Label4" runat="server" Text="Copy Percentage :" style="font-weight: 700"></asp:Label>
        </td>
        <td style="text-align: left">
            <asp:Label ID="lblper" runat="server" Font-Size="15pt" ForeColor="Red"></asp:Label>
            <asp:Label ID="Label5" runat="server" Font-Size="15pt" ForeColor="Red" Text="%"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 414px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-decoration: underline; color: #6699FF; font-weight: 700; border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #6699FF;" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 414px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

