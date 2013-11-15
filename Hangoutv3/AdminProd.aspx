<%@ Page Title="" Language="C#" MasterPageFile="Master/adminUser.master" AutoEventWireup="true" CodeFile="AdminProd.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            text-decoration: underline;
            color: #0000FF;
        }
        .style3
        {
            width: 501px;
        }
        .style4
        {
            text-align: center;
        }
        .style5
        {
            width: 91px;
            text-align: center;
            height: 37px;
        }
        .style6
        {
            width: 501px;
            height: 37px;
        }
        .style7
        {
            text-align: center;
            width: 91px;
        }
        .style8
        {
            font-size: large;
            color: #0066FF;
        }
        .style9
        {
            color: #0000FF;
            font-size: large;
        }
    </style>
</head>
<body>
   
    <div>
    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            DeleteMethod="Delete" InsertMethod="Insert" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetProduct" 
            TypeName="ProductDBTableAdapters.ProductTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_prodID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CatID" Type="Int32" />
                <asp:Parameter Name="prodName" Type="String" />
                <asp:Parameter Name="ImageURL" Type="String" />
                <asp:Parameter Name="prodDetails" Type="String" />
                <asp:Parameter Name="prodPrice" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CatID" Type="Int32" />
                <asp:Parameter Name="prodName" Type="String" />
                <asp:Parameter Name="ImageURL" Type="String" />
                <asp:Parameter Name="prodDetails" Type="String" />
                <asp:Parameter Name="prodPrice" Type="String" />
                <asp:Parameter Name="Original_prodID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <div class="style4">
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    DeleteMethod="Delete" InsertMethod="Insert" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetCategoryData" 
                    TypeName="ProductDBTableAdapters.CategoryTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_CatID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CatName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CatName" Type="String" />
                        <asp:Parameter Name="Original_CatID" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
        <br />
        <span class="style1"><strong>Admin Product List<br />
            <br />
            </strong></span></div>
    </div>
    <table style="width:100%;">
        <tr>
            <td class="style7">
                <span class="style8"><strong>Insert Into Category Database<br />
                </strong></span><br />
                <asp:Label ID="Label8" runat="server" style="text-align: left" 
                    Text="Category Name:" Width="140px"></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#00CCFF" 
                    BorderColor="#00CCFF" Height="32px" onclick="Button1_Click" Text="Insert" 
                    Width="77px" />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CatID" 
        DataSourceID="ObjectDataSource2" BackColor="White" BorderColor="#E7E7FF" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="CatID" HeaderText="CatID" InsertVisible="False" 
                ReadOnly="True" SortExpression="CatID" />
            <asp:BoundField DataField="CatName" HeaderText="CatName" 
                SortExpression="CatName" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
            </td>
            <td class="style3">
                <span class="style9"><strong>Insert Into Product Database</strong></span><br />
                <asp:Label ID="Label2" runat="server" Text="Category ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="ObjectDataSource2" DataTextField="CatID" DataValueField="CatID" 
                    Height="20px" Width="127px">
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Product Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                <br />
                <asp:Label ID="Label4" runat="server" Text="Image URL:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Product Details:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;<br />
                <asp:Label ID="Label6" runat="server" Text="Product Price:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#3399FF" 
                    BorderColor="#00CCFF" Height="32px" onclick="Button2_Click" Text="Insert" 
                    Width="77px" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="prodID" 
                    DataSourceID="ObjectDataSource1" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" style="text-align: center" 
                    >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="prodID" HeaderText="prodID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="prodID" />
                        <asp:BoundField DataField="CatID" HeaderText="CatID" SortExpression="CatID" />
                        <asp:BoundField DataField="prodName" HeaderText="prodName" 
                            SortExpression="prodName" />
                        <asp:BoundField DataField="ImageURL" HeaderText="ImageURL" 
                            SortExpression="ImageURL" />
                        <asp:BoundField DataField="prodDetails" HeaderText="prodDetails" 
                            SortExpression="prodDetails" />
                        <asp:BoundField DataField="prodPrice" HeaderText="prodPrice" 
                            SortExpression="prodPrice" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
        </table>
  
</body>
</asp:Content>

