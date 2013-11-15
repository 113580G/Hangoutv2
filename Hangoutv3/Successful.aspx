<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Successful.aspx.cs" Inherits="Successful" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Successful Transaction!</title>
       <link rel="stylesheet" type="text/css" href="Styles/main.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id ="transactionborder">
    
        <h2>Congratulations - Your payment was sent.</h2>
        <p />
        You have succesful paid for this transaction Receipt ID:
            <asp:Label ID="referenceID" runat="server"></asp:Label>
        <p />
        Keep this receipt ID and contact information incase you need to contact us 
        <p />
            Contact Information: <a href="mailto:nurimanariff@gmail.com">nurimanariff@gmail.com</a> 
        <p />
            We have also sent you an email for this transaction for your reference<p />
            <asp:Button ID="viewOrder" runat="server" Text="View Order" 
                onclick="viewOrder_Click" />
        <p />
            We are always looking forward to serve you! - By Hangout Management</div>
    </form>
</body>
</html>
