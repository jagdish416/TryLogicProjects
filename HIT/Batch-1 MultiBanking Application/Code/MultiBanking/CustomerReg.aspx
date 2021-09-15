<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="CustomerReg.aspx.cs" Inherits="CustomerReg" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <table style="width: 100%; text-align: center">
    <tr>
        <td>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style35" colspan="2" style="height: 66px"><strong>
                        
                            <asp:Label ID="lblr" runat="server" Text="Customer Registration" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333CC"></asp:Label>
                        
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style9" style="width: 354px; height: 49px;">
                        <asp:Label ID="lblfn" runat="server" Text="First Name" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style10" style="width: 842px; text-align: left; height: 49px;">
                        <asp:TextBox ID="txtfn" runat="server" Width="200px" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfn" ErrorMessage="Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="width: 354px; height: 43px;">
                        <asp:Label ID="lblln" runat="server" Text="Last Name" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style14" style="width: 842px; text-align: left; height: 43px;">
                        <asp:TextBox ID="txtln" runat="server" Width="200px" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtln" ErrorMessage="Please Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27" style="width: 354px; height: 38px;">
                        <asp:Label ID="lbldob" runat="server" Text="Date Of Birth" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style28" style="width: 842px; text-align: left; height: 38px;">
                        <asp:TextBox ID="txtdob" runat="server" TextMode="DateTime" Width="200px" Height="20px"></asp:TextBox>
                        <asp:CalendarExtender ID="txtdob_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtdob">
                        </asp:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtdob" ErrorMessage="Please Enter DOB" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="width: 354px; height: 57px;">
                        <asp:Label ID="lblg" runat="server" Text="Gender" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style8" style="width: 842px; height: 57px;">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server"  Width="96px" RepeatDirection="Horizontal" Font-Bold="True" Font-Size="Small" ForeColor="Black">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Please Select Gender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" style="width: 354px; height: 82px;">
                        <asp:Label ID="lbladd" runat="server" Text="Address" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style16" style="width: 842px; text-align: left; height: 82px;">
                        <asp:TextBox ID="txtadd" runat="server" Height="89px" TextMode="MultiLine" Width="248px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Address" ForeColor="Red" ControlToValidate="txtadd"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23" style="width: 354px; height: 48px;">
                        <asp:Label ID="lblan" runat="server" Text="Email Id" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style24" style="width: 842px; text-align: left; height: 48px;">
                        <asp:TextBox ID="txtemail" runat="server" Width="200px" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31" style="width: 354px; height: 45px;">
                        <asp:Label ID="lblpw" runat="server" Text="Password" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style32" style="width: 842px; text-align: left; height: 45px;">
                        <asp:TextBox ID="txtpw" runat="server" TextMode="Password" Width="200px" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpw" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33" style="width: 354px; height: 42px;">
                        <asp:Label ID="lblcpw" runat="server" Text="Confirm Password" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style34" style="width: 842px; text-align: left; height: 42px;">
                        <asp:TextBox ID="txtconfirmpass" runat="server" TextMode="Password" Width="200px" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtconfirmpass" ErrorMessage="Please Re-Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpw" ControlToValidate="txtconfirmpass" ErrorMessage="Please Enter Correct Password" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25" style="width: 354px; height: 45px;">
                        <asp:Label ID="lblmobile" runat="server" Text="Mobile" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style26" style="width: 842px; text-align: left; height: 45px;">
                        <asp:TextBox ID="txtmobile" runat="server" Width="200px" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtmobile" ErrorMessage="Please Enter Mobile Number" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2" style="height: 66px">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="39px" ImageUrl="~/buttons/register_buttonRed.png" Width="116px" OnClick="ImageButton1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

