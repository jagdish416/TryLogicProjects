<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="ForgotPass.aspx.cs" Inherits="ForgotPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 304px;">
        <tr>
            <td style="height: 206px">
                <div>
                    <table class="auto-style1">
                        <tr align="center">
                            <td class="auto-style2" colspan="2">
                                <asp:Label ID="lblfpw" runat="server" style="text-align: center; font-weight: 700; font-size: x-large" Text="Forget Password" ForeColor="#3333FF"></asp:Label>
                            </td>
                        </tr>
                        
                        <tr align="center">
                            <td>
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" Text="SelectType"></asp:Label>
                            </td>
                            <td class="auto-style2" style="height: 35px">
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="97px">
                                    <asp:ListItem>--SELECT</asp:ListItem>
                                    <asp:ListItem>Banker</asp:ListItem>
                                    <asp:ListItem>Customer</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        
                        <tr align="center">
                            <td class="auto-style7" style="width: 359px; height: 54px;">
                                <asp:Label ID="lblce" runat="server" style="text-align: center" Text="Confirm Email" Font-Bold="True" ForeColor="White"></asp:Label>
                            </td>
                            <td class="auto-style8" style="width: 867px; height: 54px;">
                                <asp:TextBox ID="txtemail" runat="server" Width="156px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        
                        <tr align="center">
                            <td class="auto-style10" colspan="2" style="height: 58px">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="41px" ImageUrl="~/buttons/REQUEST-YELLOW-BUTTON.png" style="text-align: center" Width="111px" OnClick="ImageButton1_Click" />
                            </td>
                        </tr>
                        
                        <tr align="center">
                            <td class="auto-style10" colspan="2" style="height: 53px">
                                &nbsp;</td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

