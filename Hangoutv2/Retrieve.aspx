<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Retrieve.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>HangOut! Singapore</title>
   <link rel="stylesheet" type="text/css" href="Styles/main2.css" />
   <script type='text/javascript'>
       function closebox() {
           parent.$.fn.colorbox.close();
       }
   </script>
</head>
<body>
    <form id="form1" runat="server">
   <div id="rform2">
    <ul id="registerf2">
    <li><h2>Retrieve Password</h2></li>
    <li>Email: <asp:TextBox ID="TextBox1" DataSourceID="ObjectDataSource1" runat="server"></asp:TextBox></li>
    <li><div id="submitbutton2">
        <asp:Button ID="Button2" runat="server" Text="Submit" Height="20px" 
            onclick="On_ClickSubmit" />
        <asp:Button ID="Button1" runat="server" Text="Back" Height="20px" 
            onclick="On_ClickCancel" Width="56px" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        </div></li>
            </ul>
    </div>
    </form>
</body>
</html>
