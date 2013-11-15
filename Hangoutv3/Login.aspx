<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>HangOut! Singapore</title>
   <link rel="stylesheet" type="text/css" href="Styles/main2.css" />
   <script type='text/javascript'>
       function closebox() {
           parent.$.fn.colorbox.close();
       };
   </script>
</head>
<body>
    <form id="form1" runat="server">
    <ul id="registerf2">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
    <li><h2>Please Login To Continue</h2></li>
    <li>Email: 
        <asp:TextBox ID="emailUser" DataSourceID="ObjectDataSource1" 
            runat="server"></asp:TextBox></li>
    <li>Password: <asp:TextBox ID="passwordUser" runat="server" TextMode="Password"></asp:TextBox></li>
        <li>OTP : <asp:TextBox ID="otpInsert" runat="server"></asp:TextBox></li>
        <li>Your OTP is: <asp:TextBox ID="otpGenerator" runat="server" Enabled="False" 
                ReadOnly="True"></asp:TextBox></li>
        <li>
            <asp:Button ID="Button3" runat="server" onclick="Generate_Click" 
                Text="Generate" />
        </li>
        <li>&nbsp;Please generate and input the OTP</li>
        <li>
            <asp:Label ID="errorLbl" runat="server"></asp:Label>
        </li>

    <li><div id="submitbutton2">
        <asp:Button ID="submitBtn" runat="server" Text="Submit" Height="20px" 
            onclick="submitBtn_Click" />
        <asp:Button ID="resetBtn" runat="server" Text="Reset" Height="20px" 
            onclick="resetBtn_Click" />
        </div></li>
            </ContentTemplate>
                </asp:UpdatePanel>
            </ul>
    </form>
</body>
</html>
