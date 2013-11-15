<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Newslettercomplete.aspx.cs" Inherits="Newslettercomplete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 250px;
            height: 278px;
            margin-left: 29px;
            margin-top: 0px;
        }
        .style2
        {
            height: 57px;
            width: 365px;
        }
        .style3
        {
            height: 57px;
            width: 208px;
        }
    </style>
</head>

<body>

    <form id="form1" runat="server">
    
    <div style="margin-left: 0px; margin-top: 20px; width: 248px; margin-right: 0px;">
        
        <table border="0" cellpadding="0" 
            
            
            style="height:215px; width:843px; background-color: #FFFFFF; margin-left: 0px; margin-right: 0px;">
            <tr>
                <td align="center" colspan="2" style="font-size: xx-large">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <img alt="" class="style1" src="Images/Buttons/unit-completed-icon.png" /></td>
                <td class="style2"> 
                    <div style="margin-left: 24px; margin-right: 10px; margin-top: 0px; font-weight: bold; width: 374px;">THANK YOU FOR SIGNING<br />
                        UP TO OUR NEWSFEED!<br />
                        <br />
                        PLEASE DO CHECK YOUR E-MAIL DAILY! 
                        <br />
                        <br />
                        DON&#39;T FORGET TO 
                    SIGN UP AN ACCOUNT TO BUY PRODUCTS!</div></td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" style="margin-left: 30px" 
                        Text="HOME PAGE" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
        
        </div>
    
    </form>
    
</body>

</html>
