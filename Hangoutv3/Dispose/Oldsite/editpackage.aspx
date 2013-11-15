<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editpackage.aspx.cs"%>

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
    <ul id="userbar">
    <li id ="profile"><a href="UserProfile.aspx">Profile</a></li>
    <li id ="history">History</li>
    <li id ="package"><a href="editpackage.aspx">Package</a>s</li>
    <li id ="testimonials"><a href="Testimonials.aspx">Testimonials</a></li>
    <li id ="supportticket"><a href="supporttix.aspx"> Support Ticket</a></li>
    </ul>
    <div class="contenthost">
    <center><span class="title">Edit Your Package</span></center>
    <ul id="userlist">
    <li>Package Purchased:&nbsp;   <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>
        </li>
    <li>Date of camp:<asp:Label ID="Label2" runat="server" Text="Label2"></asp:Label>
        </li>
    <li>Services:<asp:Label ID="Label3" runat="server" Text="Label3"></asp:Label>
        </li>
    <li>Activities:<asp:Label ID="Label4" runat="server" Text="Label4"></asp:Label>
        </li>
    <li>No of Participants:&nbsp;&nbsp;   <asp:Label ID="Label5" runat="server" 
            Text="Label5"></asp:Label>
        </li>
    </ul>
        Recorded date of purchased: <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
        <hr />
        Additional services that you may purchase:
        <p />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Service1" />
            ,
            cost is <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Service2" />
        ,
            cost is <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="Service3" />
        ,
            cost is <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox4" runat="server" Text="Service4" />
        ,
            cost is <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox5" runat="server" Text="Service5" />
        ,
            cost is <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox6" runat="server" Text="Service6" />
        ,
            cost is <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>/person
        <p />
        Additional activities that you may purchase:
        <p />
        <asp:CheckBox ID="CheckBox7" runat="server" Text="Activity1" />
        ,
            cost is <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox8" runat="server" Text="Activity2" />
        ,
            cost is <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox9" runat="server" Text="Activity3" />
        ,
            cost is <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox10" runat="server" Text="Activity4" />
        ,
            cost is <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox11" runat="server" Text="Activity5" />
        ,
            cost is <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox12" runat="server" Text="Activity6" />
        ,
            cost is <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>/person
                <br />
        <asp:CheckBox ID="CheckBox13" runat="server" Text="Activity7" />
        ,
            cost is <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox14" runat="server" Text="Activity8" />
        ,
            cost is <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox15" runat="server" Text="Activity9" />
        ,
            cost is <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox16" runat="server" Text="Activity10" />
        ,
            cost is <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>/person
        <p />No of participants:
            <asp:Label ID="Label6" runat="server" Text="Label1"></asp:Label>
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total cost:
            <asp:Label ID="Label7" runat="server" Text="Label2"></asp:Label>
       <p /> <a href="payment.aspx"><strong>Make a payment now</strong></a>
    </div>
        </div>
<div id ="footer">
    &gt;<div id="browsesite">
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
