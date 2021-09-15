<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="User_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server" style="background-color:  #E0E0E0; color: #E0E0E0;">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   
    
        <table align="center">
            <tr >
                <td>
                    <asp:GridView ID="GridView1" runat="server" Width="336px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%#Eval("UserId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Message">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("Message") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        <asp:TemplateField HeaderText="Respond">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text="ANSWER" OnClick="Button1_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table align="center">
                    <tr>
                         <td align="center" bgcolor="#AE0057" colspan="2" style="color: #AA0055">
    <asp:Label ID="Label6" runat="server" Text="Answer Queries" Font-Bold="True" 
        Font-Size="X-Large" Font-Underline="True" ForeColor="White"></asp:Label>
                    </tr>
                    <tr>
                        <td style="width: 239px">
                            <asp:Label ID="Label1" runat="server" Text="Question" Font-Size="Larger" ForeColor="#AC0056"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" BorderColor="#666666" Font-Size="Medium" Height="60px" ReadOnly="True" TextMode="MultiLine" Width="161px"></asp:TextBox>

                        </td>
                    </tr>
                     <tr>
                        <td style="width: 239px">
                            <asp:Label ID="Label8" runat="server" Font-Size="Larger" ForeColor="#AC0056" Text="Answer"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" BorderColor="#666666" Font-Size="Medium" Height="67px" TextMode="MultiLine" Width="180px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button2" runat="server" Height="39px" Text="POST" Width="73px" OnClick="Button2_Click" BackColor="#AC0056" ForeColor="White" />
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
       
   
    
</form>
</asp:Content>

