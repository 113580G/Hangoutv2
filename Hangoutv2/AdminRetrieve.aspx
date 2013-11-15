<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminRetrieve.aspx.cs" Inherits="AdminRetrieve" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                    <center>
                        <table cellpadding="0" 
                            style="height:217px; width:385px; background-color: #FFFFCC;">
                            <tr>
                                <td align="center" colspan="2" style="color: #33CC33; font-weight: bold;">
                                    RETRIEVE PASSWORD</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    Admin Email:&nbsp;&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="AdminEmail" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    &nbsp;</td>
                                <td>
        <asp:Button ID="Button2" runat="server" Text="Submit" Height="20px" 
            onclick="On_ClickSubmit" />
        <asp:Button ID="Button1" runat="server" Text="Cancel" Height="20px" 
            onclick="On_ClickCancel" />
                                </td>
                            </tr>
                            </table>
                        </center>
    </form>
</body>
</html>
