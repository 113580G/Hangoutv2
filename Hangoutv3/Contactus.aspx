<%@ Page Title="" Language="C#" MasterPageFile="~/Master/contactus.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Master_Default" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="innercontent" align="left">
<h2>How to contact us?</h2>
    <strong>Call us at the following number and timing:</strong>
        <ul id="contactdetails">
            <li> (+65) 6550-0001 (Office)</li>
            <ul class="sublass">
            <li> Monday - Friday: 8am to 11pm</li>
            <li> Saturday - Sunday: 8am to 5pm </li>
            </ul>
            <br /><li> (+65) 9829-5629 (Mobile)</li>
            <ul class="sublass">
            <li>After office hours</li></ul>
        </ul>
<p /><strong>Drop us an email at: </strong>email@hangout.sg
<p /><strong>Chat with us through our Live Support: </strong>Our Operatior is currently
    <asp:Label ID="Label1" runat="server" 
        Text="online" ForeColor="#009933"></asp:Label><br />
        <asp:Panel ID="Panel1" runat="server">
    <strong>Click start conversation to chat:</strong> <asp:Button ID="Button3" runat="server" Text="Start Conversation" />    </asp:Panel>
    <hr align="left" style="width: 769px" />
<div id="contactform">
<h2>Contact Us Form:</h2><ul id="cf">
<li id ="sal">Salutation: </li><asp:DropDownList ID="SalutationBox" runat="server">
        <asp:ListItem>Mr</asp:ListItem>
        <asp:ListItem>Ms</asp:ListItem>
        <asp:ListItem>Mrs</asp:ListItem>
        <asp:ListItem>Dr</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
<li>Name:</li> <asp:TextBox ID="NameBox" runat="server"></asp:TextBox>
<li>Tel: </li><asp:TextBox ID="TelBox" runat="server"></asp:TextBox>
<li>Email: </li><asp:TextBox ID="EmailBox" runat="server"></asp:TextBox>
<li>Subject: </li><asp:TextBox ID="SubjectBox" runat="server"></asp:TextBox>
<li id="cfcontent">Queries/Problem:</li>
    <asp:TextBox ID="QueriesBox" runat="server" Height="150px" 
        TextMode="MultiLine" Width="384px" BorderStyle="Groove"></asp:TextBox>
<li>Preferred Contact Method:</li>
<asp:RadioButtonList ID="RadioButton" runat="server">
<asp:ListItem Text = "Email" Value="Email" />
<asp:ListItem Text = "Tel" Value="Tel" />
</asp:RadioButtonList>
    <cc1:CaptchaControl ID="Captcha1" runat="server" 

 CaptchaBackgroundNoise="Low" CaptchaLength="5" 

 CaptchaHeight="60" CaptchaWidth="200" 

 CaptchaLineNoise="None" CaptchaMinTimeout="5" 

 CaptchaMaxTimeout="240" FontColor = "#529E00" Width="209px" />
    <p>
    <asp:TextBox ID="txtCaptcha" runat="server" Width="200px">Enter the code above</asp:TextBox>
    <br /><asp:Label ID="lblMessage" runat="server"></asp:Label>
<p />
    <asp:Button ID="SubmitButton" runat="server" Text="Submit" 
        onclick="btnVerify_Click" />
    <asp:Button ID="Button4" runat="server" Text="Reset" />
</ul>
</div>
</div>
</asp:Content>

