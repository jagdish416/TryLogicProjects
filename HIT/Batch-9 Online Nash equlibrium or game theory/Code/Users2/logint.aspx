<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="logint.aspx.cs" Inherits="logint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="width: 456px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 456px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 456px">
                <asp:Label ID="Label3" runat="server" Text="Select Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>---SELECT---</asp:ListItem>
                    <asp:ListItem>USER</asp:ListItem>
                    <asp:ListItem>ADMIN</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 456px">
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Txtusername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 18px; width: 456px">
                <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
            </td>
            <td style="height: 18px">
                <asp:TextBox ID="Txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 456px">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" 
                    Text="Login" />
            </td>
        </tr>
        <tr>
            <td style="width: 456px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 456px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>

