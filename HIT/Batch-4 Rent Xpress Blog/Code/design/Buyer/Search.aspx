<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/Buyer.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Buyer_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table width="100%">
        <tr align="center">
            <td>
                <asp:Label ID="Label1" runat="server" Text="Search Residency" Font-Size="XX-Large" Font-Underline="True" ForeColor="#0000CC"></asp:Label></td>
        </tr>
      

    </table>
    <br />
      <br />
    <table width="100%">

        <tr>
            <td>

                <asp:Label ID="Label2" runat="server" Text="Select State :" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#6600CC"></asp:Label>
            </td>
            <td style="width: 208px">
                <asp:DropDownList ID="ddlstate" runat="server" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#6600CC" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                    <asp:ListItem>TG</asp:ListItem>
                    <asp:ListItem>AP</asp:ListItem>
                    <asp:ListItem>BIHAR</asp:ListItem>
                    <asp:ListItem>DELHI</asp:ListItem>
                    <asp:ListItem>MAHARASHTRA</asp:ListItem>
                    <asp:ListItem>PONDICHERRY</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td >

                <asp:Label ID="Label3" runat="server" Text="Select City :" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#6600CC"></asp:Label>
            </td>
            <td style="width: 25px">
                <asp:DropDownList ID="ddlcity" runat="server" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#6600CC" AutoPostBack="True" OnSelectedIndexChanged="ddlcity_SelectedIndexChanged"></asp:DropDownList>
            </td>
            <td>

                <asp:Label ID="Label4" runat="server" Text="Select locality :" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#6600CC"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddllocality" runat="server" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#6600CC"></asp:DropDownList>
            </td>
            <td>
 <asp:Label ID="Label5" runat="server" Text="Home For :" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#6600CC"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#6600CC">
                     <asp:ListItem>--SELECT--</asp:ListItem>
                 <asp:ListItem>Single Boys</asp:ListItem>
                 <asp:ListItem>Single Girls</asp:ListItem>
                 <asp:ListItem>Families</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        </table>
    <table width="100%">

        <tr align="center">
            <td>

                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Img/search-button-png-hi.png" Height="50px" Width="139px" OnClick="ImageButton1_Click" />
            </td>
        </tr>
    </table>
    <table width="100%">
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False">
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
                        <asp:TemplateField Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="Label21" runat="server" Text='<%#Eval("StuId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    
                        <asp:TemplateField Visible="false">

                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%#Eval("RentId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Type">

                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%#Eval("Type1") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Area">

                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%#Eval("Area") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Amount">

                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%#Eval("Amount") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Address">

                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("Address") %>' ReadOnly="true" TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Description">

                            <ItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("Desc1") %>' ReadOnly="true" TextMode="MultiLine" ></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text="Request" BackColor="#FFCCFF" Font-Size="Large" ForeColor="#0000CC" OnClick="Button1_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>

            </td>
        </tr>
    </table>
</asp:Content>

