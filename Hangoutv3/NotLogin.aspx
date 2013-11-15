<%@ Page Title="" Language="C#" MasterPageFile="~/Master/user.master" AutoEventWireup="true" CodeFile="NotLogin.aspx.cs" Inherits="Master_Default8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div id="rform3">
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
    </div>
</asp:Content>

