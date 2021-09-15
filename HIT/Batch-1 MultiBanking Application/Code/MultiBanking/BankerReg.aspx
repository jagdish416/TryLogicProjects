<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="BankerReg.aspx.cs" Inherits="BankerReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; text-align: center; height: 444px;">
    <tr>
        <td>
            <table class="auto-style1">
                <tr>
                    <td align="center"  class="auto-style5" colspan="2" style="height: 80px"><strong>
                       
                            <asp:Label ID="lbbr" runat="server" Text="Banker Registration" ForeColor="Blue" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                       
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style7" style="width: 379px; height: 42px;">
                        <asp:Label ID="lblfn" runat="server" Text="First Name" Font-Bold="True" ForeColor="Black" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style8" style="width: 843px; text-align: left; height: 42px;">
                        <asp:TextBox ID="txtfn" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfn" ErrorMessage="Please  Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" style="width: 379px; height: 47px;">
                        <asp:Label ID="lblln" runat="server" Text="Last Name" Font-Bold="True" ForeColor="Black" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style10" style="width: 843px; text-align: left; height: 47px;">
                        <asp:TextBox ID="txtln" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtln" ErrorMessage="Please Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="width: 379px">
                        <asp:Label ID="lblg" runat="server" Text="Gender" Font-Bold="True" ForeColor="Black" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style4" style="width: 843px">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="96px" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Please Select Gender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="width: 379px; height: 102px;">
                        <asp:Label ID="lbladd" runat="server" Text="Address" Font-Bold="True" ForeColor="Black" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style4" style="width: 843px; text-align: left; height: 102px;">
                        <asp:TextBox ID="txtadd" runat="server" Height="89px" TextMode="MultiLine" Width="251px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtadd" ErrorMessage="Please Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="width: 379px; height: 57px;">
                        <asp:Label ID="lblb" runat="server" Text="Bank" Font-Bold="True" ForeColor="Black" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style12" style="width: 843px; text-align: left; height: 57px;">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="132px">
                            <asp:ListItem>--select--</asp:ListItem>
                            
                            <asp:ListItem>SBI</asp:ListItem>
                           <asp:ListItem>HDFC</asp:ListItem>
                            <asp:ListItem>ICICI</asp:ListItem>
                              <asp:ListItem>AXIS</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please Select Bank" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="width: 379px; height: 54px;">
                        <asp:Label ID="lbleid" runat="server" Text="Employe ID" Font-Bold="True" ForeColor="Black" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style14" style="width: 843px; text-align: left; height: 54px;">
                        <asp:TextBox ID="txtempid" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtempid" ErrorMessage="Please Enter Employe ID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="width: 379px; height: 42px;">
                        <asp:Label ID="lblpw" runat="server" Text="Password" Font-Bold="True" ForeColor="Black" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style14" style="width: 843px; text-align: left; height: 42px;">
                        <asp:TextBox ID="txtpw" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpw" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="width: 379px; height: 54px;">
                        <asp:Label ID="lblcpw" runat="server" Text="Confirm Password" Font-Bold="True" ForeColor="Black" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style14" style="width: 843px; text-align: left; height: 54px;">
                        <asp:TextBox ID="txtconfirmpass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtconfirmpass" ErrorMessage="Please Re-Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpw" ControlToValidate="txtconfirmpass" ErrorMessage="Please Enter Valid Password" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17" style="width: 379px; height: 47px;">
                        <asp:Label ID="lblbpn" runat="server" Text="Bank Phone No" Font-Bold="True" ForeColor="Black" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style18" style="width: 843px; text-align: left; height: 47px;">
                        <asp:TextBox ID="txtbankphone" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtbankphone" ErrorMessage="Please Enter Phone No" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2" style="height: 48px">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" ImageUrl="~/buttons/register_buttonRed.png" Width="90px" OnClick="ImageButton1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2" style="height: 24px"></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

