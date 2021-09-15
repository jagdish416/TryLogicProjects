<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sendmsg.aspx.cs" Inherits="User_Sendmsg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BLOOD</title>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="../Temp/css/styles.css" rel="stylesheet" type="text/css" />
<style type="text/css">
  
    </style>
   <script type='text/javascript' language='javascript'>var widgetId = ' 4ca921c4-672a-455d-b738-fde156aa17eb'; document.write(unescape("<script language='javascript' type='text/javascript' src='http://www.smslane.com/js/widget3.js'><\/script>")); </script>
<script src="http://www.smslane.com/js/test.js"></script> 

</head>
<body>
    <form id="jag" runat="server">


<div class="header-wrapper">
  <div class="header">
    <div class="logo">
      <h1>Blood Donor Tracker  </h1>
    </div>
    <!---logo ends here -->
    <div class="menu">
      <ul>
        <li><a class="active" href="Home.aspx">Home</a>me</li>
        <li><a href="Search1.aspx">Search Donor </a></li>
        <li><a href="Sendmsg.aspx">Search Hos </a></li>
        <li><a href="Profile.aspx"> Profile</a></li>
        <li><a href="../Login.aspx">Logout</a></li>
      </ul>
    </div>
    <!--- menu ends here -->
  </div>
  <!---headerends here -->
</div>

   <table width="100%" 
        
        style="font-family: 'Trebuchet MS'; font-size: large; font-weight: lighter; font-style: normal; color: #9933FF; text-decoration: blink">
<tr>
<td align="center" bgcolor="#9900FF" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="Send Message" Font-Bold="True" 
        Font-Size="XLarge" Font-Underline="True" ForeColor="#FFCCFF"></asp:Label>
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
        <asp:ListItem>B+</asp:ListItem>
        <asp:ListItem>A+</asp:ListItem>
        <asp:ListItem>AB-</asp:ListItem>
        <asp:ListItem>O-</asp:ListItem>
        <asp:ListItem>B-</asp:ListItem>
        <asp:ListItem>A-</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator62" runat="server" 
        ControlToValidate="DropDownList4" ErrorMessage="**" ForeColor="#CC0000" 
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
        
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
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
        AutoPostBack="True" onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
        >
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
    <asp:DropDownList ID="DropDownList6" runat="server" Font-Size="Large" 
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList5_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" InitialValue="--SELECT--" 
        ErrorMessage="***" ForeColor="Red" ControlToValidate="DropDownList6"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center">
    <asp:Label ID="Label11" runat="server" Text="Select Locality :" 
        Font-Size="Large" ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="DropDownList3" runat="server" Font-Size="Large" 
        AutoPostBack="True" >
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" InitialValue="--SELECT--" 
        ErrorMessage="***" ForeColor="Red" ControlToValidate="DropDownList3"></asp:RequiredFieldValidator>
</td>
</tr>
<%--<tr><td align="center">
    <asp:Label ID="Label2" runat="server" Text="Select Hospital :" Font-Size="Large" ForeColor="#000099"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="DropDownList5" runat="server" Font-Size="Large">
    </asp:DropDownList>
</td>
</tr>--%>
<tr><td></td></tr>
<tr><td></td></tr>

<tr>
<td align="center">
    &nbsp;</td>
<td>
<asp:Button ID="Button2" runat="server" Text="Search Hospitals" 
        BackColor="#FFFF99" Font-Names="Algerian" Font-Size="Large" 
        ForeColor="#0000CC" onclick="Button2_Click" />

</td>
</tr>
<tr><td></td></tr>
<tr><td align="center" colspan="2">
    <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" Font-Names="Algerian" 
        Font-Size="Larger" ForeColor="Black" GridLines="None" 
        AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        <Columns>
        <asp:TemplateField Visible="false">
        <ItemTemplate>
            <asp:Label ID="lblid" runat="server" Text='<%#Eval("HospId") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name">
        <ItemTemplate>
            <asp:Label ID="lblname" runat="server" Text='<%#Eval("HosName") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Mobile Number">
        <ItemTemplate>
            <asp:Label ID="lblmobno" runat="server" Text='<%#Eval("HosEmail") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="LandLine No">
        <ItemTemplate>
            <asp:Label ID="lblgroup" runat="server" Text='<%#Eval("Landline") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Address">
        <ItemTemplate>
            <asp:Label ID="lbladd" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Send">
        <ItemTemplate>
            <asp:Button ID="Button1" runat="server" Text="Send Message" ForeColor="#6600FF" 
                Font-Size="Larger" BackColor="#99CCFF" onclick="Button1_Click" />
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>
    </asp:GridView>

</td></tr>
</table>


    </form>
   

<div class="footer-wrapper">
  <div class="footer">
    
      
      
      <div class="footer-content">
        
        Copyright (c) . All rights reserved.<br />

     <a href="#" class="footerlink"> </a> Visvesvaraya College Of Engineering   <br />
</div>
     
  
   
      
  </div>
</div>
<!---footer-wrapper ends here-->
</body>
</html>
