<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Buildasite.aspx.cs" Inherits="Buildasite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="font-family: 'Bell MT'; font-size: xx-large">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1>
    <table style="width: 100%; background-image: url('temp/assassin%27s-creed-iv-black-flag-game-wallpaper-19.jpg')">
        <tr>
            <td colspan="2">
                <h1 align="center" style="font-family: 'Bauhaus 93'; font-size: xx-large">
                    Application form</h1>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="196px" required="required" title="Please enter your Name" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                Father name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"  required="required" title="Please Email id"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                Gender:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="10" required="required" title="Please Enter your Mobile Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                E-mail Id :</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" required="required" type="email" 
                    Width="201px"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px">
                Phone number :</td>
            <td>
                <asp:TextBox ID="txtMobile" runat="server" MaxLength="10" 
                    pattern="^\d\d\d\d\d\d\d\d\d\d" title="Please Enter Mobile Number" 
                    required="required" Width="199px"></asp:TextBox>
            &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px">
                Educational Qulification :</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Columns="20" Height="30px" 
                    Rows="200" Width="161px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Next" 
                    Width="79px" />
            </td>
        </tr>
    </table>
</asp:Content>

