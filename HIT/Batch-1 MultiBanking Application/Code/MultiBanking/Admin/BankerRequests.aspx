<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="BankerRequests.aspx.cs" Inherits="Admin_BankerRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%" align="center">
        <tr align="center">
            <td>
                <asp:Label ID="Label1" runat="server" Text="BANKER REQUEST" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
        <tr align="center">
          <td>
                <asp:GridView ID="GridView1" runat="server">
                    <Columns>
        <asp:TemplateField Visible="false">
        <ItemTemplate>
        
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("BankerId") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField>
        <ItemTemplate>
            <asp:Button ID="Button1" runat="server" Text="ACCEPT" onclick="Button1_Click" />
        </ItemTemplate>
        </asp:TemplateField>
                        
        <asp:TemplateField>
        <ItemTemplate>
            <asp:Button ID="Button2" runat="server" Text="REJECT" onclick="Button2_Click" />
        </ItemTemplate>
        </asp:TemplateField>
        
        
        </Columns>
    </asp:GridView>
           
        </tr>
        </td>
    </table>
</asp:Content>

