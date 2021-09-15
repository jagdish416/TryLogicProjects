<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="InboxU.aspx.cs" Inherits="User_Inbox" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Red" Text="INBOX"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Mr.
                <asp:Label ID="Label2" runat="server" ForeColor="#FF33CC"></asp:Label>
&nbsp;Please&nbsp; check your inbox</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>To check Inbox for common meassage click here<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Common Meassages</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
    
 <asp:GridView ID="gvrp" runat="server" Height="246px" Width="587px" OnSelectedIndexChanged="gvrp_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                            <asp:TemplateField Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="Label14" runat="server" Text='<%#Eval("Userid")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="gridviewfeedbck" runat="server" ImageUrl="../button_delete_violet.png" Height="45px" onclick="gridviewfeedbck_Click" 
                            Width="47px"  />
                                </ItemTemplate>
                            </asp:TemplateField>
                       <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="chat" runat="server" Text="Meassage Admin" Height="34px" onclick="chat_Click" 
                            Width="103px"  />
                                </ItemTemplate>
                            </asp:TemplateField>
                        
                       </Columns>
                         <EditRowStyle BackColor="#2461BF" />
                         <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                         </asp:GridView>
       
            </td>
        </tr>
        <tr>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table width="100%">
                            <tr>
                                <td class="auto-style5" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Red" Text="Send Meassage"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Blue" Text="UserId"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtuid" runat="server" Height="24px" Width="165px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Blue" Text="User Name"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="txtunm" runat="server" Height="24px" Width="165px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Blue" Text="Meassage"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2">
                                    <asp:TextBox ID="txtmsg" runat="server" Height="134px" TextMode="MultiLine" Width="552px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2">
                                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="Red" OnClick="Button2_Click" Text="Send Meassage" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2"></td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2"></td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2">&nbsp;</td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

