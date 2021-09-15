<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPageUser.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="User_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        BackImageUrl="~/temp/images/row-bot-bg.jpg">
        <table style="width: 100%">
            <tr>
                <td style="width: 302px">
                    &nbsp;</td>
                <td style="width: 134px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 302px">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td colspan="2" 
                    style="font-size: large; color: #000000; font-family: 'MS Sans Serif'">
                    <strong style="font-size: x-large">FeedBack Form</strong></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 302px">
                    &nbsp;</td>
                <td style="width: 134px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 302px">
                    &nbsp;</td>
                <td style="color: #0000FF; width: 134px">
                    <strong style="font-size: large">Enter Name</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="251px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 302px">
                    &nbsp;</td>
                <td style="width: 134px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 302px">
                    &nbsp;</td>
                <td style="font-size: large; color: #0000FF; width: 134px">
                    <strong>Enter EmailId</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="249px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 302px">
                    &nbsp;</td>
                <td style="width: 134px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 302px">
                    &nbsp;</td>
                <td style="font-size: large; color: #0000FF; width: 134px">
                    <strong>Feedback</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="122px" TextMode="MultiLine" 
                        Width="249px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 302px">
                    &nbsp;</td>
                <td style="width: 134px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 302px">
                    &nbsp;</td>
                <td style="width: 134px">
                    &nbsp;</td>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="29px" 
                        ImageUrl="~/fedback.jpg" onclick="ImageButton1_Click" 
                        Width="133px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 302px">
                    &nbsp;</td>
                <td style="width: 134px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 302px">
                    &nbsp;</td>
                <td style="width: 134px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 302px">
                    &nbsp;</td>
                <td style="width: 134px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 302px">
                    &nbsp;</td>
                <td style="width: 134px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

