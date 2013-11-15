<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>HangOut! Singapore</title>
   <link rel="stylesheet" type="text/css" href="Styles/main2.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="rform">
    <h2>Registration form:</h2>
        <hr align="left" width="600" />
    <ul id ="registerf">
    <li class="left"><div id="innerleft">First Name: <asp:TextBox ID="fName" 
            DataSourceID="ObjectDataSource1" runat="server"></asp:TextBox></div></li><li class="right">Last Name: <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></li>
    <li class="left"><div id="innerleft2">Gender: <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></div></li><li class="right"> Date Of Birth: <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></li>
    <li class="left"><div id="innerleft3">Address: 
        <asp:TextBox ID="TextBox7" runat="server" 
            style="margin-left: 0px"  Width="384px"></asp:TextBox></div></li>
    <li class="left"><div id="innerleft4">City / State: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></div></li><li class="right"> Postal Code: <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></li>
    <li class="left"><div id="innerleft5">Contact No: <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></div></li><li class="right">Email Address: <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></li>
    <li class="left"><div id="innerleft6">Password: <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></div></li><li class="right">Retype Password: <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></li>
    <li class="left"><div id="innerleft7">Secret Question: <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></div></li>
    <li class="right">Secret Answer: <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></li>
    <li class="left"><div id="submitbutton">
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Images/Buttons/registerbut.png" /> <asp:ImageButton ID="ImageButton2"
                runat="server" ImageUrl="~/Images/Buttons/clearbutton.png" /></div></li>
            </ul>
    </div>
    </form>
</body>
</html>
