<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="PastEventst.aspx.cs" Inherits="User_PastEventst" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 573px;
            height: 350px;
        }
        .auto-style2 {
            width: 580px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
            <tr>
                <td style="text-align: center" class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center" class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center" class="auto-style2">
                    <asp:Label ID="lblvf" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Red" Text="Past Events"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left" class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left" class="auto-style2" colspan="1">
                    <asp:GridView ID="gridviewfeedbck" runat="server"  Height="211px" Width="566px" CellPadding="4" GridLines="None" ForeColor="#333333" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("EventId")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("path1") %>' Highit="100%" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Village">
                                <ItemTemplate>
                                    <asp:Label ID="Lable2" runat="server" Text='<%#Eval("Village") %>' Highit="100%" />
                                </ItemTemplate>
                            </asp:TemplateField >
                            <asp:TemplateField HeaderText="District">
                                <ItemTemplate>
                                    <asp:Label ID="Lable3" runat="server" Text='<%#Eval("District") %>' Highit="100%" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="State">
                                <ItemTemplate>
                                    <asp:Label ID="Lable4" runat="server" Text='<%#Eval("State") %>' Highit="100%" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Subject">
                                <ItemTemplate>
                                    <asp:Label ID="Lable5" runat="server" Text='<%#Eval("Subject") %>' Highit="100%" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date">
                                <ItemTemplate>
                                    <asp:Label ID="Lable6" runat="server" Text='<%#Eval("Date") %>' Highit="100%" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Discription">
                                <ItemTemplate>
                                    <asp:Label ID="Lable7" runat="server" Text='<%#Eval("Discription") %>' Highit="100%" />
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
        </table>
</asp:Content>

