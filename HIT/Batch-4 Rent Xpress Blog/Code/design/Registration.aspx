<%@ Page Title="" Language="C#" MasterPageFile="~/rent.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <table width="100%">
        <tr align="center">

            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Registration Form" Font-Names="Algerian" Font-Size="XX-Large" Font-Underline="True" ForeColor="#003399"></asp:Label>

            </td>
        </tr>
        <tr><td style="width: 479px"></td></tr>
        <tr><td style="width: 479px"></td></tr>
        <tr>

            <td align="center" style="width: 479px">

                <asp:Label ID="Label3" runat="server" Text="Select Type :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>

                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" ForeColor="#0000CC" AppendDataBoundItems="true">
                    <asp:ListItem>---SELECT---</asp:ListItem>
                    <asp:ListItem>OWNER</asp:ListItem>
                    <asp:ListItem>BUYER</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="Red" InitialValue="---SELECT---"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>

            <td align="center" style="width: 479px">

                <asp:Label ID="Label1" runat="server" Text="Name :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>

                <asp:TextBox ID="txtname" runat="server" Font-Size="Large" ForeColor="#0000CC"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtname" ErrorMessage="Only Characters" ForeColor="Red" ValidationExpression="^[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>

            <td align="center" style="width: 479px">

                <asp:Label ID="Label4" runat="server" Text="EmailID :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>

                <asp:TextBox ID="txtemail" runat="server" Font-Size="Large" ForeColor="#0000CC"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter EmailID" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="InvalidEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 479px">

                <asp:Label ID="Label9" runat="server" Text="Gender :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>

                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Font-Size="Large" ForeColor="#0000CC">
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Select Gender" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>

            <td align="center" style="width: 479px">

                <asp:Label ID="Label5" runat="server" Text="Date Of Birth :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>

                <asp:TextBox ID="txtdob" runat="server" Font-Size="Large" ForeColor="#0000CC"></asp:TextBox>
                <asp:CalendarExtender ID="txtdob_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtdob">
                </asp:CalendarExtender>
            </td>
        </tr>
        <tr>

            <td align="center" style="width: 479px">

                <asp:Label ID="Label6" runat="server" Text="Phone Number :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>

                <asp:TextBox ID="txtpno" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtpno" ErrorMessage="Enter 10 digit mobile no" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>

            <td align="center" style="width: 479px">

                <asp:Label ID="Label7" runat="server" Text="State :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>

                <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="Large" ForeColor="#0000CC">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                    <asp:ListItem>TG</asp:ListItem>
                    <asp:ListItem>AP</asp:ListItem>
                    <asp:ListItem>DELHI</asp:ListItem>
                    <asp:ListItem>BIHAR</asp:ListItem>
                    <asp:ListItem>PUNE</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>

            <td align="center" style="width: 479px">

                <asp:Label ID="Label8" runat="server" Text="Address :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>

                <asp:TextBox ID="txtadd" runat="server" Height="69px" TextMode="MultiLine" Width="196px" Font-Size="Large" ForeColor="#0000CC"></asp:TextBox>
            </td>
        </tr>
        <tr>

            <td align="center" style="width: 479px">

                <asp:Label ID="Label10" runat="server" Text="Password :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>

                <asp:TextBox ID="TextBox1" runat="server"  Font-Size="Large" ForeColor="#0000CC" TextMode="Password"></asp:TextBox>
                <asp:PasswordStrength ID="TextBox1_PasswordStrength" runat="server" Enabled="True" MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" PreferredPasswordLength="3" TargetControlID="TextBox1">
                </asp:PasswordStrength>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>

            <td align="center" style="width: 479px">

                <asp:Label ID="Label11" runat="server" Text="Conform Password :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td>

                <asp:TextBox ID="TextBox2" runat="server"  Font-Size="Large" ForeColor="#0000CC" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>

            <td></td>
        </tr>
        <tr align="center">

            <td colspan="2">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Img/green_button_register.png" Height="44px" Width="123px" OnClick="ImageButton1_Click" />
            </td>
        </tr>
    </table>
   
</asp:Content>

