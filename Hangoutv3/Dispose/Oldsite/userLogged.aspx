<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userLogged.aspx.cs" %>

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

</ul>
</div>
<div id ="header2">
<a href="packages.aspx"><div id ="click2"></div></a>
</div>
    <div id="sidebar">
    <ul id="sidebarlinks">
     <li><a href="aboutus.aspx">About Us</a></li>
    <li><a href="contactus.aspx">Contact Us</li>
    <li><a href="packages.aspx">Our Packages</li>
    <li><a href="product.aspx">Our Products</li>
    <li><a href="AdditionalService.aspx">Additional Services</li>
    <li><a href="job.aspx">Job Application</li>
    <li><a href="Testimonials.aspx">Testimonials</li>
    </ul>
    <ul id="ourclient">
    <li>Our Cilent</li>
    </ul>
    <div id="clientimage"></div>
    </div>
    <div id="contentright">
    <ul id="userbar">
    <li id ="profile"><a href="UserProfile.aspx">Profile</a></li>
    <li id ="history">History</li>
    <li id ="package">Edit Package</li>
    <li id ="testimonials">Testimonials</li>
    <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl='supporttix.aspx'>Support Ticket</asp:HyperLink>
    </ul>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div><asp:LoginName ID="LoginName1" runat="server" />
        <br />
        <br />
        <br />
        <br />
        <asp:LoginView ID="LoginView1" runat="server">
        </asp:LoginView></div>
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
