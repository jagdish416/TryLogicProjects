<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Mydetails.aspx.cs" Inherits="User_Mydetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
<tr>
<td align="center">
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        GridLines="Horizontal" Font-Size="Large" ForeColor="Black">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("name") %>'></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email Id :"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("email") %>'></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Mobile Number :"></asp:Label>
            <asp:Label ID="Label6" runat="server" Text='<%#Eval("mobieno") %>'></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Location :"></asp:Label>
            <asp:Label ID="Label8" runat="server" Text='<%#Eval("location") %>'></asp:Label>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Date of Birth :"></asp:Label>
            <asp:Label ID="Label10" runat="server" Text='<%#Eval("DOB") %>'></asp:Label>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Passwoord :"></asp:Label>
            <asp:Label ID="Label12" runat="server" Text='<%#Eval("pass") %>'></asp:Label> 
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Change Password</asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
</td>
</tr>

</table>
</asp:Content>

