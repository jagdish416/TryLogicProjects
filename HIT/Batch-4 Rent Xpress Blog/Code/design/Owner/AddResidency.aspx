<%@ Page Title="" Language="C#" MasterPageFile="~/Owner/Owner.master" AutoEventWireup="true" CodeFile="AddResidency.aspx.cs" Inherits="Owner_AddResidency" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table width="100%">
        <tr align="center">
            <td>
                <asp:Label ID="Label1" runat="server" Text="Add Residency" Font-Size="XX-Large" Font-Underline="True" ForeColor="#0000CC"></asp:Label></td>
        </tr>
      

    </table>
    <br />
      <br />
    <table width="100%">

        <tr>
            <td>

                <asp:Label ID="Label2" runat="server" Text="Select State :" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#6600CC"></asp:Label>
            </td>
            <td style="width: 208px">
                <asp:DropDownList ID="ddlstate" runat="server" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#6600CC" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                    <asp:ListItem>TG</asp:ListItem>
                    <asp:ListItem>AP</asp:ListItem>
                    <asp:ListItem>BIHAR</asp:ListItem>
                    <asp:ListItem>DELHI</asp:ListItem>
                    <asp:ListItem>MAHARASHTRA</asp:ListItem>
                    <asp:ListItem>PONDICHERRY</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td >

                <asp:Label ID="Label3" runat="server" Text="Select City :" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#6600CC"></asp:Label>
            </td>
            <td style="width: 25px">
                <asp:DropDownList ID="ddlcity" runat="server" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#6600CC" AutoPostBack="True" OnSelectedIndexChanged="ddlcity_SelectedIndexChanged"></asp:DropDownList>
            </td>
            <td>

                <asp:Label ID="Label4" runat="server" Text="Select locality :" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#6600CC"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddllocality" runat="server" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#6600CC"></asp:DropDownList>
            </td>
        </tr>
        </table>
        <table width="100%">
        <tr>
         <td align="center" style="width: 543px">
             <asp:Label ID="Label10" runat="server" Text="Home For : " Font-Size="Large" ForeColor="#0000CC"></asp:Label>
         </td>
         <td>
             <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="true" Font-Size="Large" ForeColor="#0000CC">
                 <asp:ListItem>--SELECT--</asp:ListItem>
                 <asp:ListItem>Single Boys</asp:ListItem>
                 <asp:ListItem>Single Girls</asp:ListItem>
                 <asp:ListItem>Families</asp:ListItem>
             </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" InitialValue="--SELECT--" ControlToValidate="DropDownList2" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
         </td>
     </tr>
     <tr>
         <td align="center" style="width: 543px" >
             <asp:Label ID="Label5" runat="server" Text="Type" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
         </td>
         <td style="height: 26px">
             <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" ForeColor="#0000CC">
                 <asp:ListItem>--SELECT--</asp:ListItem>
                 <asp:ListItem>1BHK</asp:ListItem>
                 <asp:ListItem>2BHK</asp:ListItem>
                 <asp:ListItem>3BHK</asp:ListItem>
             </asp:DropDownList>
         </td>
     </tr>
        <tr>
         <td align="center" style="width: 543px" >
             <asp:Label ID="Label6" runat="server" Text="Area" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
         </td>
         <td>
             <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" ForeColor="#0000CC"></asp:TextBox>
         </td>
     </tr>
        <tr>
         <td align="center" style="width: 543px" >
             <asp:Label ID="Label7" runat="server" Text="Amount" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
         </td>
         <td>
             <asp:Label ID="Label11" runat="server" ForeColor="#0000CC" Text="Rs" Font-Size="Large"></asp:Label>
             <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" ForeColor="#0000CC"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
         </td>
     </tr>
        <tr>
         <td align="center" style="width: 543px">
             <asp:Label ID="Label8" runat="server" Text="Address :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
         </td>
         <td>
             <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="53px" Width="181px" Font-Size="Large" ForeColor="#0000CC"></asp:TextBox>
         </td>

     </tr><tr>
         <td align="center" style="width: 543px">
             <asp:Label ID="Label9" runat="server" Text="Description :" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
         </td>
         <td>
             <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Height="51px" Width="180px" Font-Size="Large" ForeColor="#0000CC"></asp:TextBox>
         </td>
     </tr>
        <tr align="center">
            <td colspan="6">

                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Img/Submit.jpg" Height="56px" Width="141px" OnClick="ImageButton1_Click"/>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

