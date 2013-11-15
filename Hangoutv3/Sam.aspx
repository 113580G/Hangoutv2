<%@ Page Title="" Language="C#" MasterPageFile="~/Master/adminUser.master" AutoEventWireup="true" CodeFile="Sam.aspx.cs" Inherits="Master_SAM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="contenthost">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
<div id="servicemanager">
    <h3>Service Manager</h3>
    <ul class="udmadmin">
    <li>Add Service:<asp:TextBox ID="serviceName" runat="server"></asp:TextBox></li>
        <li>Service Details:<asp:TextBox ID="serviceDetail" runat="server"></asp:TextBox>
        </li>
        <li>Price / Person:<asp:TextBox ID="servicePrice" runat="server"></asp:TextBox>
        </li>
</ul>
        <div class="contenthostbottom" align="right">
        <asp:Button ID="serviceButton" runat="server" Text="Submit" 
                onclick="serviceSubmit" />
        <asp:Button ID="servReset" runat="server" Text="Reset" onclick="serviceReset" 
                style="height: 26px" />
    </div>
    </div>
        <div id="activitiesmanager">
        <h3>Activities Manager</h3>
        <ul class="udmadmin">
        <li>Add Activities:<asp:TextBox ID="activitiesName" runat="server"></asp:TextBox></li>
            <li>Activity Details:<asp:TextBox ID="activitiesDetails" runat="server"></asp:TextBox>
            </li>
            <li>Price / Person:<asp:TextBox ID="activitiesPrice" runat="server"></asp:TextBox>
            </li>
        </ul>
        <div class="contenthostbottom" align="right">
            <asp:Button ID="activitySubmit" runat="server" Text="Submit" 
                onclick="activitySubmit_Click" style="height: 26px" />
            <asp:Button ID="activityReset" runat="server" Text="Reset" 
                onclick="activityReset_Click" />
        </div>
        </div>
        <br />
        <div id="udmservice">
        <hr />
        <div id="servicemanagement">
            <asp:ObjectDataSource ID="ServiceDS" runat="server" 
                DeleteMethod="DeleteService" InsertMethod="InsertService" 
                OldValuesParameterFormatString="original_{0}" SelectMethod="retrieveServices" 
                TypeName="createpackage" UpdateMethod="UpdateService">
                <DeleteParameters>
                    <asp:Parameter Name="Original_servID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="servName" Type="String" />
                    <asp:Parameter Name="servDetails" Type="String" />
                    <asp:Parameter Name="servPrice" Type="String" />
                    <asp:Parameter Name="sTimestamp" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter Name="servVis" Type="Boolean" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="servName" Type="String" />
                    <asp:Parameter Name="servDetails" Type="String" />
                    <asp:Parameter Name="servPrice" Type="String" />
                    <asp:Parameter Name="sTimestamp" Type="String" />
                    <asp:Parameter Name="Original_servID" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:GridView ID="serviceView" runat="server" AutoGenerateColumns="False" CellPadding="4" 
                DataKeyNames="servID" DataSourceID="ServiceDS" ForeColor="#333333" 
                Width="650px" BackColor="White" CellSpacing="1" HorizontalAlign="Center" 
                AllowPaging="True" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="servName" HeaderText="Service Name" 
                        SortExpression="servName" />
                    <asp:BoundField DataField="servDetails" HeaderText="Service Detail" 
                        SortExpression="servDetails" />
                    <asp:BoundField DataField="servPrice" HeaderText="Price Per Person" 
                        SortExpression="servPrice" />
                    <asp:BoundField DataField="sTimestamp" HeaderText="Time Added" 
                        SortExpression="sTimestamp" />
                    <asp:CommandField ButtonType="Image" EditImageUrl="~/Images/Buttons/edit.png" 
                        ShowEditButton="True" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Buttons/Delete.png" CommandName="Update" OnClientClick="return confirm('Are you sure you want to delete?');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" BorderStyle="None" ForeColor="#FFFFCC" 
                    HorizontalAlign="Center" VerticalAlign="Middle" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#336600" Font-Bold="True" ForeColor="White" 
                    HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#4FAA22" BorderStyle="None" ForeColor="Black" 
                    HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
        <hr />
    <div id="activitymanagement">
        <asp:ObjectDataSource ID="ActivityDS" runat="server" 
            DeleteMethod="DeleteActivity" InsertMethod="InsertActivity" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="retrieveActivity" 
            TypeName="createpackage" UpdateMethod="UpdateActivity2">
            <DeleteParameters>
                <asp:Parameter Name="Original_activityID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="activityName" Type="String" />
                <asp:Parameter Name="activityDetails" Type="String" />
                <asp:Parameter Name="activityPrice" Type="String" />
                <asp:Parameter Name="aTimestamp" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="activityVis" Type="Boolean" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="activityName" Type="String" />
                <asp:Parameter Name="activityDetails" Type="String" />
                <asp:Parameter Name="activityPrice" Type="String" />
                <asp:Parameter Name="aTimestamp" Type="String" />
                <asp:Parameter Name="Original_activityID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:GridView ID="activityView" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="activityID" DataSourceID="ActivityDS" Width="650px" 
            CellSpacing="1" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="activityName" HeaderText="Activity Name" 
                    SortExpression="activityName" />
                <asp:BoundField DataField="activityDetails" HeaderText="Activity Details" 
                    SortExpression="activityDetails" />
                <asp:BoundField DataField="activityPrice" HeaderText="Price Per Person" 
                    SortExpression="activityPrice" />
                <asp:BoundField DataField="aTimestamp" HeaderText="Time Added" 
                    SortExpression="aTimestamp" />
                <asp:CommandField ButtonType="Image" EditImageUrl="~/Images/Buttons/edit.png" 
                    ShowEditButton="True" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ID="deleteButton2" runat="server" 
                            ImageUrl="~/Images/Buttons/Delete.png" CommandName="Update" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete?');" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#336600" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#4FAA22" Font-Bold="False" ForeColor="Black" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        </div>
    </div>
    </div>
</div>
</ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

