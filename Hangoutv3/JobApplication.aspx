<%@ Page Title="" Language="C#" MasterPageFile="~/Master/user.master" AutoEventWireup="true" CodeFile="JobApplication.aspx.cs" Inherits="Master_Default7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div/>

    <center>
                        <table cellpadding="0" style="height:215px; width:497px; background-color: #66FFCC;" border="3">
                            <tr>
                                <td align="center" colspan="2" style="font-size: xx-large">
                                    Job Application</td>
                            </tr>

            <tr><td align="right" style="width: 174px; height: 57px;">
            <asp:Label ID="Label8" runat="server" Text="First Name:"></asp:Label>
            <br />
                                    <asp:RequiredFieldValidator 
                                    id="RequiredFieldValidator8" runat="server" 
                                    ErrorMessage="*Required!" 
                                    ControlToValidate="TextBox1" Font-Bold="True" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
            </td>
         
         <td style="height: 57px; width: 265px;">               
         &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         </td> </tr>

          <tr> <td align="right" style="width: 174px; height: 48px;">
            <asp:Label ID="Label14" runat="server" Text="Last Name:"></asp:Label>
              <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                  ControlToValidate="TextBox9" ErrorMessage="*Required!" Font-Bold="True" 
                  ForeColor="Red">
                                    </asp:RequiredFieldValidator>
            </td>

             <td style="height: 57px; width: 265px;">   
              &nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
              </td> </tr>
        
        <tr><td align="right" style="width: 174px; height: 48px;">
            Email Address:
            <br />
                            <asp:RequiredFieldValidator 
                            id="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="*Required!" 
                            ControlToValidate="TextBox12" Font-Bold="True" ForeColor="Red">
                            </asp:RequiredFieldValidator>
            </td>

            <td style="height: 57px; width: 265px;"> 
            &nbsp;<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            <br/>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                            ControlToValidate="TextBox12" 
                                            ErrorMessage="Invalid Email! Must contain '@' and .com/.sg"  
                                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" />
            </td></tr>


        <tr><td align="right" style="width: 174px; height: 57px;">
            &nbsp;<asp:Label ID="Label2" runat="server" Text="Address:"></asp:Label>
            <br />
                                   <asp:RequiredFieldValidator 
                                    id="RequiredFieldValidator4" runat="server" 
                                    ErrorMessage="*Required!" 
                                    ControlToValidate="TextBox2" Font-Bold="True" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
            </td>

            <td style="height: 57px; width: 265px;"> 
        &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td></tr>

          <tr><td align="right" style="width: 174px; height: 57px;">
                Postal Code:
                <br />
                                   <asp:RequiredFieldValidator 
                                    id="RequiredFieldValidator1" runat="server" 
                                    ErrorMessage="*Required!" 
                                    ControlToValidate="TextBox10" Font-Bold="True" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                </td>

                <td style="height: 57px; width: 265px;"> 
                    &nbsp;<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td></tr>
        
        <tr><td align="right" style="width: 174px; height: 57px;">
               Block Number:
               <br />
                                   <asp:RequiredFieldValidator 
                                    id="RequiredFieldValidator5" runat="server" 
                                    ErrorMessage="*Required!" 
                                    ControlToValidate="TextBox11" Font-Bold="True" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                </td>

                <td style="height: 57px; width: 265px;"> 
                    &nbsp;<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td></tr>
        
           <tr><td align="right" style="width: 174px; height: 57px;">
            <asp:Label ID="Label3" runat="server" Text="Unit Number:"></asp:Label>
            <br />
                                   <asp:RequiredFieldValidator 
                                    id="RequiredFieldValidator6" runat="server" 
                                    ErrorMessage="*Required!" 
                                    ControlToValidate="TextBox3" Font-Bold="True" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
            </td>

             <td style="height: 57px; width: 265px;">
                 &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td></tr>
       
           <tr><td align="right" style="width: 174px; height: 57px;">
            <asp:Label ID="Label4" runat="server" Text="Contact Number:"></asp:Label>
               <br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                   ControlToValidate="TextBox4" ErrorMessage="*Required!" Font-Bold="True" 
                   ForeColor="Red">
                                    </asp:RequiredFieldValidator>
            </td>

            <td style="height: 57px; width: 265px;">
           &nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
           </td></tr>
        
       <tr><td align="right" style="width: 174px; height: 57px;">
            <asp:Label ID="Label13" runat="server" Text="Gender:"></asp:Label>
            <br />
                                   <asp:RequiredFieldValidator 
                                    id="RequiredFieldValidator7" runat="server" 
                                    ErrorMessage="*Required!" 
                                    ControlToValidate="DropDownList1" Font-Bold="True" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
            </td>

             <td style="height: 57px; width: 265px;">
            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            </td></tr>
             
      
      <tr><td align="right" style="width: 174px; height: 57px;">
            Resume:
            <br />
                                   <asp:RequiredFieldValidator 
                                    id="RequiredFieldValidator10" runat="server" 
                                    ErrorMessage="*Required!" 
                                    ControlToValidate="FileUpload1" Font-Bold="True" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
            </td>

            <td style="height: 57px; width: 265px;">
             &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
            </td></tr>
             
           
           <tr><td align="right" style="width: 174px; height: 57px;">
            Cover letter:
            <br />
                                   <asp:RequiredFieldValidator 
                                    id="RequiredFieldValidator11" runat="server" 
                                    ErrorMessage="*Required!" 
                                    ControlToValidate="FileUpload2" Font-Bold="True" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
          </td>

            <td style="height: 57px; width: 265px;">
             &nbsp;<asp:FileUpload ID="FileUpload2" runat="server" />
            </td></tr>

            <tr><td align="right" style="width: 174px; height: 57px;"><center>
            <asp:Button ID="Button1" runat="server" Text="Cancel" />
            </center></td>


           <td style="height: 57px; width: 265px;"><center>
            <asp:Button ID="Button2" runat="server" Text="Submit!" 
                onclick="Button2_Click"  Width="64px" />
                </center></td></tr>

                  </table>
                  </center>
                        
       
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Activity]">
            </asp:SqlDataSource>
        
        <p>
            <asp:Label ID="Label15" runat="server"></asp:Label>
            <asp:Label ID="Label16" runat="server"></asp:Label>
        </p>
</asp:Content>

