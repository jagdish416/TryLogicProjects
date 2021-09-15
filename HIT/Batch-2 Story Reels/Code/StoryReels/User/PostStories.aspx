<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="PostStories.aspx.cs" Inherits="User_PostStories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form id="form1" runat="server" style="background-color:  #E0E0E0; color: #E0E0E0;">
        <table class="nav-justified">
    <tr>
        <td align="center" bgcolor="#AE0057" colspan="2" style="color: #AA0055">
    <asp:Label ID="Label6" runat="server" Text="What's Your Story" Font-Bold="True" 
        Font-Size="X-Large" Font-Underline="True" ForeColor="White"></asp:Label>
            </td>
    </tr>
    <tr>
        <td style="width: 574px; height: 37px">
            &nbsp;</td>
        <td class="text-left" style="height: 37px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 574px; height: 37px">
            <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Select State" ForeColor="#AC0056"></asp:Label>
        </td>
        <td class="text-left" style="height: 37px">
            <asp:DropDownList ID="ddlstate" runat="server" Font-Size="Medium" BackColor="#999999" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged" >
                <asp:ListItem>--SELECT--</asp:ListItem>
                <asp:ListItem>Telangana</asp:ListItem>
                <asp:ListItem>AndhraPradesh</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Kerala</asp:ListItem>
                <asp:ListItem>TamilNadu</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlstate" ErrorMessage="enter state" Font-Size="Small" ForeColor="Red" InitialValue="--SELECT--"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 574px; height: 37px">
            <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Select City" ForeColor="#AC0056"></asp:Label>
        </td>
        <td class="text-left" style="height: 37px">
            <asp:DropDownList ID="ddlcity" runat="server" Font-Size="Medium" BackColor="#999999" AutoPostBack="True" OnSelectedIndexChanged="ddlcity_SelectedIndexChanged">
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlcity" ErrorMessage="enter city" Font-Size="Small" ForeColor="Red" InitialValue="--SELECT--"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 574px; height: 43px">
            <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Location" ForeColor="#AC0056"></asp:Label>
        </td>
        <td class="text-left" style="height: 43px">
            <asp:DropDownList ID="ddllocation" runat="server" Font-Size="Medium" BackColor="#999999">
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddllocation" ErrorMessage="enter location" Font-Size="Small" ForeColor="Red" InitialValue="--SELECT--"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 574px; height: 26px">
            <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Upload Photo" ForeColor="#AC0056"></asp:Label>
        </td>
        <td style="height: 26px">
            <asp:FileUpload ID="FileUpload1" runat="server" Font-Size="Medium" BorderColor="#666666" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Uplode Photo" Font-Size="Small" ForeColor="Red" InitialValue="*"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 574px; height: 37px">
            <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Your Story" ForeColor="#AC0056"></asp:Label>
        </td>
        <td class="text-left" style="height: 37px">
            <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" BorderColor="#666666" Height="62px" TextMode="MultiLine" Width="190px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 574px; height: 17px"></td>
        <td style="height: 17px"></td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" Font-Size="Large" Text="Post" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" BackColor="#AC0056" />
        </td>
    </tr>
    <tr>
        <td style="width: 574px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
    </form>

</asp:Content>

