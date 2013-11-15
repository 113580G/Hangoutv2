<%@ Page Title="" Language="C#" MasterPageFile="Master/adminUser.master" AutoEventWireup="true" CodeFile="AdminJA.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    DeleteMethod="Delete" InsertMethod="Insert" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetJobApplication" 
    TypeName="DataSet1TableAdapters.JobApplicationTableAdapter" 
    UpdateMethod="Update">
    <DeleteParameters>
        <asp:Parameter Name="Original_jobID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="jobID" Type="Int32" />
        <asp:Parameter Name="fName" Type="String" />
        <asp:Parameter Name="lName" Type="String" />
        <asp:Parameter Name="emailAdd" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="postalCode" Type="String" />
        <asp:Parameter Name="blkNo" Type="String" />
        <asp:Parameter Name="unitNo" Type="String" />
        <asp:Parameter Name="contactNo" Type="String" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="jobResume" Type="String" />
        <asp:Parameter Name="jobCoverletter" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="fName" Type="String" />
        <asp:Parameter Name="lName" Type="String" />
        <asp:Parameter Name="emailAdd" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="postalCode" Type="String" />
        <asp:Parameter Name="blkNo" Type="String" />
        <asp:Parameter Name="unitNo" Type="String" />
        <asp:Parameter Name="contactNo" Type="String" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="jobResume" Type="String" />
        <asp:Parameter Name="jobCoverletter" Type="String" />
        <asp:Parameter Name="Original_jobID" Type="Int32" />
    </UpdateParameters>
</asp:ObjectDataSource>
<br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
    DataKeyNames="jobID" DataSourceID="ObjectDataSource1" ForeColor="#333333" 
    GridLines="None" Height="127px" Width="648px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
            ShowSelectButton="True" />
        <asp:BoundField DataField="jobID" HeaderText="ID" ReadOnly="True" 
            SortExpression="jobID" />
        <asp:BoundField DataField="fName" HeaderText="fName" SortExpression="fName" />
        <asp:BoundField DataField="lName" HeaderText="lName" SortExpression="lName" />
        <asp:BoundField DataField="emailAdd" HeaderText="Email" 
            SortExpression="emailAdd" />
        <asp:BoundField DataField="address" HeaderText="Add" SortExpression="address" />
        <asp:BoundField DataField="postalCode" HeaderText="Code" 
            SortExpression="postalCode" />
        <asp:BoundField DataField="blkNo" HeaderText="Blk" SortExpression="blkNo" />
        <asp:BoundField DataField="unitNo" HeaderText="Unit" SortExpression="unitNo" />
        <asp:BoundField DataField="contactNo" HeaderText="Phone" 
            SortExpression="contactNo" />
        <asp:BoundField DataField="gender" HeaderText="Sex" SortExpression="gender" />
        <asp:BoundField DataField="jobResume" HeaderText="Resume" 
            SortExpression="jobResume" />
        <asp:BoundField DataField="jobCoverletter" HeaderText="CV" 
            SortExpression="jobCoverletter" />
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

