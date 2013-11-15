<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogIn.aspx.cs" Inherits="AdminLogIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 357px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #006600">
    <div><center>
    <h1 style="background-color: #FFFFFF">ADMINISTRATOR LOG-IN</h1>
    </center>
    </div>
   
        <center>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                    <center>
                        <table cellpadding="0" style="height:217px; width:385px;">
                            <tr>
                                <td align="center" colspan="2" style="color: #FFFFFF; font-weight: bold;">
                                    LOG-IN</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" 
                                        Font-Bold="True" ForeColor="White">User Name: </asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                        ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                        ForeColor="#CC0000" ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" 
                                        Font-Bold="True" ForeColor="White">Password:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                        ControlToValidate="Password" ErrorMessage="Password is required." 
                                        ToolTip="Password is required." ValidationGroup="Login1" Font-Bold="True" 
                                        ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <center><asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                                        Font-Underline="True" ForeColor="Aqua" NavigateUrl="~/AdminRetrieve.aspx">Forget Password?</asp:HyperLink></center>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                        DeleteMethod="Delete" InsertMethod="Insert" 
                                        OldValuesParameterFormatString="original_{0}" SelectMethod="GetAdminReg" 
                                        TypeName="AdministratorRegisTableAdapters.AdministratorRegisTableAdapter" 
                                        UpdateMethod="Update">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Original_staffID" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="aFname" Type="String" />
                                            <asp:Parameter Name="aLname" Type="String" />
                                            <asp:Parameter Name="aEmail" Type="String" />
                                            <asp:Parameter Name="aPhone" Type="String" />
                                            <asp:Parameter Name="aUsername" Type="String" />
                                            <asp:Parameter Name="aPassword" Type="String" />
                                            <asp:Parameter Name="aRoles" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="aFname" Type="String" />
                                            <asp:Parameter Name="aLname" Type="String" />
                                            <asp:Parameter Name="aEmail" Type="String" />
                                            <asp:Parameter Name="aPhone" Type="String" />
                                            <asp:Parameter Name="aUsername" Type="String" />
                                            <asp:Parameter Name="aPassword" Type="String" />
                                            <asp:Parameter Name="aRoles" Type="String" />
                                            <asp:Parameter Name="Original_staffID" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:ObjectDataSource>
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                                        ValidationGroup="Login1" onclick="LoginButton_Click" 
                                        style="height: 26px" />
                                </td>
                            </tr>
                        </table>
                        </center>
                    </td>
                </tr>
            </table>
     
    
    </center>
    </form>
</body>
</html>
