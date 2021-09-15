<%@ Page Title="" Language="C#" MasterPageFile="~/Owner/Owner.master" AutoEventWireup="true" CodeFile="Status.aspx.cs" Inherits="Owner_Status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="jag" runat="server">       <table width=100% 
        
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #9933FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="Status Form" Font-Bold="True" 
        Font-Size="XLarge" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>

</tr>
</table>
<br />
<br />
    <table width="100%">
        <tr align="center">
            <td>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    <Columns>
                        <asp:TemplateField Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%#Eval("OwnerId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UserName">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("Username") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PhoneNo">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("Pno") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Amount">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%#Eval("Amount") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Accept">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text="Accept" Font-Size="Large" ForeColor="Blue" OnClick="Button1_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                    </Columns>
                </asp:GridView>
            </td>
        </tr>

    </table>
        </form>

</asp:Content>

