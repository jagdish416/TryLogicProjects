<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
        }
        .auto-style5 {
        }
        .auto-style6 {
            height: 23px;
            text-align: left;
        }
        .auto-style9 {
            height: 16px;
            text-align: center;
        }
        .auto-style10 {
            height: 22px;
            text-align: left;
        }
    </style>
    <style type="text/css">
        .auto-style2 {
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style13 {
            height: 23px;
            text-align: left;
            width: 28px;
        }
        .auto-style20 {
            width: 28px;
            height: 1px;
        }
        .auto-style21 {
            width: 28px;
        }
        .auto-style22 {
            height: 53px;
        }
        .auto-style23 {
            width: 28px;
            height: 53px;
        }
        .auto-style24 {
            width: 191px;
            height: 1px;
        }
        .auto-style25 {
            width: 191px;
            height: 53px;
        }
        .auto-style26 {
            height: 23px;
            text-align: left;
            width: 191px;
        }
        .auto-style27 {
            height: 17px;
        }
        .auto-style28 {
            height: 56px;
        }
        .auto-style29 {
            height: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <table class="auto-style1">
            <tr>
                <td class="auto-style9" colspan="4">
                    <asp:Label ID="Lbl1" runat="server" BackColor="Silver" BorderColor="Black" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Strikeout="False" ForeColor="#FF3300" Text="Registration "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="4"> </td>
            </tr>
            <tr>
                <td class="auto-style24" style="font-style: italic; font-weight: bold">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Lblname" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#0033CC" Text="First Name"></asp:Label>
</td>
                <td class="auto-style20" style="font-style: italic; font-weight: bold" colspan="2">
                   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtfirst" runat="server" Height="25px" Width="177px" OnTextChanged="txtfirst_TextChanged1"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtfirst_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="txtfirst" WatermarkText="enter your name">
                    </asp:TextBoxWatermarkExtender>
                    </td>
                <td class="auto-style29">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirst" ErrorMessage="Please enter the name" Font-Size="Small" ForeColor="Red" Font-Italic="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style27" style="font-style: italic; font-weight: bold">
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblsur" runat="server" Font-Size="Large" ForeColor="Blue" Text="Last Name"></asp:Label>
 </td>
                <td class="auto-style27" style="font-style: italic; font-weight: bold">
                    <br />
                    <asp:TextBox ID="txtsur" runat="server" Font-Size="Small" ForeColor="Black" Width="176px" Height="25px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtsur_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="txtsur" WatermarkText="enter last name">
                    </asp:TextBoxWatermarkExtender>
                    <br />
                    <br />
                    <br />
                </td>
                <td colspan="2" class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsur" ErrorMessage="Please enter the last name" Font-Size="Small" ForeColor="Red" Font-Italic="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28" style="font-style: italic; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbluser" runat="server" Font-Size="Large" ForeColor="Blue" Text="User Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style28" style="font-style: italic; font-weight: bold">
                    <asp:TextBox ID="txtuser" runat="server" Height="25px" Width="178px" Font-Size="Small"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtuser_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="txtuser" WatermarkText="enter user name ">
                    </asp:TextBoxWatermarkExtender>
                    <br />
                   
                    <br />
                </td>
                <td colspan="2" class="auto-style28">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtuser" ErrorMessage="Please enter the  user name" Font-Size="Small" ForeColor="Red" Font-Italic="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-style: italic; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblpas" runat="server" Font-Size="Large" ForeColor="Blue" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style21" style="font-style: italic; font-weight: bold" colspan="2">
                    <br />
                    <asp:TextBox ID="txtpass" runat="server" Font-Size="Small" ForeColor="Black" TextMode="Password" Height="25px" Width="175px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtpass_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="txtpass" WatermarkText="enter password">
                    </asp:TextBoxWatermarkExtender>
                    &nbsp;
                    <br />
                    </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" style="font-style: italic; font-weight: bold">
                    &nbsp;&nbsp;
                    <asp:Label ID="lblcnfpass" runat="server" Font-Size="Large" ForeColor="Blue" Text="Confirm Password"></asp:Label>
 </td>
                <td class="auto-style23" style="font-style: italic; font-weight: bold" colspan="2">
                    <br />
                    <asp:TextBox ID="txtcnfpass" runat="server" Font-Size="Small" ForeColor="Black" TextMode="Password" Height="22px" Width="171px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtcnfpass_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="txtcnfpass" WatermarkText="enter password">
                    </asp:TextBoxWatermarkExtender>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style22">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcnfpass" ErrorMessage="Re-enter password" Font-Size="Small" ForeColor="Red" Font-Italic="True">Re-Enter Password</asp:RequiredFieldValidator>

                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcnfpass" ErrorMessage="Password mismatch" Font-Size="Small" ForeColor="Red" Font-Italic="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26" style="font-style: italic; font-weight: bold">&nbsp;&nbsp;&nbsp;<asp:Label ID="lblcal" runat="server" Font-Size="Large" ForeColor="Blue" Text="D O B"></asp:Label>
                </td>
                <td class="auto-style13" style="font-style: italic; font-weight: bold" colspan="2">
                    <br />
                    <asp:TextBox ID="txtcal" runat="server" Font-Size="Large" ForeColor="Black" Height="22px" Width="167px"></asp:TextBox>
                    <asp:CalendarExtender ID="txtcal_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtcal">
                    </asp:CalendarExtender>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style2">
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcal" ErrorMessage=" Please enter D O B" Font-Size="Small" ForeColor="Red" Font-Italic="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26" style="font-style: italic; font-weight: bold">&nbsp;&nbsp;&nbsp;<asp:Label ID="lblgen" runat="server" Font-Size="Large" ForeColor="Blue" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style13" style="font-style: italic; font-weight: bold" colspan="2">&nbsp;&nbsp;&nbsp;
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style2"><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Please select gender" Font-Size="Small" ForeColor="Red" Font-Italic="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26" style="font-style: italic; font-weight: bold">&nbsp;&nbsp;&nbsp;<asp:Label ID="lblloc" runat="server" Font-Size="Large" ForeColor="Blue" Text="Location"></asp:Label>
                </td>
                <td class="auto-style13" style="font-style: italic; font-weight: bold" colspan="2">
                    <br />
                    <asp:TextBox ID="txtloc" runat="server" Font-Size="Small" ForeColor="Black" Height="19px" Width="169px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtloc_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="txtloc" WatermarkText="enter location">
                    </asp:TextBoxWatermarkExtender>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style2">
        
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtloc" ErrorMessage="Please Enter Your Location" Font-Size="Small" ForeColor="Red" Font-Italic="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26" style="font-style: italic; font-weight: bold">&nbsp;&nbsp;&nbsp;<asp:Label ID="lblpin" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Blue" Text="Pincode"></asp:Label>
                </td>
                <td class="auto-style13" style="font-style: italic; font-weight: bold" colspan="2">
                    <br />
                    <asp:TextBox ID="txtpin" runat="server" Font-Size="Small" ForeColor="Black" Height="19px" Width="170px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtpin_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="txtpin" WatermarkText="enter pincode">
                    </asp:TextBoxWatermarkExtender>
&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please enter your location's pincode" Font-Size="Small" ForeColor="Red" ControlToValidate="txtpin"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-style: italic; font-weight: bold" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="4" style="font-style: italic; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text="Sign Up" Font-Italic="True" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
</asp:Content>