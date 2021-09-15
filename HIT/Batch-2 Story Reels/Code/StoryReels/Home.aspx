<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="HI WELCOME">
        <div class="slider-container">
            <div class="container">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1 slider">
                        <div class="flexslider">
                            <ul class="slides">
                                <li data-thumb="templet/assets/img/slider/1.jpg">
                                    <img src="templet/assets/img/slider/1.jpg">
                                    <div class="flex-caption">
                                    	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et. 
                                    	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et. 
                                    	Lorem ipsum dolor sit amet, consectetur.
                                    </div>
                                </li>
                                <li data-thumb="templet/assets/img/slider/2.jpg">
                                    <img src="templet/assets/img/slider/2.jpg">
                                    <div class="flex-caption">
                                    	Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit 
                                    	lobortis nisl ut aliquip ex ea commodo consequat.
                                    </div>
                                </li>
                                <li data-thumb="templet/assets/img/slider/3.jpg">
                                    <img src="templet/assets/img/slider/3.jpg">
                                    <div class="flex-caption">
                                    	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et. 
                                    	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et. 
                                    	Lorem ipsum dolor sit amet, consectetur.
                                    </div>
                                </li>
                                <li data-thumb="templet/assets/img/slider/4.jpg">
                                    <img src="templet/assets/img/slider/4.jpg">
                                    <div class="flex-caption">
                                    	Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit 
                                    	lobortis nisl ut aliquip ex ea commodo consequat.
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Label>
</form>
</asp:Content>

