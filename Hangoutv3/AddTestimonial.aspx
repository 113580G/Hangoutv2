<%@ Page Title="" Language="C#" MasterPageFile="~/Master/user.master" AutoEventWireup="true" CodeFile="AddTestimonial.aspx.cs" Inherits="Master_Default7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="textboxc">
    <strong>Insert a Testimonial here:</strong></h1>
<p class="textboxc">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
<p class="textboxc">
        <asp:TextBox ID="TextBox1" runat="server" Height="209px" Width="496px" 
        TextMode="MultiLine" style="text-align: center" EnableTheming="True"></asp:TextBox>
    </p>
<p class="textboxc">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" 
        ErrorMessage="Please Enter a Testimonial. Thank you!!!"></asp:RequiredFieldValidator>
</p>
<p class="textboxc">
    <asp:Button ID="Button1" runat="server" Height="40px" onclick="Button1_Click" 
        style="color: #0000FF; font-weight: 700; text-align: center;" Text="Submit" 
            Width="100px" BackColor="Lime" />
        </p>
</asp:Content>

