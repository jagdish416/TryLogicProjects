<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Webhosting.aspx.cs" Inherits="Webhosting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table style="width: 100%; height: 338px; background-image: url('Part%202/temp/assassin%27s-creed-iv-black-flag-game-wallpaper-19.jpg')">
        <tr>
            <td style="width: 185px; height: 44px;">
                Key for Upload 1 :</td>
            <td style="height: 44px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 185px; height: 26px;">
                Upload 1: </td>
            <td style="height: 26px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
                Key for Upload 2 :</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
                upload 2 :</td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
                Key for Upload 3 :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
            Upload 3 :</td>
            <td>
                <asp:FileUpload ID="FileUpload3" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    
</asp:Content>

