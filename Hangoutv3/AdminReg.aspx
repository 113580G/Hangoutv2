<%@ Page Title="" Language="C#" MasterPageFile="Master/adminUser.master" AutoEventWireup="true" CodeFile="AdminReg.aspx.cs" Inherits="_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
            <center>

                        <table cellpadding="0" style="height:215px; width:497px; background-color: #66FFCC;" border="3">
                            <tr>
                                <td align="center" colspan="2" style="font-size: xx-large">
                                    Admin Registration</td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 174px; height: 57px;">
                                    <asp:Label ID="Label1" runat="server" Text="Admin First Name: "></asp:Label> 
                                    <br />
                                    <asp:RequiredFieldValidator 
                                    id="RequiredFieldValidator8" runat="server" 
                                    ErrorMessage="*Required!" 
                                    ControlToValidate="FName" Font-Bold="True" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
            
                                </td>
                                <td style="height: 57px; width: 265px;">
                                    <center><asp:TextBox ID="FName" runat="server" Width="154px" 
                                            style="margin-left: 0px" Height="18px"></asp:TextBox>
                                            </center>
                                           
                   
                                </td>
                            </tr>
                            
                            <tr>
                                <td align="right" style="width: 174px; height: 48px;">
                                    <asp:Label ID="Label2" runat="server" Text="Admin Last Name: "></asp:Label>
                                    <br/>
                                    <asp:RequiredFieldValidator 
                                    id="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="*Required!" 
                                    ControlToValidate="LName" Font-Bold="True" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                    <br />   
                                </td>
                                
                                <td style="height: 48px; width: 265px;">
                                <center>
                                     <asp:TextBox ID="LName" runat="server" Width="154px" style="margin-left: 0px"></asp:TextBox>
                                </center>
                                </td>
                            </tr>
                           
                            <tr>
                            <td align="right" style="width: 174px; height: 75px;">
                            <asp:Label ID="Label3" runat="server" Text="Admin Email: "></asp:Label>
                            <br />
                            <asp:RequiredFieldValidator 
                            id="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="*Required!" 
                            ControlToValidate="AdEmail" Font-Bold="True" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                           
                            </td>
                            <td style="height: 75px; width: 265px;">
                            <center>
                              <asp:TextBox ID="AdEmail"  runat="server" Width="154px" style="margin-left: 0px"></asp:TextBox>
                                <br/>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                            ControlToValidate="AdEmail" 
                                            ErrorMessage="Invalid Email! Must contain '@' and .com/.sg"  
                                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" />
                                           </center>
                               
                                </td>
                                   </tr>
                                
                          
                            <tr>
                                <td align="right" style="width: 174px; height: 75px;">
                                <asp:Label ID="Label4" runat="server" Text="Admin Phone: "></asp:Label>
                                <br />
                                   <asp:RequiredFieldValidator 
                                    id="RequiredFieldValidator4" runat="server" 
                                    ErrorMessage="*Required!" 
                                    ControlToValidate="AdPhone" Font-Bold="True" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                    </td>

                                <td style="width: 265px; height: 75px;">
                                <center>
                                <asp:TextBox ID="AdPhone" runat="server" Width="154px" style="margin-left: 0px"></asp:TextBox>
                                <br />
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                 ControlToValidate="AdPhone" 
                                 ErrorMessage="Phone number must contain 8 numbers" 
                                 ValidationExpression="[0-9]{8,10}" Font-Bold="True" Font-Size="Small" 
                                        ForeColor="#FF3300" />
                                </center>
                                </td>
                            </tr>
                            
                            <tr>
                                <td align="right" style="width: 174px; height: 75px;">
                                <asp:Label ID="Label5" runat="server" Text="Username: "></asp:Label>
                                <br />
                                   <asp:RequiredFieldValidator 
                                    id="RequiredFieldValidator6" runat="server" 
                                    ErrorMessage="*Required!" 
                                    ControlToValidate="userName" Font-Bold="True" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                    </td>

                                <td style="width: 265px; height: 75px;">
                                <center>
                                <asp:TextBox ID="userName" runat="server" style="margin-left: 0px" Width="154px"></asp:TextBox>
                                 <br/>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                            ControlToValidate="userName" 
                                            ErrorMessage="Username must contain only 6 digits!"  
                                            
                                        ValidationExpression="([0-9]{6,20})" 
                                        Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" />
                                           <br />
                                           <div id="checkusername" runat="server"  Visible="false">
                                    </div>
                                           </center>
                           
                                </td>
                            </tr>

                            <tr>
                                <td align="right" style="width: 174px; height: 75px;">
                                <asp:Label ID="Label6" runat="server" Text="Password: "></asp:Label>
                                <br />
                                   <asp:RequiredFieldValidator 
                                   id="RequiredFieldValidator7" runat="server" 
                                   ErrorMessage="*Required!" 
                                   ControlToValidate="password" Font-Bold="True" ForeColor="Red">
                                   </asp:RequiredFieldValidator>
                                   </td>
                                   
                                <td style="width: 265px; height: 75px;">
                                <center>
                                <asp:TextBox ID="password" runat="server" style="margin-top: 0px" Width="154px"></asp:TextBox>
                                <br />
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" display="Dynamic"
                                 controltovalidate="password" 
                                 errormessage="Password must be 6-12 long. Numbers or Alphabets." 
                                 validationexpression="[a-zA-Z0-9]{6,12}" Font-Bold="True" Font-Size="Small" 
                                        ForeColor="#FF3300" />
                                
                                
                                </center>
                                </td>
                            </tr>

                            
                            <tr>
                                <td align="right" style="width: 174px; height: 48px;">
                                <asp:Label ID="Label7" runat="server" Text=" Admin Roles: "></asp:Label>
                                <br />
                                   <asp:RequiredFieldValidator id="RequiredFieldValidator5"  
                                    runat="server" ErrorMessage="*Please make a selection!" 
                                    ControlToValidate="DropDownList1" 
                                    InitialValue="Select An Admin Role" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                   </td>
                                   
                                <td style="width: 265px">
                                <center>
                                <asp:DropDownList id="DropDownList1" runat="server">
                                <asp:ListItem Selected="True">Select An Admin Role</asp:ListItem>
                                <asp:ListItem>PM</asp:ListItem>
                                <asp:ListItem>SAM</asp:ListItem>
                                <asp:ListItem>UDM</asp:ListItem>
                                <asp:ListItem>Testimonial</asp:ListItem>
                                <asp:ListItem>Support Ticket</asp:ListItem>
                                <asp:ListItem>Live Support</asp:ListItem>
                                <asp:ListItem>Job Application</asp:ListItem>
                                <asp:ListItem>Newsletter</asp:ListItem>
                                </asp:DropDownList>
                                </center>
                                </td>
                            </tr>


                        </table>
                        </center>
                    
    
    
            
    
    
            <asp:Button id="Button1" onclick="Button1_Click" 
             runat="server" Text="Create Admin" 
                style="margin-left: 635px; margin-right: 653px; margin-top: 44px;" Width="111px" 
                Height="27px" BackColor="#006600" BorderColor="White" BorderStyle="Groove" 
                Font-Bold="True" ForeColor="White"></asp:Button>


    

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

        
            
        
   
</asp:Content>

