<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
    <div id="rform">
    <h2>Registration form:</h2>
        <hr align="left" width="600" />
    <ul id ="registerf">
        <li>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </li>
    <li class="left"><div id="innerleft">First Name: <asp:TextBox ID="fName" 
            DataSourceID="ObjectDataSource1" runat="server"></asp:TextBox></div></li><li class="right">Last Name: 
            <asp:TextBox ID="lName" runat="server"></asp:TextBox></li>
    <li class="left"><div id="innerleft2">Gender:<asp:DropDownList ID="gender" 
            runat="server">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
&nbsp;</div></li><li class="right"> Date Of Birth: 
            <asp:TextBox ID="dob" runat="server"></asp:TextBox></li>
    <li class="left"><div id="innerleft3">Address: 
        <asp:TextBox ID="address" runat="server" 
            style="margin-left: 0px"  Width="384px"></asp:TextBox></div></li>
    <li class="left"><div id="innerleft4">City / State: <asp:TextBox ID="city" 
            runat="server"></asp:TextBox></div></li><li class="right"> Postal Code: 
            <asp:TextBox ID="postalCode" runat="server"></asp:TextBox></li>
    <li class="left"><div id="innerleft5">Contact No: <asp:TextBox ID="contNo" 
            runat="server"></asp:TextBox></div></li><li class="right">Email Address: 
            
            <asp:TextBox ID="emailAdd" runat="server"></asp:TextBox><asp:Label ID="Label1" 
                runat="server"></asp:Label>
                <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                            ControlToValidate="emailAdd" 
                                            ErrorMessage="Need to contain '@' and .com/.sg"  
                                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" />
                 
                </li>
    <li class="left"><div id="innerleft6">Password: <asp:TextBox ID="pw" runat="server" 
            TextMode="Password"></asp:TextBox></div></li><li class="right">Retype Password: 
        <asp:TextBox ID="RePW" runat="server" TextMode="Password"></asp:TextBox></li>
    <li class="left"><div id="innerleft7">Secret Question: <asp:TextBox ID="scrtQns" 
            runat="server"></asp:TextBox></div></li>
    <li class="right">Secret Answer: <asp:TextBox ID="scrtAns" runat="server"></asp:TextBox></li>
    <li class="left"><div id="submitbutton">
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Images/Buttons/registerbut.png" onclick="registerIn" /> <asp:ImageButton ID="ImageButton2"
                runat="server" ImageUrl="~/Images/Buttons/clearbutton.png" 
            onclick="On_ClickClear" /></div></li>
            </ul>
    </div>
    </form>
</body>
</html>
