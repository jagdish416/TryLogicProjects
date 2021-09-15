<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="register2.aspx.cs" Inherits="register2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 121%; height: 476px">
    <tr>
        <td align="left" colspan="2" 
                
            style="font-family: 'Segoe Script'; font-size: xx-large; color: #FFFF00; text-decoration: underline">
                Registeration form</td>
    </tr>
    <tr>
        <td style="width: 108px">
                User name:</td>
        <td>
            <asp:TextBox ID="txtUName" runat="server" required="required" title="Please Enter User Name"></asp:TextBox>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 108px">
                Password:</td>
        <td>
            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" required="required" title="Please Enter Password"></asp:TextBox>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 108px">
                Email id:</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" required="required" type="email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 108px">
                D.O.B</td>
        <td>
            <asp:TextBox ID="txtDOB" runat="server" required="required" type="date"></asp:TextBox>
                &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 108px">
                State:</td>
        <td>
            <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 108px">
                Country:</td>
        <td>
            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 108px">
                Mobile number:</td>
        <td>
            <asp:TextBox ID="txtMobile" runat="server" MaxLength="10" 
                pattern="^\d\d\d\d\d\d\d\d\d\d" title="Please Enter Mobile Number" 
                required="required"></asp:TextBox>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" style="width: 108px">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    onclick="btnSubmit_Click" />&nbsp;
                   </td>
        <td align="left">
            <asp:Button ID="btnClear" runat="server" Text="Clear"/>
        </td>
    </tr>
</table>
</asp:Content>

