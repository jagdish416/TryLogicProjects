<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Regester" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <form id="form1" runat="server" style="background-color:  #E0E0E0; color: #E0E0E0;">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <table class="nav-justified">
    <tr>
        <td align="center" bgcolor="#AE0057" colspan="2" style="color: #AA0055">
    <asp:Label ID="Label9" runat="server" Text="Register" Font-Bold="True" 
        Font-Size="X-Large" Font-Underline="True" ForeColor="White"></asp:Label>
            
                </td>
    </tr>
    <tr>
        <td style="height: 28px; width: 716px;"></td>
        <td style="height: 28px"></td>
    </tr>
    <tr>
        <td style="color: #FFFFFF; height: 42px;">
            <asp:Label ID="Label1" runat="server" Text="Name" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
        </td>
        <td align="left" style="height: 42px" class="text-left">
            <asp:TextBox ID="Txtname" runat="server" Font-Size="Larger" BorderColor="#666666"></asp:TextBox>
            <asp:TextBoxWatermarkExtender ID="Txtname_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="Txtname" WatermarkText="UserName">
            </asp:TextBoxWatermarkExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtname" ForeColor="Red" Font-Size="Medium">Enter Your Age</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF; height: 48px;"></td>
        <td style="height: 48px"></td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">
            <asp:Label ID="Label2" runat="server" Text="EmailId" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
        </td>
        <td style="color: #FFFFFF" align="left" class="text-left">
            <asp:TextBox ID="Txtemail" runat="server" Font-Size="Larger" BorderColor="#666666"></asp:TextBox>
            <asp:TextBoxWatermarkExtender ID="Txtemail_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="Txtemail" WatermarkText="EmailId">
            </asp:TextBoxWatermarkExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtemail" ErrorMessage="Enter Your EmailId" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txtemail" ErrorMessage="Invalid Email" Font-Size="Medium" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF; height: 50px;"></td>
        <td style="color: #FFFFFF; height: 50px;"></td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">
            <asp:Label ID="Label3" runat="server" Text="Password" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
        </td>
        <td style="color: #FFFFFF" class="text-left">
            <asp:TextBox ID="Txtpass" runat="server" Font-Size="Larger" BorderColor="#666666" BackColor="#E0E0E0" TextMode="Password"></asp:TextBox>
            <asp:TextBoxWatermarkExtender ID="Txtpass_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="Txtpass" WatermarkText="Password">
            </asp:TextBoxWatermarkExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcpass" ErrorMessage="Enter Your Password" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF; height: 48px;"></td>
        <td style="color: #FFFFFF; height: 48px;"></td>
    </tr>
    <tr>
        <td style="color: #FFFFFF; height: 42px;">
            <asp:Label ID="Label4" runat="server" Text="Confirm-Password" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
        </td>
        <td style="color: #FFFFFF; height: 42px;" class="text-left">
            <asp:TextBox ID="txtcpass" runat="server" Font-Size="Larger" BorderColor="#666666" BackColor="#E0E0E0" TextMode="Password" ></asp:TextBox>
            <asp:TextBoxWatermarkExtender ID="txtcpass_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="txtcpass" WatermarkText="Confirme-password">
            </asp:TextBoxWatermarkExtender>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Txtpass" ControlToValidate="txtcpass" ErrorMessage="Password MissMatch" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF; height: 47px;"></td>
        <td style="color: #FFFFFF; height: 47px;"></td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">
            <asp:Label ID="Label5" runat="server" Text="Age" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
        </td>
        <td style="color: #FFFFFF" class="text-left">
            <asp:TextBox ID="Txtage" runat="server" Font-Size="Larger" BorderColor="#666666"></asp:TextBox>
            <asp:TextBoxWatermarkExtender ID="Txtage_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="Txtage" WatermarkText="Age">
            </asp:TextBoxWatermarkExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txtage" ErrorMessage="Enter Your Age" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF; height: 47px;"></td>
        <td style="color: #FFFFFF; height: 47px;"></td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">
            <asp:Label ID="Label6" runat="server" Text="Gender" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
        </td>
        <td style="color: #FFFFFF" class="text-left">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="Medium" ForeColor="#666666" RepeatDirection="Horizontal">
                <asp:ListItem>MALE</asp:ListItem>
                <asp:ListItem>FEMALE</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF; height: 45px;"></td>
        <td style="color: #FFFFFF; height: 45px;"></td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">
            <asp:Label ID="Label7" runat="server" Text="D.O.B" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
        </td>
        <td style="color: #FFFFFF" class="text-left">
            <asp:TextBox ID="Txtdob" runat="server" Font-Size="Larger" BorderColor="#666666"></asp:TextBox>
            <asp:TextBoxWatermarkExtender ID="Txtdob_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="Txtdob" WatermarkText="SelectDate">
            </asp:TextBoxWatermarkExtender>
            <asp:CalendarExtender ID="Txtdob_CalendarExtender" runat="server" Enabled="True" TargetControlID="Txtdob">
            </asp:CalendarExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Txtdob" ErrorMessage="Enter D.OB" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF; height: 51px;"></td>
        <td style="color: #FFFFFF; height: 51px;"></td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">
            <asp:Label ID="Label8" runat="server" Text="State" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
        </td>
        <td style="color: #FFFFFF" class="text-left">
            <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Larger" BackColor="#999999">
                <asp:ListItem>--SELECT--</asp:ListItem>
                <asp:ListItem>Telangana</asp:ListItem>
                <asp:ListItem>AndhraPradesh</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>TamilNadu</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Your Location" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF; height: 45px;"></td>
        <td style="color: #FFFFFF; height: 45px;"></td>
    </tr>
    <tr>
        <td style="color: #FFFFFF; height: 51px;"></td>
        <td style="color: #FFFFFF; height: 51px;"></td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">&nbsp;</td>
        <td style="color: #FFFFFF">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="color: #FFFFFF">
            <asp:Button ID="Button1" runat="server" Text="Submit" Font-Size="Larger" OnClick="Button1_Click" BackColor="#AC0056" />
        </td>
    </tr>
</table>
</form>
    
</asp:Content>

