<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallaery.aspx.cs" Inherits="Gallaery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
            <td colspan="2" rowspan="4">
               <%-- <asp:DataList ID="DataList1" runat="server" Height="181px" RepeatColumns="3" 
                    RepeatDirection="Horizontal" Width="1011px">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Img/" + Eval("path") %>' 
                        Height="288px" Width="249px" />
               </ItemTemplate>

                </asp:DataList>--%>

                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
                            RepeatDirection="Horizontal" Width="1011px">
                    <ItemTemplate>    
                       <%--<a href='<%# Eval("path") %>' class=" mask b-link-stripe b-animate-go   swipebox"  title="Image Title">--%>
                         <asp:Image ID="Image1" runat="server"  
                            ImageUrl='<%# Eval("path") %>'  class="img-responsive zoom-img"  
                            title="Image Title" Width="345px" Height="200px" AlternateText='" "' />
                       
                    </ItemTemplate>

                   
                    </asp:DataList>
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
</asp:Content>

