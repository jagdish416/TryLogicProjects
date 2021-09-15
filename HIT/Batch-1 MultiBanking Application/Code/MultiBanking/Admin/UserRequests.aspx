<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UserRequests.aspx.cs" Inherits="Admin_UserRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%" align="center">
        <tr align="center">
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue" Text="USER REQUEST"></asp:Label>
            </td>
        </tr>
        <tr align="center">
            <td >
             <asp:GridView ID="GridView1" runat="server">
       
        <Columns>
        <asp:TemplateField Visible="false">
        <ItemTemplate>
        
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("CustomerID") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
              
        <asp:TemplateField>
        <ItemTemplate>
            <asp:Button ID="Button1" runat="server" Text="ACCEPT" OnClick="Button1_Click1"  />
        </ItemTemplate>
        </asp:TemplateField>
             <asp:TemplateField>
        <ItemTemplate>
            <asp:Button ID="Button2" runat="server" Text="REJECT" OnClick="Button2_Click1"  />
        </ItemTemplate>
        </asp:TemplateField>
        
        </Columns>
    </asp:GridView>
                </td>
        </tr>
        </table>
   
</asp:Content>

