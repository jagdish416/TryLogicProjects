<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="UpdateInformation.aspx.cs" Inherits="Admin_UpdateInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="lblui" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Red" Text="Update Information"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                   <asp:GridView ID="gridviewfeedbck" runat="server" Height="190px" Width="592px" AutoGenerateColumns="False" OnRowCancelingEdit="gridviewfeedbck_RowCancelingEdit" OnRowEditing="gridviewfeedbck_RowEditing" OnRowUpdating="gridviewfeedbck_RowUpdating">
                        <Columns>
                             <asp:TemplateField Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("vid")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                             <asp:TemplateField HeaderText="VillageName">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("village")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                           <asp:TemplateField HeaderText="District">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("district")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="State">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("state")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Description">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("discription")%>'></asp:Label>
                                </ItemTemplate>
                                 <EditItemTemplate>

                                     <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Text='<%#Eval("discription")%>'></asp:TextBox>
                                 </EditItemTemplate>
                            </asp:TemplateField>
                            

                             <asp:CommandField ShowEditButton="True" />
                            

                        </Columns>
                    </asp:GridView>
                   
     
                </td>
            </tr>
        </table>
</asp:Content>

