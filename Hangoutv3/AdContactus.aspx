<%@ Page Title="" Language="C#" MasterPageFile="Master/adminUser.master" AutoEventWireup="true" CodeFile="AdContactus.aspx.cs" Inherits="Master_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [ContactUs]">
    </asp:SqlDataSource>
    <center>
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="cuId" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" style="margin-top: 27px" overflow= auto; 
            AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="cuId" HeaderText="cuId" 
                ReadOnly="True" SortExpression="cuId" InsertVisible="False" />
            <asp:BoundField DataField="salutation" HeaderText="Salutation" 
                SortExpression="salutation" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="telephone" HeaderText="Phone" 
                SortExpression="telephone" />
            <asp:BoundField DataField="email" HeaderText="Email" 
                SortExpression="email" />
            <asp:BoundField DataField="subject" HeaderText="Subject" 
                SortExpression="subject" />
            <asp:BoundField DataField="queries" HeaderText="Queries" 
                SortExpression="queries" />
            <asp:BoundField DataField="prefCont" HeaderText="prefCont" 
                SortExpression="prefCont" />
            <asp:BoundField DataField="captcha" HeaderText="captcha" 
                SortExpression="captcha" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" 
            HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    </center>
</asp:Content>

