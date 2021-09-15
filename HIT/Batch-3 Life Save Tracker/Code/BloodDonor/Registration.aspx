<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
    
    <table width=100% 
        
    style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #9933FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="Registration Form" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
</td>

</tr>
</table>
<br />
<br />
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <table width=100% 
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink">
        
<tr>
<td align="center" class="style1" style="width: 585px">
    <asp:Label ID="Label2" runat="server" Text="Name" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtname" runat="server" Width="129px" Font-Size="Large"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtname" ErrorMessage="**" ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
        runat="server" ControlToValidate="txtname" ErrorMessage="Only Characters" 
        ForeColor="Red" ValidationExpression="^[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>
</td>
</tr>

<tr>
<td align="center" class="style1" style="width: 585px">
    <asp:Label ID="Label3" runat="server" Text="Email Id" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtemail" runat="server" Font-Size="Large"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="txtemail" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtemail" ErrorMessage="Invalid Emailid" ForeColor="#CC0000" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</td>
</tr>

<tr>
<td align="center" class="style1" style="width: 585px">
   <asp:Label ID="Label4" runat="server" Text="Mobile Number" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtmobile" runat="server" Font-Size="Large"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ControlToValidate="txtmobile" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="txtmobile" ErrorMessage="Enter 10 digit mobile no" 
        ForeColor="Red" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>
</td>
</tr>

<tr>
<td align="center" class="style1" style="width: 585px">
    <asp:Label ID="Label6" runat="server" Text="Date Of Birth" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtdob" runat="server" Font-Size="Large"></asp:TextBox>
    <asp:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
        Enabled="True" TargetControlID="txtdob">
    </asp:CalendarExtender>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtdob" ErrorMessage="**" ForeColor="#CC0000"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center" class="style1" style="width: 585px">
    <asp:Label ID="Label15" runat="server" Text="Select Blood Group :" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="DropDownList4" runat="server" AppendDataBoundItems="true" 
        Font-Size="Large">
        <asp:ListItem>--SELECT--</asp:ListItem>
        <asp:ListItem>AB+</asp:ListItem>
        <asp:ListItem>O+</asp:ListItem>
        <asp:ListItem>A+</asp:ListItem>
        <asp:ListItem>B-</asp:ListItem>
        <asp:ListItem>A-</asp:ListItem>
        <asp:ListItem>O-</asp:ListItem>
        <asp:ListItem>AB-</asp:ListItem>
        <asp:ListItem>O+</asp:ListItem>
        <asp:ListItem>OTHERS</asp:ListItem>
        <asp:ListItem>B+</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator62" runat="server" 
        ControlToValidate="DropDownList4" ErrorMessage="**" ForeColor="#CC0000" 
        InitialValue="--SELECT--"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center" class="style1" style="width: 585px">
    <asp:Label ID="Label7" runat="server" Text="Gender" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="ddlgender" runat="server" AppendDataBoundItems="true" 
        Font-Size="Large" Height="26px" Width="118px">
        <asp:ListItem>--SELECT--</asp:ListItem>
        <asp:ListItem>MALE</asp:ListItem>
        <asp:ListItem>FEMALE</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="ddlgender" ErrorMessage="**" ForeColor="#CC0000" 
        InitialValue="--SELECT--"></asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td align="center">

    <asp:Label ID="Label9" runat="server" Text="Select Country :" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        AutoPostBack="True">
    <asp:ListItem>--SELECT--</asp:ListItem>
        <asp:ListItem>INDIA</asp:ListItem>
        <asp:ListItem>PAKISTAN</asp:ListItem>
        <asp:ListItem>USA</asp:ListItem>
        <asp:ListItem>AUSTRALIA</asp:ListItem>
        <asp:ListItem>SOUTH AFRICA</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
        ErrorMessage="***" ForeColor="Red" InitialValue="--SELECT--" 
        ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label10" runat="server" Text="Select State :" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="Large" 
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" InitialValue="--SELECT--" 
        ErrorMessage="***" ForeColor="Red" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label16" runat="server" Text="Select City :" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="DropDownList5" runat="server" Font-Size="Large" 
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList5_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" InitialValue="--SELECT--" 
        ErrorMessage="***" ForeColor="Red" ControlToValidate="DropDownList5"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label11" runat="server" Text="Select Locality :" 
        Font-Size="Large" ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="DropDownList3" runat="server" Font-Size="Large">
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" InitialValue="--SELECT--" 
        ErrorMessage="***" ForeColor="Red" ControlToValidate="DropDownList3"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label12" runat="server" Text="Address :" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" Height="37px" TextMode="MultiLine" 
        Width="140px" Font-Size="Large"></asp:TextBox>
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label13" runat="server" 
        Text="Enter Latitude Value as per Address :" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
        ErrorMessage="***" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
    <asp:Label ID="Label17" runat="server" Text="For Lattitude values"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="http://www.latlong.net">http://www.latlong.net</asp:HyperLink>
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label14" runat="server" 
        Text="Enter Longitude Value as per Address :" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
        ErrorMessage="***" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
    <asp:HyperLink ID="HyperLink2" runat="server">http://www.latlong.net</asp:HyperLink>
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label8" runat="server" Text="Password :" Font-Size="Large" 
        ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Font-Size="Large"></asp:TextBox>
</td>
</tr>
</table>
<br />
<br />
<table width="100%" 
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #0000FF; text-decoration: blink" >
<tr>
<td align="center" colspan="2">
    <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#333399" 
        ForeColor="#FFCCFF" Height="31px" Width="76px" onclick="Button1_Click" />
    
</td>
</tr>
</table>
</asp:Panel>
<br />
<br />

    <asp:Panel ID="Panel2" runat="server">
    <table width="100%">
    
    <tr>
<td align="center">
    &nbsp;</td>
<td>
    &nbsp;</td>
</tr>
<tr>
<td align="center" colspan="2">
    &nbsp;</td>
</tr>
    </table>
    </asp:Panel>
</asp:Content>

