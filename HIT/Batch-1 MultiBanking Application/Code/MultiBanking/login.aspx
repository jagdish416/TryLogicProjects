<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 256px">
    <tr>
        <td>
            <div>
                <table class="auto-style1">
                    <tr>
                        <td align="center" class="auto-style2" colspan="2" style="font-size: x-large; color: #000000">
                            <asp:Label ID="lbllogin" runat="server" Text="LOGIN" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="auto-style2" colspan="2" style="font-size: x-large; color: #000000">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" class="auto-style2" colspan="2" style="font-size: x-large; color: #000000">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center"class="auto-style4" style="width: 887px; height: 34px;">
                            <asp:Label ID="lblsel" runat="server" Text="Select Type" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                        </td>
                        <td style="width: 881px; height: 34px;">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="128px">
                                <asp:ListItem>--SELECT--</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>Banker</asp:ListItem>
                                <asp:ListItem>Customer</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please  Select Type" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="auto-style4" style="width: 887px; height: 55px;">
                            <asp:Label ID="lblun" runat="server" Text="UserName" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                        </td>
                        <td style="width: 881px; height: 55px;">
                            <asp:TextBox ID="txtun" runat="server" Height="17px" Width="143px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtun" ErrorMessage="Please Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="auto-style4" style="width: 887px; height: 57px;">
                            <asp:Label ID="lblpw" runat="server" Text="Password" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                        </td>
                        <td style="width: 881px; height: 57px;">
                            <asp:TextBox ID="txtpw" runat="server" TextMode="Password" Height="20px" Width="144px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpw" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="auto-style3" colspan="2" style="height: 56px">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/buttons/Loginbtn.png" Width="101px" Height="46px" OnClick="ImageButton1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="auto-style4" colspan="2" style="height: 35px">
                            <asp:HyperLink ID="hlfp" runat="server" NavigateUrl="~/ForgotPass.aspx" style="text-align: right" ForeColor="#CC3300">Forget Password?</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="auto-style4" colspan="2" style="height: 34px">
                            <asp:HyperLink ID="hlcna" runat="server" NavigateUrl="~/Register.aspx" style="text-align: left" ForeColor="#CC3300">Create New Account</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
</table>
</asp:Content>

