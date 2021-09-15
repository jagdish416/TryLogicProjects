<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Addproduct.aspx.cs" Inherits="User_Addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%">
        <tr>
            <td style="height: 18px; width: 230px">
                <asp:Label ID="Label1" runat="server" Text="File name"></asp:Label>
            </td>
            <td style="height: 18px">
                <asp:TextBox ID="txtfilename" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 18px; width: 230px">
                <asp:Label ID="Label4" runat="server" Text="description"></asp:Label>
            </td>
            <td style="height: 18px">
                <asp:TextBox ID="txtdescription" runat="server" Height="73px" 
                    TextMode="MultiLine" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 18px; width: 230px">
                <asp:Label ID="Label2" runat="server" Text="file"></asp:Label>
            </td>
            <td style="height: 18px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 230px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Btnsubmit" runat="server" Text="submit" 
                    onclick="Btnsubmit_Click" Width="53px" />
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 230px">
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td style="width: 230px; height: 18px;">
                </td>
            <td style="height: 18px">
                </td>
        </tr>
        <tr>
            <td style="width: 230px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   
</asp:Content>

