

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ViewPosts.aspx.cs" Inherits="ViewPosts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server" style="background-color:  #E0E0E0; color: #E0E0E0;">
       
   
    
        <table align="center">
            <tr >
                <td>
    <asp:GridView ID="GridView1" runat="server">
      
       
   
    
       
        <Columns>
         <asp:TemplateField Visible="false">
        <ItemTemplate>
        
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("FieldId") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
             <asp:TemplateField HeaderText="image">
        <ItemTemplate>
        
            <asp:Image ID="Image1" runat="server" height="150px" Width="150px" ImageUrl='<%#Eval("Path") %>'/>
        </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
        <ItemTemplate>
        
            <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" BackColor="#AC0056" ForeColor="White" />
        </ItemTemplate>
        </asp:TemplateField>

        </Columns>
    </asp:GridView>
       </td>
            </tr>
        </table>
    </form>

</asp:Content>

