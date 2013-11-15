<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OptIn.aspx.cs" Inherits="OptIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 136px;
        }
        .style2
        {
            width: 136px;
            height: 30px;
        }
        .style3
        {
            height: 30px;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            width: 136px;
            height: 49px;
        }
        .style6
        {
            height: 49px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#99FF33" 
        CreateUserButtonText="Submit" Email="Email" ForeColor="White" Height="291px" 
        style="margin-bottom: 0px" Width="401px">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server">
                <ContentTemplate>
                    <table cellpadding="0" cellspacing="0" 
                        style="height:100%;width:100%;border-collapse:collapse;">
                        <tr>
                            <td style="height:100%;width:100%;">
                                <table style="height:100%;width:100%;">
                                    <tr>
                                        <td align="center" class="style4" colspan="2">
                                            Sign Up For Our Free Monthly Newsletter!</td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style1">
                                            <label for="CreateUserWizard1_CreateUserStepContainer_UserName">
                                            <label for="CreateUserWizard1_CreateUserStepContainer_Email">
                                            E-mail</label>:</label></td>
                                        <td>
                                            <input name="CreateUserWizard1$CreateUserStepContainer$UserName" type="text" 
                                    id="CreateUserWizard1_CreateUserStepContainer_UserName" />
                                            <span ID="CreateUserWizard1_CreateUserStepContainer_UserNameRequired" 
                                                title="User Name is required.">*</span></td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style1">
                                            <label for="CreateUserWizard1_CreateUserStepContainer_Password">
                                            First Name:</label></td>
                                        <td>
                                            <input name="CreateUserWizard1$CreateUserStepContainer$Password" 
                                    type="password" id="CreateUserWizard1_CreateUserStepContainer_Password" />
                                            <span ID="CreateUserWizard1_CreateUserStepContainer_PasswordRequired" 
                                                title="Password is required.">*</span></td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style5">
                                            Last Nam<label for="CreateUserWizard1_CreateUserStepContainer_ConfirmPassword">e:</label></td>
                                        <td class="style6">
                                            <input name="CreateUserWizard1$CreateUserStepContainer$ConfirmPassword" 
                                    type="password" id="CreateUserWizard1_CreateUserStepContainer_ConfirmPassword" />
                                            <span ID="CreateUserWizard1_CreateUserStepContainer_ConfirmPasswordRequired" 
                                                title="Confirm Password is required.">*</span></td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style2">
                                            Contact Number:</td>
                                        <td class="style3">
                                            <input name="CreateUserWizard1$CreateUserStepContainer$Email" type="text" 
                                id="CreateUserWizard1_CreateUserStepContainer_Email" />
                                            <span ID="CreateUserWizard1_CreateUserStepContainer_EmailRequired" 
                                                title="E-mail is required.">*</span></td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
    </form>
</body>
</html>
