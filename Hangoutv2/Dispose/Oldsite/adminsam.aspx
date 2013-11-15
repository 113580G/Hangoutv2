<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminsam.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <title>HangOut! Singapore</title>
   <link rel="stylesheet" type="text/css" href="../Styles/main.css" />
</head>
<body>
    <form id="form1" runat="server">
     <div>
    <div id="body1">
<a href="default.aspx"><div id= "leftbar"></div></a>
<div id= "rightbar">
<ul id = "topbar">
<li id = "home2"><a href="/default.aspx">Home</a></li>
<li id = "about"><a href="/aboutus.aspx">About</a></li>
<li id = "product"><a href="/product.aspx">Product</a></li>
<li id = "packages"><a href="/packages.aspx">Packages</a></li>
<li id = "contactus"><a href="/contactus.aspx">Contact Us</a></li>
<li id = "login2"><a href="/login.aspx">Login Page</a></li>
</ul>
</div>
<div id ="header2">
<a href="packages.aspx"><div id ="click2"></div></a>
</div>
    <div id="sidebar">
    <ul id="sidebarlinks">
    <li><a href="google.com">About Us</a></li>
    <li>Contact Us</li>
    <li>Our Packages</li>
    <li>Our Products</li>
    <li>Additional Services</li>
    <li>Job Application</li>
    <li>Testimonials</li>
    </ul>
    <ul id="ourclient">
    <li>Our Cilent</li>
    </ul>
    <div id="clientimage"></div>
    </div>
    <div id="contentright">
    <ul id="adminbar">
    <li id="aoverview"><a href="overview.aspx">Overview</a></li>
    <li id ="apm"><a href="adminpm.aspx">PM</a></li>
    <li id ="asm"><a href="adminsam.aspx">SAM</a></li>
    <li id ="aud"><a href="adminudm.aspx">UDM</a></li>
    <li id ="atest"><a href="admintest.aspx">Testimonial</a></li>
    <li id ="ast"><a href="adminst.aspx">Support Ticket</a></li>
    <li id ="als"><a href="adminls.aspx">Live Support</a></li>
    <li id ="aja"><a href="adminja.aspx">Job Application</a></li>
    <li id ="awl"><a href="adminnews.aspx">Newsletter</a></li>
    </ul>
    <div class="contenthost">
    <center><span class="title">Service Manager</span></center>
    <ul class="admin">
    <li>Add Service:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></li>
    <li>Price:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></li>
    <li>Date:<asp:TextBox ID="TextBox3" runat="server" Width="47px">Date</asp:TextBox>
        <asp:TextBox ID="TextBox4"
        runat="server" Width="89px">Month</asp:TextBox></li>
        <li>Pick date and month below:</li>
        </ul>
    <div class="contenthostbottom">
        <asp:Button ID="Button1" runat="server" Text="Submit" />
        <asp:Button ID="Button2" runat="server" Text="Reset" />
        <p />
        <asp:Calendar ID="sCalender" runat="server"></asp:Calendar>
        </div>
        <br />
        <hr />
        <center><span class="title">Activities Manager</span></center>
        <ul class="admin">
        <li>Add Activities:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></li>
        </ul>
        <div class="contenthostbottom">
            <asp:Button ID="Button3" runat="server" Text="Submit" />
            <asp:Button ID="Button4" runat="server" Text="Reset" />
        </div>
    </div>
    </ul>
        </div>
<div id ="footer">
<div id="browsesite">
<h2>Browse site</h2>
<ul id ="browsesiteul">
<li>About our company</li>
<li>Contact Us</li>
<li>Our Packages</li>
<li>Our Products</li>
<li>Job Application</li>
<li>Live Support</li>
<li>Testimonials</li>
<li>Contact Us</li>
</ul>
</div>
<div id="location">
<h2>Location</h2>
</div>
<div id="fromourblog">
<h2>From our blog</h2>
</div>
<div id="lastfooter">
Copyright © HangOut! Singapore. All rights reserved. Designed by Ariff
</div>
<div id="rightfooter">
<img src="/images/buttons/facebook.png" />
<img src="/images/buttons/in.png" />
<img src="/images/buttons/twitter.png" />
</div>
</div>
</div>
<div id="customersupport">
</div>
    </div>
    </form>
</body>
</html>
