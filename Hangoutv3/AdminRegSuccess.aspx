<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminRegSuccess.aspx.cs" Inherits="AdminRegSuccess" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

     <center>
                        <table cellpadding="0" style="height:217px; width:534px;">
                            <tr>
                            
                                <td style="font-size: xx-large; font-weight: bold; background-color: #009933; color: #FFFFFF" 
                                    align="center">
                                    REGISTRATION SUCCESSFUL!</td>
                                 
                            </tr>

                            <tr> 
                            <td>
                            <center>
                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="BACK" 
                                    style="margin-left: 0px" />
                                <asp:Button ID="Button1" runat="server" Text="LOGIN" onclick="Button1_Click" 
                                    style="margin-left: 165px" Width="55px" />
                                    </center>
                                </td>
                            </tr>
                            
                        </table>
                  
           
            </center>
    </form>
</body>
</html>
