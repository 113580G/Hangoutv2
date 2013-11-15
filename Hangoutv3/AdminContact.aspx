<%@ Page Title="" Language="C#" MasterPageFile="Master/adminUser.master" AutoEventWireup="true" CodeFile="AdminContact.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    DeleteMethod="Delete" InsertMethod="Insert" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetInsert" 
    TypeName="registrationTableAdapters.Customer_RegistrationTableAdapter" 
    UpdateMethod="Update">
    <DeleteParameters>
        <asp:Parameter Name="Original_custSerial" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="lsID" Type="Int32" />
        <asp:Parameter Name="regID" Type="Int32" />
        <asp:Parameter Name="fName" Type="String" />
        <asp:Parameter Name="lName" Type="String" />
        <asp:Parameter Name="emailAdd" Type="String" />
        <asp:Parameter Name="dob" Type="String" />
        <asp:Parameter Name="postCode" Type="String" />
        <asp:Parameter Name="contactNo" Type="String" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="cityState" Type="String" />
        <asp:Parameter Name="passwprd" Type="String" />
        <asp:Parameter Name="secretQns" Type="String" />
        <asp:Parameter Name="secretAns" Type="String" />
        <asp:Parameter Name="rePassword" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="lsID" Type="Int32" />
        <asp:Parameter Name="regID" Type="Int32" />
        <asp:Parameter Name="fName" Type="String" />
        <asp:Parameter Name="lName" Type="String" />
        <asp:Parameter Name="emailAdd" Type="String" />
        <asp:Parameter Name="dob" Type="String" />
        <asp:Parameter Name="postCode" Type="String" />
        <asp:Parameter Name="contactNo" Type="String" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="cityState" Type="String" />
        <asp:Parameter Name="passwprd" Type="String" />
        <asp:Parameter Name="secretQns" Type="String" />
        <asp:Parameter Name="secretAns" Type="String" />
        <asp:Parameter Name="rePassword" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Original_custSerial" Type="Int32" />
    </UpdateParameters>
</asp:ObjectDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="custSerial" DataSourceID="ObjectDataSource1" CellPadding="4" 
        ForeColor="#333333" GridLines="None" Height="114px" style="margin-top: 63px" 
        Width="865px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="custSerial" HeaderText="custSerial" ReadOnly="True" 
            SortExpression="custSerial" />
        <asp:BoundField DataField="fName" HeaderText="fName" SortExpression="fName" />
        <asp:BoundField DataField="lName" HeaderText="lName" SortExpression="lName" />
        <asp:BoundField DataField="emailAdd" HeaderText="Email" 
            SortExpression="emailAdd" />
        <asp:BoundField DataField="dob" HeaderText="D.O.B" SortExpression="dob" />
        <asp:BoundField DataField="postCode" HeaderText="Postal" 
            SortExpression="postCode" />
        <asp:BoundField DataField="contactNo" HeaderText="Phone" 
            SortExpression="contactNo" />
        <asp:BoundField DataField="gender" HeaderText="Sex" 
            SortExpression="gender" />
        <asp:BoundField DataField="cityState" HeaderText="City" 
            SortExpression="cityState" />
        <asp:BoundField DataField="passwprd" HeaderText="Password" 
            SortExpression="passwprd" />
        <asp:BoundField DataField="secretQns" HeaderText="secretQns" 
            SortExpression="secretQns" />
        <asp:BoundField DataField="secretAns" HeaderText="secretAns" 
            SortExpression="secretAns" />
        <asp:BoundField DataField="rePassword" HeaderText="rePassword" 
            SortExpression="rePassword" />
        <asp:BoundField DataField="Address" HeaderText="Address" 
            SortExpression="Address" />
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

</asp:Content>

