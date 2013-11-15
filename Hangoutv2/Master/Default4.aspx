<%@ Page Title="" Language="C#" MasterPageFile="~/Master/package1100.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Master_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        RepeatDirection="Horizontal" Width="800px">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("prodName") %>'></asp:Label>
            <br />
            <asp:Image ID="Image1" runat="server" 
                ImageUrl='<%# Eval("imageURL", "../Prod_Images/{0}") %>' />
            <br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("prodPrice") %>'></asp:Label>
            <br />
            <asp:Button ID="addToCart" runat="server" onclick="addToCartBtn" 
                Text="Add To Cart" />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

