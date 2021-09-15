<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="User_Home" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 161px;
        }
        .auto-style3 {
             height: 25px;
             width: 163px;
         }
        .auto-style5 {
             height: 25px;
             width: 163px;
         }
        .auto-style2 {
             text-align: center;
         }
         .auto-style9 {
             text-align: right;
             width: 163px;
         }
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 92%;
        }
        .auto-style2 {
            width: 319px;
            text-align: center;
        }
        .auto-style3 {
            width: 319px;
            height: 23px;
            text-align: center;
        }
        .auto-style5 {
            width: 319px;
            height: 26px;
            text-align: right;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style10 {
            width: 319px;
            text-align: center;
            height: 40px;
        }
        .auto-style11 {
            height: 40px;
        }
        .auto-style12 {
            width: 319px;
            text-align: center;
            height: 32px;
        }
        .auto-style13 {
            height: 32px;
        }
        .auto-style14 {
            text-align: center;
            width: 319px;
            height: 29px;
        }
        .auto-style15 {
            height: 29px;
        }
        .auto-style18 {
            width: 319px;
            text-align: center;
            height: 35px;
        }
        .auto-style19 {
            height: 35px;
            text-align: center;
        }
        .auto-style20 {
            width: 319px;
            text-align: center;
            height: 31px;
        }
        .auto-style21 {
            height: 31px;
        }
        .auto-style22 {
            text-align: center;
            width: 163px;
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                
                    <asp:Image ID="Image1" runat="server" Height="145px" ImageUrl="~/user.png" Width="153px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblname" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#0066FF" Text="Welcome To" style="text-align: right"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp; 
                    <asp:Label ID="lblmsg" runat="server" Font-Size="Medium" ForeColor="Black" OnDataBinding="Page_Load"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Check your Inbox&nbsp; and see Replay Meaasages from admin To check your Inbox click here<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User/InboxU.aspx">Meassages</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                </tr>
            </table>
    <table class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF3300" OnDataBinding="Page_Load" Text="Profile"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#3333FF" Text="First Name"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="firstname" runat="server" ReadOnly="True" Height="27px" Width="156px"></asp:TextBox>
                    <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Edit</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#3333FF" Text="Last Name"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="lastname" runat="server" ReadOnly="True" Height="26px" Width="152px"></asp:TextBox>
                    <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click">Edit</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#3366FF" Text="User Name"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="username" runat="server" ReadOnly="True" Height="25px" Width="156px"></asp:TextBox>
                    <asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton11_Click">Edit</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#3333FF" Text="Password"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="password" runat="server" ReadOnly="True" Height="26px" Width="154px" TextMode="Password"></asp:TextBox>
                    <asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">Edit</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#3333FF" Text="DOB"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="dob" runat="server" ReadOnly="True" Height="27px" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#3333FF" Text="Location"></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:TextBox ID="location" runat="server" ReadOnly="True" Height="23px" Width="162px"></asp:TextBox>
                    <asp:LinkButton ID="LinkButton15" runat="server" OnClick="LinkButton15_Click">Edit</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#3333FF" Text="Pincode"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="pincode" runat="server" ReadOnly="True" Height="26px" Width="157px"></asp:TextBox>
                    <asp:LinkButton ID="LinkButton16" runat="server" OnClick="LinkButton16_Click">Edit</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="Red" Text="To Update your Profile PLease Click Here"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="54px" ImageUrl="~/update.png" OnClick="ImageButton1_Click" Width="58px" />
                </td>
            </tr>
        </table>
    <p>
    </p>
</asp:Content>

