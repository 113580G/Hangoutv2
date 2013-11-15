<%@ Page Title="" Language="C#" MasterPageFile="Master/adminUser.master" AutoEventWireup="true" CodeFile="AdminST.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" 
    SelectMethod="GetSupportTix" 
    TypeName="DataSet1TableAdapters.SupportTicketTableAdapter" 
    UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_stID" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter Name="Original_stID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="stPriority" Type="String" />
            <asp:Parameter Name="stContent" Type="String" />
            <asp:Parameter Name="stTimestamp" Type="String" />
            <asp:Parameter Name="custSerial" Type="Int32" />
            <asp:Parameter Name="staffID" Type="Int32" />
            <asp:Parameter Name="Original_stID" Type="Int32" />
        </UpdateParameters>
</asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="stID" 
    DataSourceID="ObjectDataSource1" Width="390px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="stID" HeaderText="stID" InsertVisible="False" 
                ReadOnly="True" SortExpression="stID" />
            <asp:BoundField DataField="stPriority" HeaderText="stPriority" 
                SortExpression="stPriority" />
            <asp:BoundField DataField="stContent" HeaderText="stContent" 
                SortExpression="stContent" />
            <asp:BoundField DataField="stTimestamp" HeaderText="stTimestamp" 
                SortExpression="stTimestamp" />
        </Columns>
</asp:GridView>
<br />

</asp:Content>

