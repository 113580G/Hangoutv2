<%@ Page Title="" Language="C#" MasterPageFile="~/Master/adminUser.master" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Master_Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetPackage" 
        TypeName="pudTableAdapters.PackageTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_packID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="packPrice" Type="String" />
            <asp:Parameter Name="packDetails" Type="String" />
            <asp:Parameter Name="packName" Type="String" />
            <asp:Parameter Name="packDate" Type="String" />
            <asp:Parameter Name="pTimestamp" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="packPrice" Type="String" />
            <asp:Parameter Name="packDetails" Type="String" />
            <asp:Parameter Name="packName" Type="String" />
            <asp:Parameter Name="packDate" Type="String" />
            <asp:Parameter Name="pTimestamp" Type="String" />
            <asp:Parameter Name="Original_packID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    To update package: <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="ObjectDataSource1" DataTextField="packName" 
        DataValueField="packID"></asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <br />
    To delete package: <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="ObjectDataSource1" DataTextField="packName" 
        DataValueField="packID"></asp:DropDownList>
    <asp:Button ID="Button2" runat="server" Text="Button" />
    &nbsp;
</asp:Content>

