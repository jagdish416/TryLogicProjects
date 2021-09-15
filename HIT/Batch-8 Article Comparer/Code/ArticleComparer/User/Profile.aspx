<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="User_Profile" %>

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
        <td colspan="3" style="text-align: center; background-color: #6699FF;">
            <asp:Label ID="Label12" runat="server" Font-Italic="True" Font-Size="35pt" ForeColor="White" style="text-align: center" Text="PROFILE"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 595px">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 595px">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 595px; text-align: center;">
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#0066FF" Text=" Name:"></asp:Label>
        </td>
        <td style="width: 163px">
            <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Height="19px" Width="155px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 595px; text-align: center;">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 595px; text-align: center;">
            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#0066FF" Text="Address:"></asp:Label>
        </td>
        <td style="width: 163px">
            <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" Height="17px" Width="152px"></asp:TextBox>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton2_Click">Edit</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td style="width: 595px; text-align: center;">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 595px; text-align: center;">
            <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#0066FF" Text="Mobile:"></asp:Label>
        </td>
        <td style="width: 163px">
            <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" Height="17px" Width="155px"></asp:TextBox>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton1_Click">Edit</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td style="height: 20px; width: 595px; text-align: center;"></td>
        <td colspan="2" style="height: 20px"></td>
    </tr>
    <tr>
        <td style="width: 595px; text-align: center;">
            <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#0066FF" Text="Email Id:"></asp:Label>
        </td>
        <td style="width: 163px">
            <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" Height="17px" Width="154px"></asp:TextBox>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton5_Click">Edit</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td style="width: 595px; text-align: center;">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 595px; text-align: center;">
            <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#0066FF" Text="D.O.B"></asp:Label>
        </td>
        <td style="width: 163px">
            <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True" Height="18px" Width="153px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 595px; text-align: center;">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 595px; text-align: center;">
            <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#0066FF" Text="Password:"></asp:Label>
        </td>
        <td style="width: 163px">
            <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True" Height="20px" Width="154px"></asp:TextBox>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton3_Click">Edit</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td style="width: 595px; text-align: center;">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 595px; text-align: center;">
            <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#0066FF" Text="State:"></asp:Label>
        </td>
        <td style="width: 163px">
            <asp:TextBox ID="TextBox8" runat="server" ReadOnly="True" Height="22px" Width="154px"></asp:TextBox>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton4_Click">Edit</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td style="width: 595px">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center; background-color: #6699FF;">
            <asp:Button ID="Button2" runat="server" BackColor="#3366FF" Font-Size="X-Large" ForeColor="White" Height="37px" Text="Update" Width="123px" OnClick="Button2_Click" />
        </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">&nbsp;</td>
    </tr>
</table>
</asp:Content>


