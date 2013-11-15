<%@ Page Title="" Language="C#" MasterPageFile="~/Master/adminUser.master" AutoEventWireup="true" CodeFile="UDPUD.aspx.cs" Inherits="Master_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <div class="contenthost">
        <asp:ObjectDataSource ID="ServiceDS" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="retrieveServices" 
            TypeName="createpackage" DataObjectTypeName="System.Collections.ArrayList" 
            DeleteMethod="DeleteService" InsertMethod="retrieveServiceSData" 
            UpdateMethod="UpdateService">
            <DeleteParameters>
                <asp:Parameter Name="Original_servID" Type="Int32" />
            </DeleteParameters>
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
        <asp:ObjectDataSource ID="ActivityDS" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="retrieveActivity" 
            TypeName="createpackage" DataObjectTypeName="System.Collections.ArrayList" 
            DeleteMethod="DeleteService" InsertMethod="retrieveServiceSData" 
            UpdateMethod="UpdateService">
            <DeleteParameters>
                <asp:Parameter Name="Original_servID" Type="Int32" />
            </DeleteParameters>
            <SelectParameters>
                <asp:Parameter Name="activityVis" Type="Boolean" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="servName" Type="String" />
                <asp:Parameter Name="servDetails" Type="String" />
                <asp:Parameter Name="servPrice" Type="String" />
                <asp:Parameter Name="sTimestamp" Type="String" />
                <asp:Parameter Name="Original_servID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="PackageDS" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="retrievePackage" 
            TypeName="createpackage"></asp:ObjectDataSource>
        To update or delete package, select a package:<asp:DropDownList ID="packageNameList"
            runat="server" DataSourceID="PackageDS" DataTextField="packName" 
            DataValueField="packID">
        </asp:DropDownList>
        <asp:Button ID="retrieveBut" runat="server" Text="Retrieve" 
            onclick="retrieveDB" />
        <br />
        <p />
            <asp:Label ID="AlertMessage" runat="server" Enabled="False" ForeColor="#006600" 
                Text="AlertMessage" Visible="False"></asp:Label>
            <div id="createpac">
<h3 style="width: 250px">Update a package</h3>
<ul class="package">
<li class="name">Name:<asp:TextBox ID="packName" runat="server"></asp:TextBox></li>
<li class="verify">
    <asp:Label runat="server" ForeColor="Red" Text="*Required" ID="nameVerify" 
        Enabled="False" Visible="False"></asp:Label>
    </li>
<li class="price">Price / Person:<asp:TextBox ID="packPrice" runat="server"></asp:TextBox></li>
<li class="verify">
    <asp:Label ID="priceVerify" runat="server" ForeColor="Red" Text="*Required" 
        Enabled="False" Visible="False"></asp:Label>
    </li>
<li class="detail">Details:<asp:TextBox ID="packDetail" runat="server"></asp:TextBox></li>
<li class="verify">
    <asp:Label ID="detailsVerify" runat="server" ForeColor="Red" Text="*Required" 
        Enabled="False" Visible="False"></asp:Label>
    </li>
<li class="date">StartDate:<asp:TextBox ID="startDate" runat="server" input 
        type="text" CssClass="datepicker"></asp:TextBox></li>
<li class="verify">    
    <asp:Label ID="dateVerify" runat="server" ForeColor="Red" Text="*Required" 
        Enabled="False" Visible="False"></asp:Label>
    </li><li class="date">EndDate:<asp:TextBox ID="endDate" runat="server"></asp:TextBox></li>
    <li class="verify">
        <asp:Label ID="endDateVerify" runat="server" ForeColor="Red" Text="*Required" 
        Enabled="False" Visible="False"></asp:Label></li>
<li class="services">Select 2 services for this package:</li>
    <li><asp:CheckBoxList ID="UpackageServiceList" runat="server" 
            DataSourceID="ServiceDS" DataTextField="servName" 
            DataValueField="servID" ViewStateMode="Disabled">
    </asp:CheckBoxList></li>
<li class="activities">Select 5 activities for this package:</li>
<li><ul class="packageclass">
<li><asp:CheckBoxList ID="packageActivitiesList" runat="server" 
        DataSourceID="ActivityDS" DataTextField="activityName" 
        DataValueField="activityID"></asp:CheckBoxList></li></ul></li>
        </div>
<div id="createupsell">
<h3>Update an Upsell</h3>
<ul class="package">
<li class="price">Price / Person:<asp:TextBox ID="upsellPrice" runat="server"></asp:TextBox></li>
<li class="verify">
    <asp:Label ID="priceVerify2" runat="server" ForeColor="Red" Text="*Required" 
        Enabled="False" Visible="False"></asp:Label>
    </li>
<li class="detail">Details:<asp:TextBox ID="upsellDetail" runat="server"></asp:TextBox></li>
<li class="verify">
    <asp:Label ID="detailsVerify2" runat="server" ForeColor="Red" Text="*Required" 
        Enabled="False" Visible="False"></asp:Label>
    </li>
<li class="services2">Select 2 services for this package:</li>
<li><ul class="packageclass"><li>
    <asp:CheckBoxList ID="UupsellServicesList" 
        runat="server" DataSourceID="ServiceDS" DataTextField="servName" 
        DataValueField="servID" onselectedindexchanged="downsellService">
    </asp:CheckBoxList></li></ul></li>
<li class="activities">Select 5 activities for this package:</li>
<li></li><ul class="packageclass"><li>
    <asp:CheckBoxList ID="upsellActivitiesList" 
        runat="server" DataSourceID="ActivityDS" 
        DataTextField="activityName" DataValueField="activityID" 
        onselectedindexchanged="upsellactivities"></asp:CheckBoxList></li></ul></li>
</ul>
</div>
<div id="createdownsell">
<h3>Update Downsell</h3>
<ul class="package">

<li class="price">Price / Person:<asp:TextBox ID="downsellPrice" runat="server"></asp:TextBox></li>
<li class="verify">
    <asp:Label ID="priceVerify3" runat="server" ForeColor="Red" Text="*Required" 
        Enabled="False" Visible="False"></asp:Label>
    </li>
<li class="detail">Details:<asp:TextBox ID="downsellDetail" runat="server"></asp:TextBox></li>
<li class="verify">
    <asp:Label ID="detailsVerify3" runat="server" ForeColor="Red" Text="*Required" 
        Enabled="False" Visible="False"></asp:Label>
    </li>
<li class="services2">Select 2 services for this package:</li>
<li><ul class="packageclass"><li>
    <asp:CheckBoxList ID="UdownsellServiceList" runat="server" 
        DataSourceID="ServiceDS" DataTextField="servName" 
        DataValueField="servID">
    </asp:CheckBoxList></li></ul></li>
<li class="activities">Select 5 activities for this package:</li>
<li></li><ul class="packageclass"><li>
    <asp:CheckBoxList ID="downsellActivitiesList" runat="server" 
        DataSourceID="ActivityDS" DataTextField="activityName" 
        DataValueField="activityID"></asp:CheckBoxList></li></ul>
</ul>
</div>
<div id="lastpart">
        <asp:TextBox ID="previewBox" runat="server" Height="180px" TextMode="MultiLine" 
            Visible="False" Width="450px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="previewBtn" runat="server" onclick="previewClick" 
            Text="Preview" />
        <asp:Button ID="deleteBtn"
            runat="server" Text="Delete" onclick="deleteButton"  CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete?');"/>
        <asp:Button ID="updateBtn" runat="server" Text="Update" 
            onclick="updateButton"  CommandName="Update" OnClientClick="return confirm('Are you sure you want to update?');" />
        <br />
        </div>
    </div>
    </ContentTemplate></asp:UpdatePanel>
</asp:Content>

