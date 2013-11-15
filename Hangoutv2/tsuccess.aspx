<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tsuccess.aspx.cs" Inherits="tsuccess" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            color: #0033CC;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>You Have Successfully Submit a Testimonial. Thank You For Submitting.</strong></div>
        <div>
        
            <br />
            <asp:Button ID="Button1" runat="server" onclick="click" 
                style="text-align: center" Text="Back" />
        
        </div>
    </form>
</body>
</html>
