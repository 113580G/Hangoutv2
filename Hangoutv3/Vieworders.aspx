<%@ Page Title="" Language="C#" MasterPageFile="~/Master/user.master" AutoEventWireup="true" CodeFile="Vieworders.aspx.cs" Inherits="Master_Default8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="vieworder">
    <asp:SqlDataSource ID="packageSqlSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
                SelectCommand="SELECT [Order].paymentMode, [Order].orderDate, Orderline.packParticipants, Package.packName, Package.packStartDate, Package.packEndDate FROM [Order] INNER JOIN Orderline ON [Order].orderID = Orderline.orderID INNER JOIN Package ON Orderline.packID = Package.packID CROSS JOIN Service CROSS JOIN Activity WHERE ([Order].paid = 'true') AND ([Order].custSerial = @custSerial) GROUP BY [Order].paymentMode, [Order].orderDate, Orderline.packParticipants, Package.packName, Package.packStartDate, Package.packEndDate ORDER BY [Order].orderDate DESC">
        <SelectParameters>
            <asp:SessionParameter Name="custSerial" SessionField="UserID" DefaultValue="" />
        </SelectParameters>
    </asp:SqlDataSource>
    Past Package Transaction:<p />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="packageSqlSource" ForeColor="#333333" 
        GridLines="None" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="packName" HeaderText="Package Name" 
                SortExpression="packName" />
            <asp:BoundField DataField="packParticipants" HeaderText="No of Participant" 
                SortExpression="packParticipants" />
            <asp:BoundField DataField="packStartDate" HeaderText="Start Date" 
                SortExpression="packStartDate" />
            <asp:BoundField DataField="packEndDate" HeaderText="End Date" 
                SortExpression="packEndDate" />
            <asp:BoundField DataField="paymentMode" HeaderText="Payment by" 
                SortExpression="paymentMode" />
            <asp:BoundField DataField="orderDate" HeaderText="Order On" 
                SortExpression="orderDate" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <br />
    <br />
    Past Product Transaction:<br />
    <asp:SqlDataSource ID="productSqlSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
                    SelectCommand="SELECT [Order].paymentMode, Product.prodName, Product.prodPrice, Orderline.quantity, [Order].orderDate FROM [Order] INNER JOIN Orderline ON [Order].orderID = Orderline.orderID INNER JOIN Product ON Orderline.prodID = Product.prodID WHERE ([Order].paid = 'true') AND ([Order].custSerial = @custSerial) GROUP BY [Order].paymentMode, Product.prodName, Product.prodPrice, Orderline.quantity, [Order].orderDate ORDER BY [Order].orderDate DESC">
        <SelectParameters>
            <asp:SessionParameter Name="custSerial" SessionField="UserID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="productSqlSource" ForeColor="#333333" 
        GridLines="None" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="paymentMode" HeaderText="Paid by" 
                SortExpression="paymentMode" />
            <asp:BoundField DataField="prodName" HeaderText="Product Name" 
                SortExpression="prodName" />
            <asp:BoundField DataField="prodPrice" HeaderText="Product Price" 
                SortExpression="prodPrice" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" 
                SortExpression="quantity" />
            <asp:BoundField DataField="orderDate" HeaderText="Order On" 
                SortExpression="orderDate" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    </div>
</asp:Content>

