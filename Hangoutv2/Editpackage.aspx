<%@ Page Title="" Language="C#" MasterPageFile="~/Master/user.master" AutoEventWireup="true" CodeFile="Editpackage.aspx.cs" Inherits="Master_Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="usercontent">
    <hr class="userline" align="left"/>
    <h2>Edit Your Package:<span class="warning"> <br />Note: You can only edit before the actual date of camp being held</span></h2>
    <ul class="userpackage">
    <li>Select Package Purchased: 
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    </li>
    <li>Package Purchased: <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>
        </li>
    <li>Date of camp: <asp:Label ID="Label2" runat="server" Text="Label2"></asp:Label>
        </li>
    <li>Services: <asp:Label ID="Label3" runat="server" Text="Label3"></asp:Label>
        </li>
    <li>Activities: <asp:Label ID="Label4" runat="server" Text="Label4"></asp:Label>
        </li>
    <li>No of Participants: <asp:Label ID="Label5" runat="server" 
            Text="Label5"></asp:Label>
        </li>
            </ul>
        <asp:Panel ID="Panel1" runat="server" Visible="true">
            <div id="panel">
        * Add-on:
        <ul id="panel2">
        <li></li>
        </ul>
        </div>
        </asp:Panel>
        <h3>Payment Details:</h3>
    <ul class="userpackage">
        <li>Recorded date of purchased: <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label></li>
        <li>Mode of payment: <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label></li>
        <li>Total cost: <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label></li>
        </ul>
        <hr class="userline" align="left" />
        <div id="userbox2">
        <div id="userbox2left">
        Additional participant that you may wish to add: 
            <asp:TextBox ID="TextBox1" runat="server" Width="125px"></asp:TextBox>
            </div>
            <div id="userbox2right">
                    <asp:ImageButton ID="ImageButton1" class="img" runat="server" 
                ImageUrl="~/Images/Buttons/plus.png" />
            <asp:ImageButton ID="ImageButton2" class="img" runat="server" 
                ImageUrl="~/Images/Buttons/minus.png" />
            </div>
                </div>
        <div class="userbox">
        Additional services that you may wish to add:
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
        </div>
       <div class="userbox">
        Additional activities that you may wish to add:
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
        </div>
        <p />
        <asp:Panel ID="Panel3" runat="server">
        <div id="userbox1">
        <h3>You have selected the following add-ons:</h3>
        <br />Participants:
        <br />Services:
        <br />Activities:
        <p />
        <center>
        Click below to make a payment
        <img alt="addtocartbutton"  src="Images/Buttons/addtocartbutton2.jpg" border="none" />
        <center><a href="Master/upsell.aspx">
        <img alt="cardpayment" src="Images/Buttons/credit.jpg" border="none"/></a></center>
        <img src="Images/Site/verisign2.png" /></center>
       </div>
               </asp:Panel>
    </div>
</asp:Content>

