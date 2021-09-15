<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Uploadfile.aspx.cs" Inherits="Admin_Uploadfile" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" 
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="Upload File" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>

</tr>
</table>
<br /><br />
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:Panel ID="Panel1" runat="server">
    <table width="100%">
<tr>
<td align="center">

    <asp:Label ID="Label4" runat="server" Text="File Id :" Font-Size="Large"></asp:Label>
</td>
<td class="list-2" style="width: 253px">
    <asp:TextBox ID="txtid" runat="server" ReadOnly="True"></asp:TextBox></td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label2" runat="server" Text="FileName :" Font-Size="Large"></asp:Label>
</td>
<td class="list-2" style="width: 253px">
    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox></td>
    <td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="***" Font-Size="Large" ForeColor="#FFFF99" 
        ControlToValidate="txtfname"></asp:RequiredFieldValidator>
</td>
</tr><tr>
<td align="center">
    <asp:Label ID="Label3" runat="server" Text="Date" Font-Size="Large"></asp:Label>
</td>
<td class="list-2" style="width: 253px">
    <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
     <asp:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
        Enabled="True" TargetControlID="txtdate">
    </asp:CalendarExtender>
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label5" runat="server" Text="Browse File :" Font-Size="Large"></asp:Label>
</td>
<td class="list-2" style="width: 253px">
    <asp:FileUpload ID="FileUpload1" runat="server" />
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label6" runat="server" Text="KeyPiont :" Font-Size="Large"></asp:Label>

</td>
<td class="list-2" style="width: 253px">
    <asp:TextBox ID="txtkeypoint" runat="server"></asp:TextBox> </td>
    <td>
   
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Required" Font-Size="Large" ForeColor="#FFFF66" 
        ControlToValidate="txtkeypoint"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center" colspan="3">
    <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#FF66FF" 
        ForeColor="#000099" onclick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Clear" BackColor="#FF66FF" 
        ForeColor="#000099" onclick="Button2_Click" />
</td>

</tr>

</table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    <table width="100%">
    <tr>
    <td align="center">
        <asp:TextBox ID="TextBox5" runat="server" Height="224px" 
            style="margin-left: 0px" TextMode="MultiLine" Width="573px"></asp:TextBox>
    
    </td>
    </tr>
    <tr>
<td align="center">
    <asp:Button ID="Button3" runat="server" Text="Upload" onclick="Button3_Click" />


</td>
</tr>
    </table>
    </asp:Panel>
</asp:Content>

