<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center">
                <h1>
                    Contact us:</h1>
            </td>
        </tr>
        <tr>
            <td>
                Name (Requried):</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Width="196px" required="required" title="Please enter your Name" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Email-Id (requried):<br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"  required="required" title="Please Email id"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Phone number:<br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="10" required="required" title="Please Enter your Mobile Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Your message :<br />
                <asp:TextBox ID="TextBox4" runat="server" Columns="20" Height="141px" 
                    Rows="200" Width="486px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <%--Rate us--%> <%--<asp:Rating ID="Rating1" runat="server" RatingAlign="Horizontal" 
                    MaxRating="5" RatingDirection="LeftToRightTopToBottom" 
                    BehaviorID="Rating1_RatingExtender=&quot;5&quot;" >
                </asp:Rating>--%>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="34px" 
                    ImageUrl="~/temp/submit.gif" Width="96px" onclick="ImageButton1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

