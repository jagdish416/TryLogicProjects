<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search1.aspx.cs" Inherits="User_Search1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BLOOD</title>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="../Temp/css/styles.css" rel="stylesheet" type="text/css" />
<style type="text/css">

        #mapArea {
            position: absolute;
            left: 556px; 
top: 519px;
            right: 24px; 
bottom: -218px;
           
            /* Default map view is full screen. Set height and width to customize the dimensions */
            /* height: 50%; or height: 400px; */
            /* width: 50%; or width: 400px; */

        }
    </style>
    <script type="text/javascript"
     src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true">
     </script>
   

</head>
<body onload="initialize()">
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
        <li><a href="Search1.aspx">Search </a></li>
        <li><a href="Sendmsg.aspx">Sent Message </a></li>
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
    <asp:Label ID="Label1" runat="server" Text="Track The Place" Font-Bold="True" 
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
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList2_SelectedIndexChanged" style="height: 25px" 
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
<tr><td></td></tr>
<tr><td></td></tr>

<tr>
<td align="center">
    
</td>
<td>
<asp:Button ID="Button2" runat="server" Text="Search Donors" 
        BackColor="#FFFF99" Font-Names="Algerian" Font-Size="Large" 
        ForeColor="#0000CC" onclick="Button2_Click" />

</td>
</tr>
<tr>
<td align="left" colspan="2">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        Font-Names="Algerian" Font-Size="X-Large" Height="156px" Width="407px" 
        AutoGenerateColumns="False">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
        <Columns>
         <asp:TemplateField HeaderText="Name">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Address">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="MobileNo">
        <ItemTemplate>
            <asp:Label ID="Label5" runat="server" Text='<%#Eval("MobileNo") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
          <asp:TemplateField HeaderText="EmailId">
        <ItemTemplate>
            <asp:Label ID="Label6" runat="server" Text='<%#Eval("Email") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Send">
        <ItemTemplate>
            <asp:Button ID="Button3" runat="server" Text="Send" onclick="Button3_Click" />
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>
    </asp:GridView>
</td>
</tr>
</table>
<br />

<div id="mapArea" style="width: 500px; height: 437px;">
          </div>
 
          <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    
    </form>
    <br />
    <br />
    <br />
    <br />
<br />
<br />
    <br />
     <br />
    <br />
    <br />
    <br />
<br />
<br />
    <br />
 <br />
    <br />
    <br />
    <br />
<br />
<br />
    <br />
 <br />
    <br />
    <br />
    <br />
<br />
<br />
    <br />

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
