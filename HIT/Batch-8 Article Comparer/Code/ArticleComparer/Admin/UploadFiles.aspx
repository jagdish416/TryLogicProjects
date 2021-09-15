<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="UploadFiles.aspx.cs" Inherits="Admin_UpdateFiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table style="width: 100%">
    <tr>
        <td style="border: medium solid #000000">
            <br />
            <br />
            <table style="width: 100%">
                <tr>
                    <td style="background-color: #000000; text-align: center;" colspan="3">
                        <asp:Label ID="Label1" runat="server" ForeColor="White" style="font-size: xx-large; font-weight: 700; font-style: italic" Text="Upload Files"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; height: 20px;" colspan="3"></td>
                </tr>
                <tr>
                    <td style="text-align: right; width: 821px;">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="File Name :"></asp:Label>
                    </td>
                    <td style="text-align: left; width: 768px;">
                        <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="168px"></asp:TextBox>
                    </td>
                    <td style="text-align: center">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 821px;">&nbsp;</td>
                    <td style="text-align: center" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 821px;">&nbsp;</td>
                    <td style="text-align: left" colspan="2">
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="23px" Width="236px" style="text-align: left" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 821px;">&nbsp;</td>
                    <td style="text-align: left" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 821px;">&nbsp;</td>
                    <td style="text-align: left" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center" colspan="3">
                        <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" Height="32px" Text="Upload" Width="112px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
&nbsp;<br />
            <br />
        </td>
    </tr>
</table>
</asp:Content>


