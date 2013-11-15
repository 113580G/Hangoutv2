<%@ Page Title="" Language="C#" MasterPageFile="~/Master/upselldownsell.master" AutoEventWireup="true" CodeFile="Downsell.aspx.cs" Inherits="Master_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<div id="content">
<div id="upselltop">WAIT! CHECK OUT THIS LAST OFFER</div>
<div id="topofferdownsell">
<div id="topoffercontent">
    <asp:SqlDataSource ID="ActivitySqlSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT Activity.activityName, Activity.activityDetails, Activity.activityPrice, ActivityPackage.activityCat, ActivityPackage.packID FROM Activity INNER JOIN ActivityPackage ON Activity.activityID = ActivityPackage.activityID WHERE (ActivityPackage.activityCat = 'DownsellActivity') AND (ActivityPackage.packID = @packageID)">
        <SelectParameters>
            <asp:SessionParameter Name="packageID" SessionField="Package" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="ServiceSqlSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT Service.servID, Service.servName, Service.servDetails, Service.servPrice, ServicePackage.servCat, ServicePackage.packID FROM Service INNER JOIN ServicePackage ON Service.servID = ServicePackage.servID WHERE (ServicePackage.servCat = 'downsellservices') AND (ServicePackage.packID = @packageID)">
        <SelectParameters>
            <asp:SessionParameter Name="packageID" SessionField="Package" />
        </SelectParameters>
    </asp:SqlDataSource>
    <span class="offerTitle">Select ONE of these service:</span><br />
&nbsp;<asp:Label ID="jsEnabler" runat="server"></asp:Label>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="servID" 
        DataSourceID="ServiceSqlSource" Font-Italic="True" Font-Size="X-Large">
        <ItemTemplate>
            <asp:CheckBox ID="serviceCB" runat="server" Text='<%# Eval("servName") %>' 
                AutoPostBack="True" oncheckedchanged="serviceCB_CheckedChanged" />
            &nbsp;( worth
            <asp:Label ID="costLbl" runat="server" Text='<%# Eval("servPrice") %>'></asp:Label>
            )<br />
            
        </ItemTemplate>
    </asp:DataList>
    <p/>
<span class="offerTitle">PLUS: 3 Additional Activities (Select 3 out of 5):<br />
        </span>
        <asp:Label ID="jsEnabler2" runat="server"></asp:Label>
        <asp:DataList ID="DataList2" runat="server" 
            DataSourceID="ActivitySqlSource" Font-Italic="True" Font-Size="X-Large">
            <ItemTemplate>
                <asp:CheckBox ID="cbAct" runat="server" 
                    Text='<%# Eval("activityName") %>' oncheckedchanged="activities_CheckedChanged" 
                    AutoPostBack="True" />
                &nbsp;( worth
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("activityPrice") %>'></asp:Label>
                )
            </ItemTemplate>
        </asp:DataList>
        <center>
<p />    
<span class="limitedtime">For limited time only, <asp:Label ID="downsellPrice" runat="server" 
        Text="insertDownsellPrice"></asp:Label>&nbsp;/person</span><br />
&nbsp;<span class="rejected"><asp:ImageButton ID="upsellBtn1" runat="server" 
        ImageUrl="Images/buttons/addtocartbutton2.jpg" 
        onclick="upsellBtn1_Click" />
        <p />   
            <asp:LinkButton ID="linkDS1" runat="server" Font-Size="12pt" 
            onclick="linkDS1_Click" CssClass="rejectOffer">No thanks, i don&#39;t want this fabulous offer and i know this will never be offered again. Proceed me to checkout now</asp:LinkButton>
            </span>    
            <br /> 
         <img alt="cardpayment" 
        src="Images/buttons/credit.jpg" border="none"/></a>
        <img src="Images/site/verisign2.png" />
        </center>
</div>
</div>
<div id="middleoffer">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras semper nisl sed risus sodales aliquet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin erat arcu, vestibulum non interdum eu, feugiat a urna. Aliquam non dapibus turpis. Quisque commodo hendrerit fringilla. Vestibulum quis tellus libero. 

<p />Etiam neque nunc, gravida ut ullamcorper eget, pellentesque lacinia diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi feugiat bibendum augue sed vestibulum. Etiam velit felis, porttitor et sodales id, tincidunt vel turpis. Proin leo sem, placerat a hendrerit vel, mollis at erat. Ut venenatis risus in neque vestibulum aliquet vel eget lorem. Morbi molestie tristique diam, et porttitor urna vulputate sed.
 
<p />Maecenas gravida euismod tortor, eget gravida metus hendrerit ac. Donec erat turpis, porta vitae ornare at, mollis at risus. Sed porta neque nisi. Integer lobortis vehicula turpis sed imperdiet. Aenean mauris est, ullamcorper a lobortis ac, vestibulum et eros. Curabitur lectus dui, scelerisque et tempor vitae, interdum sit amet diam. Praesent vitae ligula ac lectus tincidunt ornare a ut nisl. Suspendisse viverra, ligula quis tincidunt facilisis, nisi elit tristique ipsum, eu fermentum sapien tortor vel enim. Vestibulum varius enim sed elit pellentesque viverra eu in erat. Donec nec erat et mauris ornare dictum et in eros. Integer ullamcorper scelerisque aliquet.
 
<p />Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent scelerisque placerat nibh, a sagittis libero rutrum id. Suspendisse potenti. Maecenas diam justo, varius vitae molestie quis, molestie id orci. Nunc at sem metus. In hac habitasse platea dictumst. Vestibulum nec lacus ante. Donec at ipsum leo.
 
<p />Pellentesque mattis dapibus ornare. Quisque commodo tempus libero nec fermentum. Donec molestie, elit vitae condimentum suscipit, turpis augue luctus erat, id lacinia dui quam et nibh. Praesent sit amet tellus nec elit blandit vehicula. Proin id arcu nisl. Sed interdum gravida erat, ut semper neque feugiat sagittis. Nullam mollis massa nec nulla gravida lobortis vel ut massa. Fusce et tellus quis lectus auctor dignissim. Morbi tristique ipsum euismod arcu lacinia tristique ut sed lacus. Duis orci orci, pellentesque vitae gravida sed, iaculis iaculis nulla. Maecenas ut sapien eget risus condimentum volutpat ornare vitae sapien. Fusce in dui nec massa semper tincidunt. Sed sit amet magna sapien. Aliquam dolor elit, blandit in aliquam eu, tincidunt a urna.
 
<p />Suspendisse commodo lorem non nisi semper id consectetur ipsum semper. Vestibulum laoreet nibh ac nisi malesuada vehicula. Duis sit amet ante ut risus vehicula interdum. Aenean sagittis dapibus luctus. Vivamus gravida lorem condimentum eros adipiscing volutpat. Duis bibendum consectetur nibh ac lobortis. Praesent aliquam malesuada iaculis.

<p />Maecenas gravida euismod tortor, eget gravida metus hendrerit ac. Donec erat turpis, porta vitae ornare at, mollis at risus. Sed porta neque nisi. Integer lobortis vehicula turpis sed imperdiet. Aenean mauris est, ullamcorper a lobortis ac, vestibulum et eros. Curabitur lectus dui, scelerisque et tempor vitae, interdum sit amet diam. Praesent vitae ligula ac lectus tincidunt ornare a ut nisl. Suspendisse viverra, ligula quis tincidunt facilisis, nisi elit tristique ipsum, eu fermentum sapien tortor vel enim. Vestibulum varius enim sed elit pellentesque viverra eu in erat. Donec nec erat et mauris ornare dictum et in eros. Integer ullamcorper scelerisque aliquet.
 
<p />Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent scelerisque placerat nibh, a sagittis libero rutrum id. Suspendisse potenti. Maecenas diam justo, varius vitae molestie quis, molestie id orci. Nunc at sem metus. In hac habitasse platea dictumst. Vestibulum nec lacus ante. Donec at ipsum leo.
 
<p />Pellentesque mattis dapibus ornare. Quisque commodo tempus libero nec fermentum. Donec molestie, elit vitae condimentum suscipit, turpis augue luctus erat, id lacinia dui quam et nibh. Praesent sit amet tellus nec elit blandit vehicula. Proin id arcu nisl. Sed interdum gravida erat, ut semper neque feugiat sagittis. Nullam mollis massa nec nulla gravida lobortis vel ut massa. Fusce et tellus quis lectus auctor dignissim. Morbi tristique ipsum euismod arcu lacinia tristique ut sed lacus. Duis orci orci, pellentesque vitae gravida sed, iaculis iaculis nulla. Maecenas ut sapien eget risus condimentum volutpat ornare vitae sapien. Fusce in dui nec massa semper tincidunt. Sed sit amet magna sapien. Aliquam dolor elit, blandit in aliquam eu, tincidunt a urna.
 
<p />Suspendisse commodo lorem non nisi semper id consectetur ipsum semper. Vestibulum laoreet nibh ac nisi malesuada vehicula. Duis sit amet ante ut risus vehicula interdum. Aenean sagittis dapibus luctus. Vivamus gravida lorem condimentum eros adipiscing volutpat. Duis bibendum consectetur nibh ac lobortis. Praesent aliquam malesuada iaculis.
</div>
<div id="lastoffer">
<div id="payment">
<center>
For limited time only, 

    <asp:Label ID="downsellPrice2" runat="server" Text="insertUpsellPrice"></asp:Label>
    /person<br />
    <asp:ImageButton ID="upsellBtn2" runat="server" 
        ImageUrl="Images/buttons/addtocartbutton2.jpg" 
        onclick="upsellBtn2_Click" />
    <br />
&nbsp;<br />
    <asp:LinkButton ID="linkDS2" runat="server" Font-Size="12pt" 
            onclick="linkDS2_Click" CssClass="rejectOffer">No thanks, i don&#39;t want this fabulous offer and i know this will never be offered again. Proceed me to checkout now</asp:LinkButton>
    <br /><img alt="cardpayment" 
        class="style2" src="Images/buttons/credit.jpg" border="none"/>
        <img src="Images/site/verisign2.png" />
        </div>
<div id ="ps">P.S.S. This offer will never be made again. If you want to have discounted rate, you will need to buy now! We're serious!
<p />P.S.S.S. This offer is a limited time only!</div>
</div>
</div>
</center>
</ContentTemplate>
<Triggers>
 <asp:AsyncPostBackTrigger controlid="upsellBtn1" eventname="click" />
</Triggers>
    </asp:UpdatePanel>
</asp:Content>

