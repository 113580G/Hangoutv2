<%@ Page Title="" Language="C#" MasterPageFile="~/Master/user.master" AutoEventWireup="true" CodeFile="Adminsam.aspx.cs" Inherits="Master_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center><span class="title">Edit Your Package</span></center>
    <ul id="userlist">
    <li>Package Purchased:&nbsp;   <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>
        </li>
    <li>Date of camp:<asp:Label ID="Label2" runat="server" Text="Label2"></asp:Label>
        </li>
    <li>Services:<asp:Label ID="Label3" runat="server" Text="Label3"></asp:Label>
        </li>
    <li>Activities:<asp:Label ID="Label4" runat="server" Text="Label4"></asp:Label>
        </li>
    <li>No of Participants:&nbsp;&nbsp;   <asp:Label ID="Label5" runat="server" 
            Text="Label5"></asp:Label>
        </li>
    </ul>
        Recorded date of purchased: <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
        <hr />
        Additional services that you may purchase:
        <p />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Service1" />
            ,
            cost is <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Service2" />
        ,
            cost is <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="Service3" />
        ,
            cost is <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox4" runat="server" Text="Service4" />
        ,
            cost is <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox5" runat="server" Text="Service5" />
        ,
            cost is <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox6" runat="server" Text="Service6" />
        ,
            cost is <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>/person
        <p />
        Additional activities that you may purchase:
        <p />
        <asp:CheckBox ID="CheckBox7" runat="server" Text="Activity1" />
        ,
            cost is <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox8" runat="server" Text="Activity2" />
        ,
            cost is <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox9" runat="server" Text="Activity3" />
        ,
            cost is <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox10" runat="server" Text="Activity4" />
        ,
            cost is <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox11" runat="server" Text="Activity5" />
        ,
            cost is <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox12" runat="server" Text="Activity6" />
        ,
            cost is <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>/person
                <br />
        <asp:CheckBox ID="CheckBox13" runat="server" Text="Activity7" />
        ,
            cost is <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox14" runat="server" Text="Activity8" />
        ,
            cost is <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox15" runat="server" Text="Activity9" />
        ,
            cost is <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>/person
        <br />
        <asp:CheckBox ID="CheckBox16" runat="server" Text="Activity10" />
        ,
            cost is <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>/person
        <p />No of participants:
            <asp:Label ID="Label6" runat="server" Text="Label1"></asp:Label>
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total cost:
            <asp:Label ID="Label7" runat="server" Text="Label2"></asp:Label>
       <p /> <a href="payment.aspx"><strong>Make a payment now</strong></a>
    
</asp:Content>

