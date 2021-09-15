<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="User_UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server" style="background-color:  #E0E0E0; color: #E0E0E0;">
    <table width="100%" >
<tr>
<td style="height: 219px">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/user-icon1.png" 
        Height="243px" Width="242px"/>
</td>



<td align="center" style="font-family: 'Palatino Linotype'; font-size: Large; height: 219px;">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="HI" Font-Size="XX-Large" 
        BackColor="#E0E0E0" ForeColor="#666666"></asp:Label>&nbsp
    <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="XX-Large" 
        BackColor="#E0E0E0" ForeColor="#AC0056"></asp:Label>&nbsp
    <asp:Label ID="Label4" runat="server" Text="Welcome" Font-Size="XX-Large" 
        BackColor="#E0E0E0" ForeColor="#666666"></asp:Label>
</td>
</tr>
</table>
         <table width="100%">

             <tr align="center">
                 <td >
                     <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" Height="208px" Width="231px">
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
                             <asp:TemplateField HeaderText="">
                                 <ItemTemplate>
                                     <asp:Image ID="Image2" runat="server" ImageUrl='<%#Eval("Path") %>' Height="05%" Width="15%"/>
                                 </ItemTemplate>
                              
                             </asp:TemplateField>
                              <asp:TemplateField HeaderText="Description">
                                 <ItemTemplate>
                                     <asp:Label ID="Label3" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                                 </ItemTemplate>
                              
                             </asp:TemplateField>
                         </Columns>
                     </asp:GridView>
                 </td>
             </tr>
         </table>
         <br />
         <br />
         </form>
</asp:Content>

