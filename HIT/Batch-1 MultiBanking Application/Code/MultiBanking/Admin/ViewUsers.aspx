<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewUsers.aspx.cs" Inherits="Admin_ViewUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <table class="auto-style1"style="width: 100%" align="center" >
                    <tr>
                        <td align="center">
                           
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue" Text="List Of Customers"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                      
                        <td>
                           
                            </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" Height="179px" Width="943px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <div>
                </div>
            </td>
        </tr>
    </table>
    </table>
</asp:Content>

