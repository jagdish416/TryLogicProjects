<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddEvent1.aspx.cs" Inherits="Admin_AddEvent1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 587px;
            height: 478px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="adevent" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#3333CC" Text="Add Events"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="vlgnm" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF33CC" Text="Village Name"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="vlg" runat="server" Height="21px" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldis" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF33CC" Text="District"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="district" runat="server" Height="21px" Width="168px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblstate" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF33CC" Text="State"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="state" runat="server" Height="22px" Width="168px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblsub" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF33CC" Text="Subject"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="subject" runat="server" Height="21px" Width="167px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldate" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF33CC" Text="Date"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="date" runat="server" Height="24px" Width="169px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldiscription" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF33CC" Text="Discription"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="discription" runat="server" Height="20px" Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldate0" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF33CC" Text="Choose Image To Upload"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="26px" Width="260px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="imgadd" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red" Text="Click Here To Add Event"></asp:Label>
                <asp:ImageButton ID="addeventimgbttn" runat="server" ForeColor="#CC99FF" Height="58px" ImageUrl="~/plus.png" OnClick="addeventimgbtn" Width="89px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

