<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ViewUsers.aspx.cs" Inherits="Admin_ViewUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table style="width: 100%">
        <tr>
            <td style="height: 52px;">
                &nbsp;</td>
            <td style="height: 52px;">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="112px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2" Width="622px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />

                    <Columns>
         <asp:TemplateField Visible="false">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text= '<%#Eval("Id") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
        <ItemTemplate>
        <asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/new folder/Delete.jpg" Height="63px" onclick="ImageButton1_Click" 
                            Width="127px" />
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>

                </asp:GridView>
                </td>
            
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="text-align: center">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="text-align: center">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="Button1" runat="server" Font-Italic="True" Font-Size="X-Large" Height="52px" PostBackUrl="~/Admin/Feedback.aspx" Text="VIEW FEEDBACK" Width="226px" />
            </td>
        </tr>
    </table>
</asp:Content>


