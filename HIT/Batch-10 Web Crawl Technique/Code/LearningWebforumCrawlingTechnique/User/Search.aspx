<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="User_Search" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
<table width="100%" style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
<tr>
<td align="left">
    <asp:Label ID="Label1" runat="server" Text="Welcome to Crawl Web Forum"></asp:Label>

</td>
<td align="right">
<asp:TextBox ID="TextBox1" runat="server" Height="37px"></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" 
        runat="server" Enabled="True" TargetControlID="TextBox1" WatermarkText="Search">
    </asp:TextBoxWatermarkExtender>
</td>
<td align="justify">
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/BlueOrbSearch.png" Height="20%" Width="50%" OnClick="img_click" />
</td>
</tr>
<tr align="center">
<td>
    <asp:Label ID="Label2" runat="server" Text="The goal of focus is to only trawl relavent forum content from the web with minimal overhead. Forum threads contain information content that is the target of Forum Crawlers."></asp:Label>
</td>
</tr>
</table>
<%--<table width="100%">
<tr>
<td align="center">
    <asp:Label ID="Label3" runat="server" Text="Recent Search Done By the Users" Font-Size="X-Large"></asp:Label>

</td>
</tr>
<tr>
<td align="center">
    <asp:HyperLink ID="HyperLink1" runat="server" Text="<%#Eval("search") %>"></asp:HyperLink>
    <asp:HyperLink ID="HyperLink2" runat="server" Text="<%#Eval("search") %>"></asp:HyperLink>
    
</td>
</tr>
</table>--%>
</asp:Content>

