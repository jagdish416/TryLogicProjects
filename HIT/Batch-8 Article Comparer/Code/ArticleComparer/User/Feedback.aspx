<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="User_Feedback" %>

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
            <td style="border: medium solid #6699FF">
                <table style="width: 100%">
                    <tr>
                        <td colspan="2" style="text-align: center; font-size: larger; background-color: #99CCFF;">
                            <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="35pt" ForeColor="White" style="text-align: center; font-size: xx-large" Text="FEEDBACK"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 552px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center; width: 552px; height: 35px;">
                            <asp:Label ID="Label2" runat="server" Font-Size="16pt" ForeColor="#0066FF" Text="User Name:" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="height: 35px">
                            <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="181px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 552px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 552px; text-align: center; height: 138px">
                            <asp:Label ID="Label3" runat="server" Font-Size="16pt" ForeColor="#0066CC" Text="Feed Back:" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="height: 138px">
                            <asp:TextBox ID="TextBox2" runat="server" Height="128px" TextMode="MultiLine" Width="439px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 552px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Button ID="Button1" runat="server" BackColor="#6699FF" Font-Size="X-Large" Height="38px" style="text-align: center" Text="Submit" Width="110px" OnClick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 552px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


