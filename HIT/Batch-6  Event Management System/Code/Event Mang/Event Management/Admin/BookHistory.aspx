<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="BookHistory.aspx.cs" Inherits="Admin_BookHistory" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table style="width: 100%">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2" 
                    style="font-family: 'Segoe Print'; text-align: center; font-size: large; color: #FF0066">
                    <strong>Booking Details</strong></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2" rowspan="2">
                    <asp:GridView ID="GridView1" runat="server" Height="101px" Width="997px" 
                        AutoGenerateColumns="False">
                        <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>' Visible="false"></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Fname" HeaderText="Name">
                            <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" 
                                ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EmailId" HeaderText="EmailId">
                             <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" 
                                ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MobNo" HeaderText="MobileNo" >
                             <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" 
                                ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Address" HeaderText="Address" >
                             <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" 
                                ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ename" HeaderText="Event Name" >
                             <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" 
                                ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Type" HeaderText="Type" >
                             <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" 
                                ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Person" HeaderText="Person Involement" >
                             <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" 
                                ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Price" HeaderText="Price">
                              <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"
                                ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>

                            

                            <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text='<%# Eval("Status") %>' 
                                    onclick="Button1_Click" />
                            </ItemTemplate>
                            </asp:TemplateField>
                           
                            
                            </Columns>

                            
                           
                            
                        
                    </asp:GridView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>

