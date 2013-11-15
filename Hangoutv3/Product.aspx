<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Product.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Master_Default7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="DeleteProduct" InsertMethod="Insertcat" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetCatID" 
        TypeName="ProductBLL">
        <DeleteParameters>
            <asp:Parameter Name="prodID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CatName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="CatID" QueryStringField="=" 
                Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        DeleteMethod="DeleteProduct" InsertMethod="Insertcat" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetCatID" 
        TypeName="ProductBLL">
        <DeleteParameters>
            <asp:Parameter Name="prodID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CatName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="2" Name="CatID" QueryStringField="=" 
                Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
        DeleteMethod="DeleteProduct" InsertMethod="Insertcat" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetCatID" 
        TypeName="ProductBLL">
        <DeleteParameters>
            <asp:Parameter Name="prodID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CatName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="3" Name="CatID" QueryStringField="=" 
                Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" 
        DeleteMethod="DeleteProduct" InsertMethod="Insertcat" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetCatID" 
        TypeName="ProductBLL">
        <DeleteParameters>
            <asp:Parameter Name="prodID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CatName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="4" Name="CatID" QueryStringField="=" 
                Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="prodID" 
        DataSourceID="ObjectDataSource1" RepeatColumns="5" RepeatDirection="Horizontal">
        <ItemTemplate>
            <div class="textboxc">
                <asp:Image ID="Image1" runat="server" Height="180px" 
                    ImageUrl='<%# Eval("ImageURL", "Prod_Images/{0}") %>' Width="140px" />
                <br />
                product ID:
                <asp:Label ID="prodIDLabel" runat="server" Text='<%# Eval("prodID") %>' />
                <br />
                product Name:
                <asp:Label ID="prodNameLabel" runat="server" Text='<%# Eval("prodName") %>' />
                <br />
                product Details:
                <asp:Label ID="prodDetailsLabel" runat="server" 
                    Text='<%# Eval("prodDetails") %>' />
                <br />
                product Price:
                <asp:Label ID="prodPriceLabel" runat="server" Text='<%# Eval("prodPrice") %>' />
                <br />
                Sizes:
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Extra Small</asp:ListItem>
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Medium</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                    <asp:ListItem>Extra Large</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Button ID="Button4" runat="server" CommandArgument='<%# Eval("prodID")%>' 
                    CommandName="atcBtn" onclick="addToCart_Click" oncommand="add" 
                    Text="Add To Cart" />
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
    <hr />
    <br />
    <asp:DataList ID="DataList2" runat="server" DataKeyField="prodID" 
        DataSourceID="ObjectDataSource2" RepeatColumns="5" RepeatDirection="Horizontal">
        <ItemTemplate>
            <div class="textboxc">
                <asp:Image ID="Image1" runat="server" Height="180px" 
                    ImageUrl='<%# Eval("ImageURL", "Prod_Images/{0}") %>' Width="140px" />
                <br />
                product ID:
                <asp:Label ID="prodIDLabel" runat="server" Text='<%# Eval("prodID") %>' />
                <br />
                product Name:
                <asp:Label ID="prodNameLabel" runat="server" Text='<%# Eval("prodName") %>' />
                <br />
                product Details:
                <asp:Label ID="prodDetailsLabel" runat="server" 
                    Text='<%# Eval("prodDetails") %>' />
                <br />
                product Price:
                <asp:Label ID="prodPriceLabel" runat="server" Text='<%# Eval("prodPrice") %>' />
                <br />
                Sizes:
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>6.5</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>7.5</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>8.5</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>9.5</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>10.5</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>11.5</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Button ID="Button6" runat="server" CommandArgument='<%# Eval("prodID")%>' 
                    CommandName="atcBtn" onclick="addToCart_Click" oncommand="add" 
                    Text="Add To Cart" />
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
    <hr />
    <br />
    <asp:DataList ID="DataList3" runat="server" DataKeyField="prodID" 
        DataSourceID="ObjectDataSource3" RepeatColumns="5" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="180px" 
                ImageUrl='<%# Eval("ImageURL", "Prod_Images/{0}") %>' Width="140px" />
            <br />
            prodID:
            <asp:Label ID="prodIDLabel" runat="server" Text='<%# Eval("prodID") %>' />
            <br />
            CatID:
            <asp:Label ID="CatIDLabel" runat="server" Text='<%# Eval("CatID") %>' />
            <br />
            prodName:
            <asp:Label ID="prodNameLabel" runat="server" Text='<%# Eval("prodName") %>' />
            <br />
            ImageURL:
            <asp:Label ID="ImageURLLabel" runat="server" Text='<%# Eval("ImageURL") %>' />
            <br />
            prodDetails:
            <asp:Label ID="prodDetailsLabel" runat="server" 
                Text='<%# Eval("prodDetails") %>' />
            <br />
            prodPrice:
            <asp:Label ID="prodPriceLabel" runat="server" Text='<%# Eval("prodPrice") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <hr />
    <br />
    <asp:DataList ID="DataList4" runat="server" DataKeyField="prodID" 
        DataSourceID="ObjectDataSource4" RepeatColumns="5" RepeatDirection="Horizontal">
        <ItemTemplate>
            prodID:
            <asp:Label ID="prodIDLabel" runat="server" Text='<%# Eval("prodID") %>' />
            <br />
            CatID:
            <asp:Label ID="CatIDLabel" runat="server" Text='<%# Eval("CatID") %>' />
            <br />
            prodName:
            <asp:Label ID="prodNameLabel" runat="server" Text='<%# Eval("prodName") %>' />
            <br />
            ImageURL:
            <asp:Label ID="ImageURLLabel" runat="server" Text='<%# Eval("ImageURL") %>' />
            <br />
            prodDetails:
            <asp:Label ID="prodDetailsLabel" runat="server" 
                Text='<%# Eval("prodDetails") %>' />
            <br />
            prodPrice:
            <asp:Label ID="prodPriceLabel" runat="server" Text='<%# Eval("prodPrice") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
    <div id ="carttop">
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
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="orderline" DataKeyNames="olID" Font-Size="Medium" 
        CellPadding="1" CssClass="scart" BorderStyle="Solid" 
            onrowdeleted="cartDelete_Click" onrowupdated="cartUpdate_Click" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" 
            ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="prodName" HeaderText="Name" 
                SortExpression="prodName" ReadOnly="True" />
            <asp:BoundField DataField="quantity" HeaderText="Qty" 
                SortExpression="quantity" />
            <asp:BoundField DataField="prodPrice"
                HeaderText="Price" ReadOnly="True" SortExpression="prodPrice"
                DataFormatString="{0:C}" />
            <asp:TemplateField HeaderText="Total" SortExpression="totalprice">
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
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
   <div id="checkoutbtm">
        <asp:Panel ID="checkoutpanel" runat="server" Visible="false" 
            CssClass="checkoutpanel">
    <span id ="totalprice">Sub-Total price: </span><asp:Label ID="totalPrice" 
                runat="server" Font-Bold="True" Font-Italic="True" 
                Font-Overline="False" Font-Size="Large" Font-Underline="True" 
                ForeColor="Red"></asp:Label>
            &nbsp;<br />
    <asp:ImageButton ID="checkoutBtn" runat="server" 
        ImageUrl="~/Images/Buttons/checkout.png" onclick="checkoutBtn_Click" />
                <br />
            <asp:ImageButton ID="buypackageBtn" runat="server" 
                ImageUrl="~/Images/Buttons/buypackage.png" onclick="buypackageBtn_Click" 
                CssClass="Retrieve" />
            <br />
                </asp:Panel>
                </div>
                    </div>
                    </ContentTemplate>
                        </asp:UpdatePanel>
</asp:Content>