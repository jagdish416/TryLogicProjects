<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddEvent.aspx.cs" Inherits="Admin_AddEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td colspan="2" 
                style="text-align: justify; font-family: 'Segoe Print'; font-size: large; color: #FF0066">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add Event Details</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px; font-size: medium; font-family: 'Times New Roman', Times, serif; color: #333300">
                <b>Select Event</b></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    style="font-size: medium; font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #333300" 
                    Width="119px">
                    <asp:ListItem>--select--</asp:ListItem>
                    <asp:ListItem>Marriage</asp:ListItem>
                    <asp:ListItem>Enagaement</asp:ListItem>
                    <asp:ListItem>Birthday</asp:ListItem>
                    <asp:ListItem>Family Event</asp:ListItem>
                    <asp:ListItem>Collage Event</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #333300">
                <span style="font-size: medium">
            </td>
            <td>
                </span>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px; font-size: medium; font-family: 'Times New Roman', Times, serif; color: #333300">
                <b>Type</b></td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" 
                    style="font-size: medium; font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #333300" 
                    Width="119px">
                    <asp:ListItem>--select--</asp:ListItem>
                    <asp:ListItem>Level 1</asp:ListItem>
                    <asp:ListItem>Level 2</asp:ListItem>
                    <asp:ListItem>Level 3</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #333300">
                <span style="font-size: medium">
            </td>
            <td>
                </span>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px; font-size: medium; font-family: 'Times New Roman', Times, serif; color: #333300">
                <b>No. Of Person</b></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="font-size: medium; font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #333300"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #333300">
                <span style="font-size: medium">
            </td>
            <td>
                </span>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px; font-size: medium; font-family: 'Times New Roman', Times, serif; color: #333300">
                <b>Select Image</b></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" 
                    style="font-size: medium; font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #333300" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #333300">
                <span style="font-size: medium">
            </td>
            <td>
                </span>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px; font-size: medium; font-family: 'Times New Roman', Times, serif; color: #333300">
                <b>Price</b></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" 
                    style="font-size: medium; font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #333300"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px; height: 18px">
            </td>
            <td style="width: 130px; height: 18px">
            </td>
            <td style="height: 18px">
            </td>
            <td style="height: 18px">
            </td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="30px" onclick="Button1_Click" 
                    style="font-weight: 700" Text="Add Event" Width="127px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 372px">
                &nbsp;</td>
            <td style="width: 130px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

