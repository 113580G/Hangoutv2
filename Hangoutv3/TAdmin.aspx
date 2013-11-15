<%@ Page Title="" Language="C#" MasterPageFile="Master/adminUser.master" AutoEventWireup="true" CodeFile="TAdmin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            DeleteMethod="Deletetestismonial" InsertMethod="InsertTestimonial" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetTadminData" 
            TypeName="Testismonial" UpdateMethod="UpdateTestismonial">
            <DeleteParameters>
                <asp:Parameter Name="Original_testID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="testDesc" Type="String" />
                <asp:Parameter Name="tTimestamp" Type="String" />
                <asp:Parameter Name="custSerial" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="testDesc" Type="String" />
                <asp:Parameter Name="tTimestamp" Type="String" />
                <asp:Parameter Name="tDecision" Type="Boolean" />
                <asp:Parameter Name="custSerial" Type="Int32" />
                <asp:Parameter Name="staffID" Type="Int32" />
                <asp:Parameter Name="Original_testID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <center>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="testID" DataSourceID="ObjectDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="testID" HeaderText="testID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="testID" />
                <asp:BoundField DataField="testDesc" HeaderText="testDesc" 
                    SortExpression="testDesc" />
                <asp:BoundField DataField="tTimestamp" HeaderText="tTimestamp" 
                    SortExpression="tTimestamp" />
                <asp:CheckBoxField DataField="tDecision" HeaderText="tDecision" 
                    SortExpression="tDecision" />
                <asp:BoundField DataField="custSerial" HeaderText="custSerial" 
                    SortExpression="custSerial" />
                <asp:TemplateField HeaderText="staffID" SortExpression="staffID">
                    <EditItemTemplate>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" 
                            ErrorMessage="Please enter your staff ID. Thank You!!!" 
                             style="color: #FF0000"></asp:CustomValidator>
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("staffID") %>'></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" 
                            ErrorMessage="Please enter a staff ID. Thank you!!!" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("staffID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
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
        </center>
        <br />
</asp:Content>

