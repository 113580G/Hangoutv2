<%@ Page Title="" Language="C#" MasterPageFile="Master/adminUser.master" AutoEventWireup="true" CodeFile="AdminNewsletter.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        
        <center style="height: 448px; margin-top: 80px;">
        <table cellpadding="0" 
            style="height:215px; width:497px; background-color: #33CC33; " 
            border="3">
                            <tr>
                                <td align="center" colspan="2" 
                                    style="font-size: xx-large; height: 37px; color: #FFFFFF;">
                                    NEWS-LETTER</td>
                            </tr>
                           
                            
                            <tr>
                            <td align="right" style="width: 149px; height: 75px;">
                            <asp:Label ID="Label2" runat="server" Text="To: " Font-Bold="True" 
                                    ForeColor="White"></asp:Label>
                            <br />
                            </td>
                              
                                
                                <td style="height: 48px; width: 234px;">
                                <center>
                                     <asp:TextBox ID="To" runat="server" Width="192px" 
                                         style="margin-left: 0px; margin-top: 33px;" Height="22px"></asp:TextBox>
                                     <br/>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                            runat="server" ErrorMessage="Please Enter A Valid 'To:' Email Address"
                                            ControlToValidate="To" 
                                         ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                         ForeColor="Red"></asp:RegularExpressionValidator>
                                            <br/>
                                            </center>
                              
                                </td>
                            </tr>
                           
                            <tr>
                            <td align="right" style="width: 149px; height: 75px;">
                            <asp:Label ID="Label3" runat="server" Text="Subject: " Font-Bold="True" 
                                    ForeColor="White"></asp:Label>
                            <br />
                           
                            </td>
                            <td style="height: 75px; width: 234px;">
                            <center>
                              <asp:TextBox ID="subject" runat="server" Width="192px" 
                                    style="margin-left: 0px; margin-top: 2px;" Height="22px"></asp:TextBox>
                                <br/>
                                           </center>
                               
                                </td>
                                   </tr>
                                
                          
                            <tr>
                                <td align="right" style="width: 149px; height: 93px;">
                                <asp:Label ID="Label4" runat="server" Text=" Mail: " Font-Bold="True" 
                                        ForeColor="White"></asp:Label>
                                <br />
                                </td>

                                <td style="height: 93px; width: 234px;">
                                <center>
                                <asp:TextBox runat="server" id="Mail" 
                                        style="width: 238px; height: 125px; margin-left: 19px; margin-top: 12px;" 
                                        rows="7" cols="24" TextMode="MultiLine"></asp:TextBox>

                                <br/>
                                    <br />
                                </center>
                               
                                </td>
                                
                           </tr>


                        </table>
                        </center>

                        <p> <asp:Button ID="Button1" runat="server" Text="Send Mail" onclick="Button1_Click" style="margin-left: 655px; margin-top: 0px" Width="91px"></asp:Button></p>
                            <asp:Label ID="Label1" runat="server"  
            style="margin-left: 671px; margin-top: 0px" Width="60px"></asp:Label>
      
</asp:Content>

