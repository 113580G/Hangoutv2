<%@ Page Title="" Language="C#" MasterPageFile="~/Master/payment.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Master_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<div id="paymentorderlayout">
<h2>Secure Payment : This page is SSL secured</h2>
    <asp:Panel ID="Panel1" runat="server" Width="270px" CssClass="paymentPanel1">
    <h2>Main Package:</h2>
        <ul class="oslist">
            <li>Name: <asp:Label ID="mPackagename" runat="server" Font-Bold="True" 
                    Font-Overline="False" Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>Start Date: <asp:Label ID="mStartdate" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>End Date: <asp:Label ID="mEnddate" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>Service 1: <asp:Label ID="mService1" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
                </li>
            <li>Service 2: <asp:Label ID="mService2" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
                </li>
            <li>Activity 1: <asp:Label ID="mActivity1" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>Activity 2: <asp:Label ID="mActivity2" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>Activity 3: <asp:Label ID="mActivity3" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>Activity 4: <asp:Label ID="mActivity4" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>Activity 5: <asp:Label ID="mActivity5" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>No. of participants: <asp:Label ID="mPpl" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>Cost per participants: <asp:Label ID="costPart" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
       
            
        </ul>
        <h3>Total cost: $<asp:Label ID="mTotalcost" runat="server" Font-Underline="True"></asp:Label></h3>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Width="270px" 
        CssClass="paymentPanel2" Visible="False">
            <h2>Upsell Package:</h2>
        <ul class="oslist">
            <li>Service 1: <asp:Label ID="uService1" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
                </li>
            <li>&nbsp;Service 2: <asp:Label ID="uService2" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
                </li>
            <li>&nbsp; Activity 1: <asp:Label ID="uActivity1" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>Activity 2: <asp:Label ID="uActivity2" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>Activity 3: <asp:Label ID="uActivity3" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>Activity 4: <asp:Label ID="uActivity4" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>Activity 5: <asp:Label ID="uActivity5" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>No. of people: <asp:Label ID="uPart" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
            <li>Cost per participants: <asp:Label ID="uCost" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="Green"></asp:Label>
            </li>
        </ul>
                    <h3>Total cost: $<asp:Label ID="uTotalcost" runat="server" Font-Underline="True"></asp:Label>
            </h3>
    </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" Width="270px" 
        CssClass="paymentPanel3" Visible="False">
               <h2>Downsell Package:</h2>
        <ul class="oslist">
            <li>Service 1: <asp:Label ID="dService1" runat="server" Font-Underline="True" 
                    ForeColor="Green"></asp:Label>
            </li>
            <li>Activity 1: <asp:Label ID="dActivity1" runat="server" Font-Underline="True" 
                    ForeColor="Green"></asp:Label>
            </li>
            <li>Activity 2: <asp:Label ID="dActivity2" runat="server" Font-Underline="True" 
                    ForeColor="Green"></asp:Label>
            </li>
            <li>Activity 3: <asp:Label ID="dActivity3" runat="server" Font-Underline="True" 
                    ForeColor="Green"></asp:Label>
            </li>
            <li>No. of people: <asp:Label ID="dPart" runat="server" ForeColor="Green" 
                    Font-Bold="True" Font-Underline="True"></asp:Label>
            </li>
            <li>Cost per participants: <asp:Label ID="dCost" runat="server" ForeColor="Green" 
                    Font-Bold="True" Font-Underline="True"></asp:Label>
            </li>
        </ul>
                    <h3>Total cost: $<asp:Label ID="dTotalcost" runat="server" Font-Underline="True"></asp:Label>
            </h3>
    </asp:Panel>
<hr align="left" width="800" />
    <asp:Panel ID="Panel4" runat="server" CssClass="paymentPanel4" 
        Visible="False">
         <asp:SqlDataSource ID="orderline" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT Orderline.quantity, Orderline.olID, Product.prodName, Product.prodPrice FROM Orderline INNER JOIN Product ON Orderline.prodID = Product.prodID WHERE (Orderline.orderID = @orderID)" 
        
        UpdateCommand="UPDATE Orderline SET quantity = @quantity WHERE (olID = @olID)" 
        DeleteCommand="DELETE FROM Orderline WHERE (olID = @olID)">
        <DeleteParameters>
            <asp:Parameter Name="olID" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="orderID" SessionField="orderid" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="quantity" />
            <asp:Parameter Name="olID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h2>Shopping Cart</h2>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="orderline" DataKeyNames="olID" Font-Size="Medium" 
        CellPadding="4" CssClass="gridviewPayment" 
            onrowdeleted="cartDelete_Click" onrowupdated="cartUpdate_Click" 
             onrowcancelingedit="cancelediting" onrowdeleting="cartDeleting" 
             onrowediting="cartediting" onrowupdating="cartUpdating" onsorted="sorted" 
             onsorting="sorting" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="prodName" HeaderText="Name" 
                SortExpression="prodName" ReadOnly="True" />
            <asp:BoundField DataField="quantity" HeaderText="Qty" 
                SortExpression="quantity" />
            <asp:BoundField DataField="prodPrice"
                HeaderText="Price" ReadOnly="True" SortExpression="prodPrice"
                DataFormatString="{0:C}" />
            <asp:TemplateField HeaderText="Total Price" SortExpression="totalprice">
                <ItemTemplate>
                    <%# ((Convert.ToDouble(Eval("quantity")) *  Convert.ToDouble(Eval("prodPrice"))).ToString("C2"))%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField EditImageUrl="~/Images/Buttons/edit.png" 
                HeaderText="Edit" ShowEditButton="True" ButtonType="Image" />
            <asp:TemplateField>
            <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Delete" 
                                ImageUrl="~/Images/Buttons/Delete.png" 
                                OnClientClick="return confirm('Are you sure you want to delete?');" />
            </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
     <h3>Total cost: <asp:Label ID="scTotal" runat="server" Font-Underline="True" 
             Font-Bold="True"></asp:Label></h3>
    </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" Visible="False"><hr id ="paymenthr" align="left" width="800" /></asp:Panel>
    <div id="information">
    <h1>Make Payment</h1>
    <div id="paymentBox">
        <asp:Panel ID="Panel6" runat="server" CssClass="paymentPanel6">
    <h2>Grand Total Cost:</h2>
    <ul class="oslist2">
    <li>
        <asp:TextBox ID="gtcBox" runat="server" TextMode="MultiLine" Height="60px" 
            style="margin-left: 0px" Width="330px" ReadOnly="True"></asp:TextBox>
        </li>
    </ul>
         <h3><span id="grandcost">Please pay grand total of <asp:Label ID="grandCost" runat="server" Font-Underline="True" 
             Font-Bold="True"></asp:Label></span></h3>
                     </asp:Panel>
                     </div>
        <img alt="authorizenet" class="style1" src="Images/pictures/7151464.jpg" />
        <p /><img src="Images/site/verisign2.png" />
        <p />
        <asp:Button ID="Button3" runat="server" Text="Transfer over to Paypal" />
        </div>
        <p />
        <div id="vitalInfo">
    <h2>Card Details:</h2><ul class="cardDetail">
<li id="paymentcard">Payment Payment Mode:<asp:RadioButton ID="Visa" runat="server" GroupName="paymentmode" 
        Text="Visa" />
&nbsp;<asp:RadioButton ID="MasterCard" runat="server" GroupName="paymentmode" 
        Text="MasterCard" /></li>
<li><asp:Label ID="ppm" runat="server" ForeColor="Red"></asp:Label></li>
        <li>Card Number: <asp:TextBox ID="cardNumber" runat="server" Width="210px"></asp:TextBox></li>
           <li><asp:Label ID="cardNo" runat="server" ForeColor="Red"></asp:Label></li>
    </li>
<li>Security Code:<asp:TextBox ID="securityCode" runat="server" Width="210px" 
        TextMode="Password"></asp:TextBox>
    </li>
            <li>
    <asp:Label ID="sc" runat="server" ForeColor="Red"></asp:Label>
    </li>
<li id="ed">Expiry Date:<asp:DropDownList ID="expiredDay" runat="server" Height="20px" 
        Width="50px">
    <asp:ListItem>1</asp:ListItem>
    <asp:ListItem>2</asp:ListItem>
    <asp:ListItem>3</asp:ListItem>
    <asp:ListItem>4</asp:ListItem>
    <asp:ListItem>5</asp:ListItem>
    <asp:ListItem>6</asp:ListItem>
    <asp:ListItem>7</asp:ListItem>
    <asp:ListItem>8</asp:ListItem>
    <asp:ListItem>9</asp:ListItem>
    <asp:ListItem>10</asp:ListItem>
    <asp:ListItem>11</asp:ListItem>
    <asp:ListItem>12</asp:ListItem>
    </asp:DropDownList>
            <asp:DropDownList ID="expiredMonth" runat="server" Height="20px" 
        Width="70px">
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
                <asp:ListItem>2018</asp:ListItem>
                <asp:ListItem>2019</asp:ListItem>
                <asp:ListItem>2020</asp:ListItem>
            </asp:DropDownList>
        </li>
        <li>Cardholder's Name:<asp:TextBox ID="cardholderNo" runat="server" Width="211px"></asp:TextBox>
        </li>
            <li>
            <asp:Label ID="ch" runat="server" ForeColor="Red"></asp:Label>
        </li>
</ul>
    <h2>Shipping Details:</h2>
<ul class="cardDetail">
<li>Name:<asp:TextBox ID="ShippingName" runat="server" Width="210px"></asp:TextBox>
    </li>
    <li>
    <asp:Label ID="sName" runat="server" ForeColor="Red"></asp:Label>
    </li>
<li>Shipping Address:<asp:TextBox ID="shippingAdd" runat="server" Width="210px"></asp:TextBox>
    </li>
    <li>
    <asp:Label ID="sAdd" runat="server" ForeColor="Red"></asp:Label>
    </li>
    <li>PostCode/Zip Code:<asp:TextBox ID="zipcode" runat="server" Width="210px"></asp:TextBox>
    </li>
    <li>
        <asp:Label ID="sZip" runat="server" ForeColor="Red"></asp:Label>
    </li>
    <li>Telephone:<asp:TextBox ID="telephone" runat="server" Width="210px"></asp:TextBox>
    </li>
    <li>
        <asp:Label ID="stel" runat="server" ForeColor="Red"></asp:Label>
    </li>
    <li>Email:<asp:TextBox ID="emailAdd" runat="server" Width="210px"></asp:TextBox>
    </li>
    <li>
        <asp:Label ID="smail" runat="server" ForeColor="Red"></asp:Label>
    </li>
</ul>
<div id="purchase">
    <asp:Button ID="startOver" runat="server" Text="Leave shipping detail blank" 
        CssClass="startover" onclick="startover_click" />
    <asp:Button ID="submitPayment" runat="server" Text="Submit Payment" 
        CssClass="submitpayment" onclick="submitPaymentInfo" />
    </div>


</div>
</div>
</ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

