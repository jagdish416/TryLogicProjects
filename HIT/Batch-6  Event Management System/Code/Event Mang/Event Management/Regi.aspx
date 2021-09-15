<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Regi.aspx.cs" Inherits="Regi" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#66FF99" Height="714px">
    
<div style="height: 721px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#FFFFCC" 
            BorderColor="#FFFF66" BorderWidth="10px" CssClass="20" ForeColor="Black" 
            Height="74px" style="margin-left: 0px" TabIndex="1" Text="USER REGISTRATION" 
            Width="440px" Font-Size="Larger" Enabled="False" />
&nbsp;&nbsp;&nbsp;&nbsp;
    
        <table class="style1" style="width: 1011px">
            <tr>
                <td class="style2" bgcolor="White" colspan="3" 
                    style="height: 32px; font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000">
                    
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
                    
                </td>
                <td bgcolor="White" style="height: 32px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="White" class="style2" 
                    
                    
                    style="height: 32px; font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; width: 219px">
                    &nbsp;</td>
                <td bgcolor="White" class="style2" 
                    style="height: 32px; font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; text-align: left; width: 204px">
                    FIRST NAME</td>
                <td bgcolor="White" style="height: 32px; width: 350px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td bgcolor="White" style="height: 32px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter First Name" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style2" 
                    
                    
                    style="height: 32px; font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; width: 219px">
                    &nbsp;</td>
                <td bgcolor="White" class="style2" 
                    style="height: 32px; font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; text-align: left; width: 204px">
                    LAST NAME</td>
                <td bgcolor="White" style="height: 32px; width: 350px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td bgcolor="White" style="height: 32px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter Last Name" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" bgcolor="White" 
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; width: 219px">
                    &nbsp;</td>
                <td bgcolor="White" class="style2" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; text-align: left; width: 204px">
                    GENDER</td>
                <td bgcolor="White" style="width: 350px">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                        RepeatDirection="Horizontal" style="font-weight: 700; color: #000000">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td bgcolor="White">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="RadioButtonList2" ErrorMessage="Select Gender" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" bgcolor="White" 
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; width: 219px">
                    &nbsp;</td>
                <td bgcolor="White" class="style2" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; text-align: left; width: 204px">
                    EMAIL</td>
                <td bgcolor="White" style="width: 350px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="198px"></asp:TextBox>
                </td>
                <td bgcolor="White">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter Email Address" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Enter Valid Email Id" style="color: #FF0000" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ControlToValidate="TextBox3"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style2" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; width: 219px">
                    &nbsp;</td>
                <td bgcolor="White" class="style2" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; text-align: left; width: 204px">
                    PASSWORD</td>
                <td bgcolor="White" style="width: 350px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="198px"></asp:TextBox>
                    <asp:PasswordStrength ID="TextBox4_PasswordStrength" runat="server" 
                        Enabled="True" MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" 
                        MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1" 
                        TargetControlID="TextBox4">
                    </asp:PasswordStrength>
                </td>
                <td bgcolor="White">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter Password" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style2" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; width: 219px">
                    &nbsp;</td>
                <td bgcolor="White" class="style2" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; text-align: left; width: 204px">
                    CONFIRM PASSWORD</td>
                <td bgcolor="White" style="width: 350px">
                    <asp:TextBox ID="TextBox18" runat="server" Width="197px" Height="25px"></asp:TextBox>
                </td>
                <td bgcolor="White">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox18" ControlToValidate="TextBox4" 
                        ErrorMessage="Password Not Matched" style="color: #FF0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" bgcolor="White" 
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; width: 219px">
                    &nbsp;</td>
                <td bgcolor="White" class="style2" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; text-align: left; width: 204px">
                    PHONE</td>
                <td bgcolor="White" style="width: 350px">
                    <asp:TextBox ID="TextBox5" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td bgcolor="White">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter Cell Number" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" bgcolor="White" 
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; width: 219px">
                    &nbsp;</td>
                <td bgcolor="White" class="style2" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #000000; text-align: left; width: 204px">
                    &nbsp;ADDRESS</td>
                <td bgcolor="White" style="width: 350px">
                    <asp:TextBox ID="TextBox6" runat="server" Height="107px" Width="265px"></asp:TextBox>
                </td>
                <td bgcolor="White">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Enter Address" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" bgcolor="White" style="width: 219px">
                    &nbsp;</td>
                <td bgcolor="White" class="style5" style="text-align: left; width: 204px">
                </td>
                <td class="style6" bgcolor="White" style="width: 350px">
                    </td>
                <td bgcolor="White" class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" bgcolor="White" 
                    style="font-size: medium; color: #000000; width: 219px">
                    &nbsp;</td>
                <td bgcolor="White" class="style2" 
                    style="font-size: medium; color: #000000; text-align: left; width: 204px">
                    <span style="font-family: 'Times New Roman', Times, serif">&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                </td>
                <td bgcolor="White" style="width: 350px">
                    <asp:Button ID="Button6" runat="server" Height="39px" onclick="Button6_Click" 
                        Text="Register" Width="118px" style="font-weight: 700" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Reset" 
                        Height="36px" Width="66px" />
                </td>
                <td bgcolor="White">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </asp:Panel>
</asp:Content>

