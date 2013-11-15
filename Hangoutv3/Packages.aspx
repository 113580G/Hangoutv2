<%@ Page Title="" Language="C#" MasterPageFile="~/Master/package1100.master" AutoEventWireup="true" CodeFile="Packages.aspx.cs" Inherits="Master_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <div id ="packagecontent">
    <div id="selectdate">
        <asp:ObjectDataSource ID="PackageRetriever" runat="server" 
            DataObjectTypeName="System.Collections.ArrayList" DeleteMethod="DeleteService" 
            InsertMethod="retrieveServiceSData" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="retrievePackage" 
            TypeName="createpackage" UpdateMethod="UpdateService">
            <DeleteParameters>
                <asp:Parameter Name="Original_servID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="servName" Type="String" />
                <asp:Parameter Name="servDetails" Type="String" />
                <asp:Parameter Name="servPrice" Type="String" />
                <asp:Parameter Name="sTimestamp" Type="String" />
                <asp:Parameter Name="Original_servID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:SqlDataSource ID="serviceDS" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT Service.servID, Service.servName, Service.servDetails, Service.servPrice, ServicePackage.packID, ServicePackage.servCat FROM Service INNER JOIN ServicePackage ON Service.servID = ServicePackage.servID WHERE (ServicePackage.servCat = 'Mainservices') AND (ServicePackage.packID = @packageID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="PackageDlist" Name="packageID" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="activityDS" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT Activity.activityID, Activity.activityName, Activity.activityDetails, Activity.activityPrice, ActivityPackage.packID, ActivityPackage.activityCat FROM Activity INNER JOIN ActivityPackage ON Activity.activityID = ActivityPackage.activityID WHERE (ActivityPackage.activityCat = 'MainActivity') AND (ActivityPackage.packID = @packageID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="PackageDlist" Name="packageID" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div id="packageSelect">
    Select camp date:<asp:DropDownList ID="PackageDlist" runat="server" Height="18px" Width="188px" 
            DataSourceID="PackageRetriever" DataTextField="packName" 
                DataValueField="packID" AppendDataBoundItems="True" 
            AutoPostBack="True" onselectedindexchanged="selected" CssClass="packageList">
    <asp:ListItem Text="-- Select A Package --" Value="0" /> 
        </asp:DropDownList>
        </div>
        <p />Camp date is from:<asp:TextBox ID="startDate" runat="server" Enabled="False" 
                CssClass="textboxc" Width="80px" >Select camp date</asp:TextBox>
&nbsp;to
        <asp:TextBox ID="endDate" runat="server" Enabled="False" CssClass="textboxc" 
                Width="80px">Select camp date</asp:TextBox>
&nbsp;<p />No of participants: <asp:TextBox ID="noOfPart" runat="server" Width="30px" OnTextChanged="noOfPart_TextChanged"></asp:TextBox>
        <p />
        <asp:Button ID="calPriceBtn" runat="server" Text="Calculate price" 
                onclick="clicked"/>
            <asp:Label ID="jsEnabler" runat="server"></asp:Label>
            <asp:Label ID="jsEnabler2" runat="server"></asp:Label>
        <asp:Panel 
            ID="topofferp" runat="server" Visible="False">
        <div id="topofferpackage">
        <span class="topTitle">You will get the following as a package:</span>
        <p />
        <span class="offerTitle">2 Highly Recommended Services:</span>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="servID" 
                DataSourceID="serviceDS" Font-Size="X-Large" Font-Italic="True">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl="Images/buttons/tick_big_1.png" />
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("servName") %>'></asp:Label>
                    &nbsp;( worth
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("servPrice") %>'></asp:Label>
                    &nbsp;)<br />
                </ItemTemplate>
            </asp:DataList>
            <p />
            <span class="offerTitle">5 Highly Recommended Activities:</span>
            <br />
            <asp:DataList ID="DataList2" runat="server" DataKeyField="activityID" 
                DataSourceID="activityDS" Font-Italic="True" Font-Size="X-Large">
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" 
                        ImageUrl="Images/buttons/tick_big_1.png" />
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("activityName") %>'></asp:Label>
                    &nbsp;( worth
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("activityPrice") %>'></asp:Label>
                    &nbsp;)<br />
                </ItemTemplate>
            </asp:DataList>
            <br />
            </div>
        </asp:Panel>
            &nbsp;<asp:Panel ID="cpPanel" runat="server" Visible="False">
            <div id="calculatedprices">
            <span id = "packageCost">Package cost:</span>
                <asp:Label ID="calculatedPrice" runat="server" Visible="False"></asp:Label>
            </div>
        </asp:Panel>
    </div>
    <p />
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam porttitor tincidunt mi in porta. Vestibulum id malesuada orci. Morbi aliquet porttitor ultricies. Aliquam convallis augue ac lacus interdum et ornare magna sodales. Proin tempor quam sed lorem commodo ut sagittis tellus vestibulum. Pellentesque eget tellus dui, id sollicitudin dui. Fusce quis lacinia est. Aenean nec tellus urna. Cras dignissim, metus vitae ultricies bibendum, eros elit ultricies tortor, nec auctor neque nisi vel nisi. Aliquam hendrerit ultrices semper. In aliquet neque eget nulla rhoncus facilisis. Sed vehicula nulla et enim iaculis pellentesque mollis risus faucibus. Aliquam sodales tellus ut velit blandit ut ullamcorper lectus imperdiet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
 
Curabitur id enim eu diam tempus ultrices. 

</p>Phasellus pulvinar tristique bibendum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam sed nisi eu felis sagittis bibendum at ut arcu. Curabitur quis rhoncus ante. Quisque lobortis, nibh nec lacinia accumsan, odio mi interdum augue, at tempus tellus nisi at odio. Cras at orci a massa gravida tincidunt ac eu purus. Ut eget lectus quis urna faucibus posuere ut id lacus. Ut justo justo, elementum et posuere eu, venenatis quis ligula. Pellentesque placerat, libero et congue luctus, massa tellus fermentum nunc, at lacinia massa sapien tincidunt enim. Aliquam vel vehicula nisl.
 
Nunc vitae nunc in neque bibendum tristique. 

</p>Sed adipiscing molestie dignissim. Cras vel leo magna, sit amet sagittis risus. 
        Suspendisse potenti. Maecenas aliquet massa felis. Class aptent taciti sociosqu 
        ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent varius 
        tellus leo, eget consequat magna. Vivamus at lectus sem, sit amet dapibus lorem. 
        Donec porta nisi nec nunc bibendum ac lobortis lorem euismod. Class aptent 
        taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. 
        Sed volutpat sodales sodales. Phasellus mollis nunc massa, id venenatis massa. 
        Duis nisl risus, aliquet at congue id, sollicitudin nec leo. Aliquam a metus id 
        velit interdum convallis. Nunc vitae euismod lorem. Integer turpis mi, lacinia 
        in hendrerit lacinia, tempor non augue. Aenean vel enim vel ipsum varius 
        hendrerit sit amet eu magna. Sed nec bibendum eros. Ut euismod posuere semper. . 

<center><div class="payment">
    <asp:Label class="paymentTop" runat="server" ID="paymentTop">We offer the best quality service!</asp:Label>
    <br />
    <br />
    <asp:HyperLink ID="dateLabel" runat="server" Font-Size="Medium" 
        ForeColor="Blue" NavigateUrl="#packageSelect">Select a package to get started!</asp:HyperLink>
    <br />&nbsp;<asp:Label ID="priceLabel" runat="server">For a limited time only, we bring you this special deal!</asp:Label>
    <br />
        <asp:ImageButton ID="addSC" runat="server" 
        ImageUrl="Images/Buttons/addtocartbutton2.jpg" onclick="addtoSC" />
        <a href="upsell.aspx"><br /></a>&nbsp;<asp:ImageButton ID="creditPic" 
        runat="server" ImageUrl="Images/Buttons/credit.jpg" onclick="addtoSC" />
        <br/>&nbsp;<asp:ImageButton ID="nortonPic" runat="server" 
        ImageUrl="Images/Site/verisign2.png" onclick="addtoSC" />
        </div></center>
 </div>
 </ContentTemplate>
  <Triggers>
              <asp:AsyncPostBackTrigger controlid="calPriceBtn" eventname="click" />
 </Triggers>
     </asp:UpdatePanel>
</asp:Content>

