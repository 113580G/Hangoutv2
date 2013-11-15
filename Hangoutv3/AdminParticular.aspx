<%@ Page Title="" Language="C#" MasterPageFile="Master/adminUser.master" AutoEventWireup="true" CodeFile="AdminParticular.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetAdminReg" 
        TypeName="AdministratorRegisTableAdapters.AdministratorRegisTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_staffID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="aFname" Type="String" />
            <asp:Parameter Name="aLname" Type="String" />
            <asp:Parameter Name="aEmail" Type="String" />
            <asp:Parameter Name="aPhone" Type="String" />
            <asp:Parameter Name="aUsername" Type="String" />
            <asp:Parameter Name="aPassword" Type="String" />
            <asp:Parameter Name="aRoles" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="aFname" Type="String" />
            <asp:Parameter Name="aLname" Type="String" />
            <asp:Parameter Name="aEmail" Type="String" />
            <asp:Parameter Name="aPhone" Type="String" />
            <asp:Parameter Name="aUsername" Type="String" />
            <asp:Parameter Name="aPassword" Type="String" />
            <asp:Parameter Name="aRoles" Type="String" />
            <asp:Parameter Name="Original_staffID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [AdministratorRegis] WHERE ([aUsername] = @aUsername)">
        <SelectParameters>
            <asp:SessionParameter Name="aUsername" SessionField="UserName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <center style="height: 797px; width: 1028px">
        <br />
       <asp:Label ID="Label2" runat="server" Font-Underline="True" ForeColor="#0000CC" 
            Text="Your Profile"></asp:Label>
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="Yellow" 
            BorderColor="#66FF66" BorderStyle="Dotted" DataKeyField="staffID" 
            DataSourceID="SqlDataSource1" ForeColor="#009933" RepeatDirection="Horizontal" 
            style="margin-top: 0px">
            <ItemTemplate>
                <br />
                <br /> Full Name:<br />
                <asp:Label ID="aFnameLabel" runat="server" Text='<%# Eval("aFname") %>' />
                <asp:Label ID="aLnameLabel" runat="server" Text='<%# Eval("aLname") %>' />
                <br />
                <br /> Office Email:
                <asp:Label ID="aEmailLabel" runat="server" Text='<%# Eval("aEmail") %>' />
                <br />
                Office Phone:
                <asp:Label ID="aPhoneLabel" runat="server" Text='<%# Eval("aPhone") %>' />
                <br />
                <br />staffID:<asp:Label ID="staffIDLabel" runat="server" Text='<%# Eval("staffID") %>' />
                <br />
                <br />
                Username:
                <asp:Label ID="aUsernameLabel" runat="server" Text='<%# Eval("aUsername") %>' />
                <br />
                Password:
                <asp:Label ID="aPasswordLabel" runat="server" Text='<%# Eval("aPassword") %>' />
                <br />
                Admin Role:
                <asp:Label ID="aRolesLabel" runat="server" Text='<%# Eval("aRoles") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <br />
        <br />
        <br />
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="staffID" 
        DataSourceID="ObjectDataSource1" style="margin-left: 0px; margin-top: 0px" 
            ForeColor="#333333" Height="326px" Width="820px" CellPadding="4" 
            GridLines="None">
        <AlternatingRowStyle BackColor="White" BorderColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ButtonType="Image" DeleteImageUrl="~/Images/Buttons/Delete.png" 
                EditImageUrl="~/Images/Buttons/edit.png" 
                UpdateImageUrl="~/Images/Buttons/edit.png" />
            <asp:BoundField DataField="staffID" HeaderText="staffID" InsertVisible="False" 
                ReadOnly="True" SortExpression="staffID" />
            <asp:BoundField DataField="aFname" HeaderText="First Name" 
                SortExpression="aFname" />
            <asp:BoundField DataField="aLname" HeaderText="Last Name" 
                SortExpression="aLname" />
            <asp:BoundField DataField="aEmail" HeaderText="Email" 
                SortExpression="aEmail" />
            <asp:BoundField DataField="aPhone" HeaderText="Phone" 
                SortExpression="aPhone" />
            <asp:BoundField DataField="aUsername" HeaderText="Username" 
                SortExpression="aUsername" />
            <asp:BoundField DataField="aPassword" HeaderText="Password" 
                SortExpression="aPassword" />
            <asp:BoundField DataField="aRoles" HeaderText="Roles" 
                SortExpression="aRoles" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle ForeColor="White" BackColor="#1C5E55" Font-Bold="True" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    </center>
</asp:Content>

