<%@ Page Title="" Language="C#" MasterPageFile="~/Master/adminUser.master" AutoEventWireup="true" CodeFile="Pud.aspx.cs" Inherits="Master_PUD" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <div class="contenthost">
    <asp:ObjectDataSource ID="ActivitySource" runat="server" 
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
    <asp:ObjectDataSource ID="ServiceData" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="retrieveServices" 
        TypeName="createpackage" InsertMethod="InsertActivityPackage" 
            DeleteMethod="DeleteService" UpdateMethod="UpdateService">
        <DeleteParameters>
            <asp:Parameter Name="Original_servID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="actID" Type="Int32" />
            <asp:Parameter Name="packID" Type="Int32" />
            <asp:Parameter Name="servCat" Type="String" />
            <asp:Parameter Name="apTImestamp" Type="String" />
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
        <br />
        * If downsell is not specified, it will have the same value as upsell. 
        <br /><asp:Panel ID="warningPanel" runat="server" Enabled="False" ForeColor="Red" 
            Visible="False">
            <asp:Label ID="error1" runat="server" ForeColor="Red" 
                Text="* Please ensure that there is no duplication when picking the activities or services"></asp:Label>
            <br />
            <asp:Label ID="error2" runat="server" 
                Text="* Please ensure that you have selected the correct amount"></asp:Label>
            <br /> </asp:Panel>
        <br />
    <div id="createpac">
<h3 style="width: 250px">Create a Package</h3>
<ul class="package">
<li class="name">Name:<asp:TextBox ID="packName" runat="server"></asp:TextBox></li>
<li class="verify">
    <asp:Label ID="nameVerify" runat="server" Enabled="False" ForeColor="Red" 
        Text="*Required" Visible="False"></asp:Label>
    </li>
<li class="price">Price / Person:<asp:TextBox ID="packPrice" runat="server"></asp:TextBox></li>
<li class="verify" >
    <asp:Label ID="priceVerify" runat="server" Enabled="False" ForeColor="Red" 
        Text="*Required" Visible="False"></asp:Label>
    </li>
<li class="detail">Details:<asp:TextBox ID="packDetail" runat="server"></asp:TextBox></li>
<li class="verify">
    <asp:Label ID="detailsVerify" runat="server" Enabled="False" ForeColor="Red" 
        Text="*Required" Visible="False"></asp:Label>
    </li>
<li class="date">StartDate:<asp:TextBox ID="packStartDate" runat="server" input 
        type="text" CssClass="dateSpicker"></asp:TextBox></li>
<li class="verify">    
    <asp:Label ID="startDateVerify" runat="server" Enabled="False" ForeColor="Red" 
        Text="*Required" Visible="False"></asp:Label>
    </li>
    <li class="date">EndDate:<asp:TextBox ID="packEndDate" runat="server" 
            CssClass="dateEpicker"></asp:TextBox>
    <li class="verify">    
    <asp:Label ID="enddateVerify" runat="server" Enabled="False" ForeColor="Red" 
        Text="*Required" Visible="False"></asp:Label>
    </li>
<li class="services">Select 2 services for this package:</li>
    <li><asp:CheckBoxList ID="packageServiceList" runat="server" 
        DataSourceID="ServiceData" DataTextField="servName"
        DataValueField="servID">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:CheckBoxList>
    </li>
<li class="activities">Select 5 activities for this package:</li>
<li><ul class="packageclass">
<li><asp:CheckBoxList ID="packageActivitiesList" runat="server" 
        DataSourceID="ActivitySource" DataTextField="activityName" 
        DataValueField="activityID"></asp:CheckBoxList></li></ul></li>
        </div>
<div id="createupsell">
<h3>Create Upsell</h3>
<ul class="package">
<li class="price">Price / Person:<asp:TextBox ID="upsellPrice" runat="server"></asp:TextBox></li>
<li class="verify">
    <asp:Label ID="priceVerify2" runat="server" Enabled="False" ForeColor="Red" 
        Text="*Required" Visible="False"></asp:Label>
    </li>
<li class="detail">Details:<asp:TextBox ID="upsellDetail" runat="server"></asp:TextBox></li>
<li class="verify">
    <asp:Label ID="detailsVerify2" runat="server" Enabled="False" ForeColor="Red" 
        Text="*Required" Visible="False"></asp:Label>
    </li>
<li class="services2">Select 2 services for this package:</li>
<li><ul class="packageclass"><li>
    <asp:CheckBoxList ID="upsellServicesList" 
        runat="server" 
        DataSourceID="ServiceData" DataTextField="servName" 
        DataValueField="servID" ViewStateMode="Disabled" 
        onselectedindexchanged="downsellService">
    </asp:CheckBoxList></li></ul></li>
<li class="activities">Select 5 activities for this package:</li>
<li></li><ul class="packageclass"><li>
    <asp:CheckBoxList ID="upsellActivitiesList" 
        runat="server" 
        DataSourceID="ActivitySource" DataTextField="activityName" 
        DataValueField="activityID" onselectedindexchanged="downsellActivity"></asp:CheckBoxList></li></ul></li>
</ul>
</div>
<div id="createdownsell">
<h3>Create Downsell</h3>
<ul class="package">

<li class="price">Price / Person:<asp:TextBox ID="downsellPrice" runat="server"></asp:TextBox></li>
<li class="verify">
    <asp:Label ID="priceVerify3" runat="server" Enabled="False" ForeColor="Red" 
        Text="*Required" Visible="False"></asp:Label>
    </li>
<li class="detail">Details:<asp:TextBox ID="downsellDetail" runat="server"></asp:TextBox></li>
<li class="verify">
    <asp:Label ID="detailsVerify3" runat="server" Enabled="False" ForeColor="Red" 
        Text="*Required" Visible="False"></asp:Label>
    </li>
<li class="services2">Select 2 services for this package:</li>
<li><ul class="packageclass"><li>
    <asp:CheckBoxList ID="downsellServiceList" runat="server" 
        DataSourceID="ServiceData" DataTextField="servName" 
        DataValueField="servID" ViewStateMode="Disabled">
    </asp:CheckBoxList></li></ul></li>
<li class="activities">Select 5 activities for this package:</li>
<li></li><ul class="packageclass"><li>
    <asp:CheckBoxList ID="downsellActivitiesList" runat="server" 
        DataSourceID="ActivitySource" DataTextField="activityName" 
        DataValueField="activityID"></asp:CheckBoxList></li></ul></li>
</ul>
</div>
<hr align="left" style="width: 940px" />
    <div id="packagebottom">
    &nbsp;<asp:TextBox ID="previewBox" runat="server" Height="130px" 
            TextMode="MultiLine" Width="450px" Visible="False"></asp:TextBox>
<br />
<p />
    <asp:Button ID="previewButton" runat="server" onclick="preview_click" 
        Text="Preview" />
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="submitButton" CommandName="Insert" OnClientClick="return confirm('Are you sure you want to create?');"/>
    <asp:Button ID="Button2"
        runat="server" Text="Reset" onclick="resetButton" />
        </div>
</div>
</ContentTemplate></asp:UpdatePanel>
</asp:Content>

