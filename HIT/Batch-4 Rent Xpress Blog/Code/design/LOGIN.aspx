<%@ Page Title="" Language="C#" MasterPageFile="~/rent.master" AutoEventWireup="true" CodeFile="LOGIN.aspx.cs" Inherits="LOGIN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        <table width="100%">
        <tr align="center">

            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Login Form" Font-Names="Algerian" Font-Size="XX-Large" Font-Underline="True" ForeColor="#003399"></asp:Label>

            </td>
        </tr>
        <tr><td style="width: 479px"></td></tr>
        <tr><td style="width: 479px"></td></tr>
         <tr>

            <td align="center" style="width: 479px">

                <asp:Label ID="Label3" runat="server" Text="Select Type :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>

                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" ForeColor="#0000CC">
                    <asp:ListItem>---SELECT---</asp:ListItem>

                    <asp:ListItem>ADMIN</asp:ListItem>

                    <asp:ListItem>OWNER</asp:ListItem>
                    <asp:ListItem>BUYER</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 479px">
                <asp:Label ID="Label1" runat="server" Text="EmailID :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>

                <asp:TextBox ID="txtemail" runat="server" Font-Size="Large" ForeColor="#0000CC"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td align="center" style="width: 479px">
                <asp:Label ID="Label4" runat="server" Text="Password :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>

                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" ForeColor="#0000CC" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr><td></td></tr>
        <tr align="center">
            <td colspan="3">
                <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Img/Loginbtn.png" Height="51px" Width="118px" OnClick="ImageButton1_Click"/>

            </td>
        </tr>
        <tr><td>

            </td></tr>
        <tr><td></td>
            <td>
               <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">New Registration</asp:HyperLink>
            &nbsp;<span class="style1"><em>click here</em></span></td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
            &nbsp;<span class="style1"><em>click here</em></span>

            </td>
        </tr>
        </table>
    
</asp:Content>

