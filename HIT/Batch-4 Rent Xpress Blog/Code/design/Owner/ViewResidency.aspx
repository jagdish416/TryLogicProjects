<%@ Page Title="" Language="C#" MasterPageFile="~/Owner/Owner.master" AutoEventWireup="true" CodeFile="ViewResidency.aspx.cs" Inherits="Owner_ViewResidency" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="jag" runat="server">    <table width="100%">
        <tr align="center">
            <td>
                <asp:Label ID="Label1" runat="server" Text="View Residency" Font-Size="XX-Large" Font-Underline="True" ForeColor="#0000CC"></asp:Label></td>
        </tr>
      

    </table>
    <br />
      <br />
    <table width="100%">

        <tr>
            <td align="center">

                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                    <Columns>
                        <asp:TemplateField Visible="false">
                            <ItemTemplate>

                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("RentId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                 <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>

                                <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Img/Delete1.png" OnClick="ImageButton1_Click" Width="124px"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
        </form>
 
</asp:Content>

