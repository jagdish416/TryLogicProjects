<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="StoriesSrch.aspx.cs" Inherits="User_StoriesSrch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server" style="background-color:  #E0E0E0; color: #E0E0E0;">
        <table class="nav-justified">
            <tr>
                <td style="height: 17px; width: 224px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="#AC0056" Text="State"></asp:Label>
                </td>
                <td style="height: 17px; width: 208px;">&nbsp;
                    <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="True" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="White" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged" BackColor="#999999">
                       <asp:ListItem>--SELECT--</asp:ListItem>
                <asp:ListItem>Telangana</asp:ListItem>
                <asp:ListItem>AndhraPradesh</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Kerala</asp:ListItem>
                <asp:ListItem>TamilNadu</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
                    
                </td>
                <td style="height: 17px; width: 155px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="#AC0056" Text="City"></asp:Label>
                </td>
                <td style="height: 17px; width: 233px;" class="text-left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlcity" runat="server" AutoPostBack="True" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="White" OnSelectedIndexChanged="ddlcity_SelectedIndexChanged" BackColor="#999999">
                    </asp:DropDownList>
                </td>
                <td style="height: 17px" class="text-left">
                    <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="#AC0056" Text="Location"></asp:Label>
                </td>
                <td style="height: 17px" class="text-left">
                    <asp:DropDownList ID="ddllocation" runat="server" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="White" BackColor="#999999">
                    </asp:DropDownList>
                </td>
                <td style="height: 17px" class="text-left">
                    <asp:Button ID="Button1" runat="server" Font-Size="Medium" ForeColor="White" Text="Search" OnClick="Button1_Click" BackColor="#AC0056" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 224px">&nbsp;</td>
                <td class="modal-sm" style="width: 208px">&nbsp;</td>
                <td style="width: 155px">&nbsp;</td>
                <td class="modal-sm" style="width: 233px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 224px">&nbsp;</td>
                <td class="modal-sm" style="width: 208px">
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="#666666" Text="Location :"></asp:Label>
                </td>
                <td style="width: 155px">
                    <asp:Label ID="lblmsg" runat="server" Font-Size="X-Large" ForeColor="#666666"></asp:Label>
                </td>
                <td class="modal-sm" style="width: 233px">
                    <asp:Button ID="Button2" runat="server" Font-Size="X-Large" ForeColor="White" OnClick="Button2_Click" BackColor="#AC0056" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 224px">&nbsp;</td>
                <td class="modal-sm" style="width: 208px">&nbsp;</td>
                <td style="width: 155px">&nbsp;</td>
                <td class="modal-sm" style="width: 233px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 224px">&nbsp;</td>
                <td class="modal-sm" style="width: 208px">&nbsp;</td>
                <td style="width: 155px">&nbsp;</td>
                <td class="modal-sm" style="width: 233px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 224px">&nbsp;</td>
                <td class="modal-sm" style="width: 208px">&nbsp;</td>
                <td style="width: 155px">&nbsp;</td>
                <td class="modal-sm" style="width: 233px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            
            <tr align="center">
                <td colspan="7">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Size="X-Large" AutoGenerateColumns="False">
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                        <Columns>

                        <asp:TemplateField HeaderText="Image">

                            <ItemTemplate>
                                  <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Path") %>' Height="20%" Width="30%" />

                            </ItemTemplate>
                        </asp:TemplateField>
                            <asp:TemplateField HeaderText="Description">
                                <ItemTemplate>
                                     <asp:Label ID="Label5" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

