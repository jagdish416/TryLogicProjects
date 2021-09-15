<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <br />
    <br />
<table style="width: 100%" align="center">
    <tr>
        <td style="width: 362px">
            <asp:Label ID="Label1" runat="server" style="text-align: left" 
                Text="User Name:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <br />
    <br />
    <tr>
        <td style="width: 362px">
            <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 362px; height: 18px">
            <asp:Label ID="Label3" runat="server" Text="email id"></asp:Label>
        </td>
        <td style="height: 18px">
            <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 362px">
            <asp:Label ID="Label4" runat="server" Text="gender"></asp:Label>
        </td>
        <td>
            <asp:RadioButton ID="Radmale" runat="server" Text="male" GroupName="gender" />
            <asp:RadioButton ID="Radfemale" runat="server" Text="female" 
                GroupName="gender" />
            </td>
            <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 362px">
            <asp:Label ID="Label5" runat="server" Text="mobileno"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Txtmobileno" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 362px">
            <asp:Label ID="Label6" runat="server" Text="address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Txtaddress" runat="server" ontextchanged="TextBox7_TextChanged" 
                TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 362px">
            <asp:Label ID="Label7" runat="server" Text="security question"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlsecurityquestion" runat="server">
                <asp:ListItem>---SELECT---</asp:ListItem>
                <asp:ListItem>Enter Your Nike Name</asp:ListItem>
                <asp:ListItem>enter your fev color</asp:ListItem>
                <asp:ListItem>enter your frnd name</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 362px">
            <asp:Label ID="Label8" runat="server" Text="security answer"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtsecurityanswer" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 362px">
            &nbsp;</td>
        <td>
            <asp:Button ID="Btnregister" runat="server" onclick="Button1_Click" 
                Text="Register" />
            <asp:Label ID="Label9" runat="server" ForeColor="#3333CC"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 362px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 362px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</form>
</asp:Content>

