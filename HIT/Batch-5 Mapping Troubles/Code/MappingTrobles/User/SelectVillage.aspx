<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="SelectVillage.aspx.cs" Inherits="User_SelectVillage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
      <style type="text/css">
          .style1
        {
            width: 91%;
        }
        .style2
        {
            width: 328px;
        }
        .style3
        {
            width: 318px;
        }
          .auto-style1 {
              height: 21px;
          }
          .auto-style2 {              width: 158px;
          }
          .auto-style3 {
              width: 148px;
          }
          .auto-style4 {
              width: 167px;
          }
          .auto-style5 {
              width: 150px;
          }
          .auto-style6 {
          }
          .auto-style7 {
          }
          .auto-style9 {
              text-align: center;
          }
          .auto-style10 {
          }
          .auto-style11 {
              width: 573px;
          }
    .auto-style12 {
        width: 107%;
    }
    .auto-style13 {
        width: 276px;
        text-align: center;
    }
          .auto-style14 {
              width: 249px;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="style1">
        <tr>
            <td colspan="4">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td style="text-align: center" colspan="4">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="X-Large" ForeColor="Red" Text="Select Village"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: left">

                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Small" Text="Select State"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="auto-style4" style="text-align: left">

                <asp:DropDownList ID="ddlss" runat="server" 
                    onselectedindexchanged="ddlss_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>AndhraPradesh</asp:ListItem>
                    <asp:ListItem>Telangana</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                </asp:DropDownList>

            </td>
            <td style="text-align: left" class="auto-style5">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
                    Text="Select District" Font-Size="Small"></asp:Label>
            </td>
            <td style="text-align: left" class="auto-style2">
                <asp:DropDownList ID="ddlsd" runat="server" 
                    onselectedindexchanged="ddlsd_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center" class="auto-style1">
              
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center" class="auto-style1">
              
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center" class="auto-style1">
              
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Small" Text="Select Village"></asp:Label>
                <asp:DropDownList ID="ddlsv" runat="server" OnSelectedIndexChanged="ddlsv_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
              
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
              
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
              
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Large" ForeColor="Red" Text="Search" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
              
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
            
                </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <asp:TextBox ID="txtviewvillage" runat="server" Height="171px" TextMode="MultiLine" Width="563px" OnTextChanged="txtviewvillage_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:LinkButton ID="lnkb1" runat="server" OnClick="lnkb1_Click">Add Problems</asp:LinkButton>
            </td>
            <td colspan="2" style="text-align: center">
                <asp:LinkButton ID="lnkbtn2" runat="server" OnClick="lnkbtn2_Click">Read Problems</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
    </table>
    
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table width="100%">
                            <tr>
                                <td class="auto-style10" colspan="2">
                                    &nbsp;</td>
                            </tr>

                            <tr>
                                <td class="auto-style10" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style10" colspan="2">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Red" Text="Add Problem"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10" colspan="2">&nbsp;</td>
                            </tr>

                            <tr>
                                <td class="auto-style14">
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#3333FF" Text="Subject"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtsub" runat="server" Font-Size="Medium" Height="21px" Width="170px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9" colspan="2">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Blue" Text="Problems"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6" colspan="2">
                                    <asp:TextBox ID="txtprblm" runat="server" Height="134px" TextMode="MultiLine" Width="552px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6" colspan="2">
                                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="Red" Text="Submit Problem" OnClick="Button2_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6" colspan="2"></td>
                            </tr>
                            <tr>
                                <td class="auto-style6" colspan="2"></td>
                            </tr>

                            <tr>
                                <td class="auto-style6" colspan="2">&nbsp;</td>
                            </tr>

                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
    <asp:UpdatePanel ID="UpdatePanel3" runat="server">

        <ContentTemplate><table style="width: 93%">
               
               <tr>
                   <td class="auto-style11" style="text-align: left">

                   </td>
               </tr>
               
               <tr>
                   <td class="auto-style11" style="text-align: center">

                       <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Blue" Text="List Of Problems"></asp:Label>

                   </td>
               </tr>
               
               <tr>
                   <td class="auto-style11" style="text-align: left">

                       &nbsp;</td>
               </tr>
               
               <tr>
                   <td class="auto-style11" style="text-align: left">

                       <asp:GridView ID="GridView1" runat="server" Height="103px" Width="583px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                           <AlternatingRowStyle BackColor="White" />
                           <Columns>
                               <asp:TemplateField>

                                   <ItemTemplate>
                                       <asp:Button ID="Button3" runat="server" Text="Respond" BackColor="#FF99CC" Font-Size="Large" ForeColor="#0000CC" OnClick="Button3_Click" />
                                   </ItemTemplate>
                               </asp:TemplateField>
                           </Columns>
                           <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                           <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                           <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                           <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                           <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                           <SortedAscendingCellStyle BackColor="#FDF5AC" />
                           <SortedAscendingHeaderStyle BackColor="#4D0000" />
                           <SortedDescendingCellStyle BackColor="#FCF6C0" />
                           <SortedDescendingHeaderStyle BackColor="#820000" />
                       </asp:GridView>

                   </td>
               </tr>
               
               <tr>
                   <td class="auto-style11" style="text-align: left">

                       &nbsp;</td>
               </tr>
               
               <tr>
                   <td class="auto-style11" style="text-align: left">

                       <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                           <ContentTemplate>
                               <table class="auto-style12">
                                   <tr>
                                       <td colspan="2">&nbsp;</td>
                                   </tr>
                                   <tr>
                                       <td colspan="2" style="text-align: center">
                                           <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Red" Text="Response To Problems"></asp:Label>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td colspan="2">&nbsp;</td>
                                   </tr>
                                   <tr>
                                       <td class="auto-style13">
                                           <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Blue" Text="Subject"></asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="subtxt" runat="server" Height="20px" Width="185px"></asp:TextBox>
                                           <asp:TextBoxWatermarkExtender ID="subtxt_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="subtxt" WatermarkText="Write Problems Subject">
                                           </asp:TextBoxWatermarkExtender>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td colspan="2">&nbsp;</td>
                                   </tr>
                                   <tr>
                                       <td style="text-align: center">
                                           <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Blue" style="text-align: center" Text="Responce"></asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="restxt" runat="server" TextMode="MultiLine" Width="338px"></asp:TextBox>
                                           <asp:TextBoxWatermarkExtender ID="restxt_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="restxt" WatermarkText="Write your respoce to the problem here">
                                           </asp:TextBoxWatermarkExtender>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td colspan="2" style="text-align: center">&nbsp;</td>
                                   </tr>
                                   <tr>
                                       <td colspan="2" style="text-align: center">&nbsp;</td>
                                   </tr>
                                   <tr>
                                       <td colspan="2" style="text-align: center">
                                           <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Red" Text="Submit Response" OnClick="Button4_Click" />
                                       </td>
                                   </tr>
                                   <tr>
                                       <td colspan="2" style="text-align: center">&nbsp;</td>
                                   </tr>
                                   <tr>
                                       <td colspan="2" style="text-align: center">&nbsp;</td>
                                   </tr>
                               </table>
                           </ContentTemplate>
                           
                       </asp:UpdatePanel>
                   </td>
               </tr>
           </table></ContentTemplate>
    </asp:UpdatePanel>
               
</asp:Content>

