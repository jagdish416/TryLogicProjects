<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Registeration.aspx.cs" Inherits="Register" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <table style="width: 100%">
    <tr>
        <td colspan="4" style="text-align: center; color: #990000; height: 34px; background-color: #800000;">
            <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="35pt" ForeColor="White" Text="REGISTRATION"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="background-color: #FFFFFF;" colspan="4">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center; width: 604px">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#CC0000" Text="User Name:"></asp:Label>
        </td>
        <td style="width: 237px" class="auto-style1">
            <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large"></asp:TextBox>
        </td>
        <td colspan="2" class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center; width: 604px">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#CC0000" Text="Address:"></asp:Label>
        </td>
        <td style="width: 237px" class="auto-style1">
            <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large"></asp:TextBox>
        </td>
        <td colspan="2" class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="* Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center; width: 604px">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#CC0000" Text="Mobile:"></asp:Label>
        </td>
        <td style="width: 237px" class="auto-style1">
            <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large"></asp:TextBox>
        </td>
        <td colspan="2" class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4" ErrorMessage="* Enter Mobile No" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 604px; height: 20px;"></td>
        <td colspan="3" style="height: 20px"></td>
    </tr>
    <tr>
        <td style="text-align: center; width: 604px">
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#CC0000" Text="Email Id:"></asp:Label>
        </td>
        <td style="width: 237px" class="auto-style1">
            <asp:TextBox ID="TextBox5" runat="server" Font-Size="Large" ForeColor="Black"></asp:TextBox>
        </td>
        <td style="width: 137px" class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5" ErrorMessage="* Enter Email Id" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td style="text-align: left">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="* Invalid Email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="text-align: left"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center; width: 604px">
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#CC0000" Text="D.O.B"></asp:Label>
        </td>
        <td style="width: 237px" class="auto-style1">
            <asp:TextBox ID="TextBox6" runat="server" Font-Size="Large"></asp:TextBox>
            <asp:CalendarExtender ID="TextBox6_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox6">
            </asp:CalendarExtender>
        </td>
        <td colspan="2" class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox6" ErrorMessage="* Enter Age" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center; width: 604px; height: 31px;">
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#CC0000" Text="Gender:"></asp:Label>
        </td>
        <td style="width: 237px; height: 31px;">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td colspan="2" style="height: 31px" class="auto-style1">
            </td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center; width: 604px">
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#CC0000" Text="Password:"></asp:Label>
        </td>
        <td style="width: 237px" class="auto-style1">
            <asp:TextBox ID="TextBox7" runat="server" Font-Size="Large" TextMode="Password"></asp:TextBox>
        </td>
        <td colspan="2" class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox7" ErrorMessage="* Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 604px; height: 20px;"></td>
        <td colspan="3" style="height: 20px"></td>
    </tr>
    <tr>
        <td style="text-align: center; width: 604px">
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#CC0000" Text="Confirm Password:"></asp:Label>
        </td>
        <td style="width: 237px" class="auto-style1">
            <asp:TextBox ID="TextBox8" runat="server" Font-Size="Large" TextMode="Password"></asp:TextBox>
        </td>
        <td colspan="2" class="auto-style1">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="* Password Not Matched" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center; width: 604px">
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="#CC0000" Text="State:"></asp:Label>
        </td>
        <td style="width: 237px; text-align: left;">
            <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" style="text-align: left" Width="171px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Kerala</asp:ListItem>
                <asp:ListItem>Uttar Pradesh</asp:ListItem>
                <asp:ListItem>Andhra Pradesh</asp:ListItem>
                <asp:ListItem>Bihar</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Telangana</asp:ListItem>
                <asp:ListItem>Maharastra</asp:ListItem>
                <asp:ListItem>Punjab</asp:ListItem>
                <asp:ListItem>Tamil Nadu</asp:ListItem>
                <asp:ListItem>Odisa</asp:ListItem>
                <asp:ListItem>Gujarath</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td colspan="2" class="auto-style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center;" colspan="4">
            <asp:Button ID="Button1" runat="server" BackColor="Maroon" Font-Size="Larger" ForeColor="White" Height="39px" Text="Register" Width="125px" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 604px">&nbsp;</td>
        <td colspan="3">&nbsp;</td>
    </tr>
</table>
</asp:Content>