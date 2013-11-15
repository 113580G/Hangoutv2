<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuccessAddProduct.aspx.cs" Inherits="SuccessAddProduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        You have successfully add a new data into the table. Press Back to go back to 
        continue add more data in the table or you can log out this admin page. Thank 
        You!!!</div>
    <asp:Button ID="Button1" runat="server" Height="36px" onclick="Button1_Click" 
        Text="Back" Width="83px" />
    </form>
</body>
</html>
