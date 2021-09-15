<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Admin_Reporta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
          .auto-style2 {
              height: 54px;
              text-align: left;
          }
          .auto-style3 {
              height: 54px;
              text-align: center;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="auto-style1">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="lblvf" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Red" Text="View FeedBack"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    ***Welcome Admin ***</td>
            </tr>
            <tr>
                <td>
                    Just click the below button to see the valuable Feedback's submitted by different Users
                    <br />
                    You can use this&nbsp; additional information about villages which has submitted by user ,to<br />
                    update the current village or you may update the list of viilages by adding a new village
                    <br />
                    information details into village list which helps users to select more villages</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#CC6699" Text="Click here to See the Feedback's"></asp:Label>
                    <asp:ImageButton ID="feedbckbtn" runat="server" Height="45px" ImageUrl="~/gwenview.png" OnClick="feedbckbtn_Click" Width="66px" />
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:GridView ID="gridviewfeedbck" runat="server" OnSelectedIndexChanged="gridviewfeedbck_SelectedIndexChanged" Height="190px" Width="592px">
                        <Columns>
                            <asp:TemplateField Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("fid")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="deletebtn" runat="server" ImageUrl="../button_delete_violet.png" Height="45px" onclick="gridviewfeedbck_Click" 
                            Width="47px"  />
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
</asp:Content>

