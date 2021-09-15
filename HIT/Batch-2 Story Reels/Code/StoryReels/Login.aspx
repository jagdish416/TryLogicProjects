<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <form id="form1" runat="server" style="background-color:  #E0E0E0">
          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <table class="nav-justified">
        <tr>
            <td align="center" bgcolor="#AE0057" colspan="2" style="color: #AA0055">
    <asp:Label ID="Label9" runat="server" Text="Login" Font-Bold="True" 
        Font-Size="X-Large" Font-Underline="True" ForeColor="White"></asp:Label>
            
                </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Select" ForeColor="#AC0056"></asp:Label>
            </td>
            <td align="left" class="text-left">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" >
                    <asp:ListItem>--SELECT--</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>User</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="User Name" ForeColor="#AC0056"></asp:Label>
            </td>
            <td class="text-left">
                <asp:TextBox ID="txtuname" runat="server" BorderColor="#666666" Font-Size="Large"></asp:TextBox>
                <asp:TextBoxWatermarkExtender ID="txtuname_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="txtuname" WatermarkText="UserName">
                </asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Password" ForeColor="#AC0056"></asp:Label>
            </td>
            <td class="text-left">
                <asp:TextBox ID="txtpass" runat="server" BorderColor="#666666" Font-Size="Large" BackColor="#E0E0E0" TextMode="Password"></asp:TextBox>
                <asp:TextBoxWatermarkExtender ID="txtpass_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="txtpass" WatermarkText="Password">
                </asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 24px">
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Medium" ForeColor="#333333" NavigateUrl="~/Register.aspx">New User..? REGISTER..!</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 35px">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Medium" ForeColor="#333333" NavigateUrl="~/ForgotPassword.aspx">Forgot Password..?</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Font-Size="Large" Text="Login" Height="45px" Width="104px" OnClick="Button1_Click" BackColor="#AC0056" ForeColor="White" />
            </td>
        </tr>
    </table>
</form>
</asp:Content>

