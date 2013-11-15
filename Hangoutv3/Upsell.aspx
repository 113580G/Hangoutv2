<%@ Page Title="" Language="C#" MasterPageFile="~/Master/upselldownsell.master" AutoEventWireup="true" CodeFile="Upsell.aspx.cs" Inherits="Master_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <div id="content">
<div id="upselltop">WAIT! WE HAVE A SPECIAL DEAL JUST FOR YOU TODAY!<asp:SqlDataSource 
        ID="serviceSqlSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT Service.servID, Service.servName, Service.servDetails, Service.servPrice, ServicePackage.servCat, ServicePackage.packID FROM Service INNER JOIN ServicePackage ON Service.servID = ServicePackage.servID WHERE (ServicePackage.servCat = 'Upsellservices') AND (ServicePackage.packID = @packageID)">
    <SelectParameters>
        <asp:SessionParameter Name="packageID" SessionField="Package" />
    </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="activitySqlSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT Activity.activityID, Activity.activityName, Activity.activityDetails, Activity.activityPrice, ActivityPackage.packID, ActivityPackage.activityCat FROM Activity INNER JOIN ActivityPackage ON Activity.activityID = ActivityPackage.activityID WHERE (ActivityPackage.activityCat = 'UpsellActivity') AND (ActivityPackage.packID = @packageID)">
        <SelectParameters>
            <asp:SessionParameter Name="packageID" SessionField="Package" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
<div id="topofferupsell">
<div id="topoffercontent">
<p/>
    <span class="topTitle">WAIT! Get this <span class="underline">one time offer </span>and: </span>
<p /><span class="offerTitle">You will get the following services:</span>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="servID" 
        DataSourceID="serviceSqlSource" Font-Bold="False" Font-Italic="True" 
        Font-Names="Arial" Font-Size="X-Large" Width="490px">
        <ItemTemplate>
            <div ID="upsellServ">
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="Images/buttons/tick_big_1.png" />
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("servName") %>'></asp:Label>
                &nbsp;( worth
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("servPrice") %>'></asp:Label>
                &nbsp;)</div>
        </ItemTemplate>
    </asp:DataList>
    <p/>
    <span class="offerTitle">In addition, you will also get the following Activities:</span>
        <asp:DataList ID="DataList2" runat="server" DataKeyField="activityID" 
            DataSourceID="activitySqlSource" Font-Italic="True" Font-Size="X-Large">
            <ItemTemplate>
                <asp:Image ID="Image2" runat="server" 
                    ImageUrl="Images/buttons/tick_big_1.png" />
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("activityName") %>'></asp:Label>
                &nbsp;( worth
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("activityPrice") %>'></asp:Label>
                &nbsp;)<br />
            </ItemTemplate>
        </asp:DataList>
        <div id="calculateBox">
    <p/>Normal total cost = $<asp:Label ID="normalCost" runat="server"> / person </asp:Label>
<br />Discounted total cost = <asp:Label ID="totalCost" runat="server"> / person</asp:Label>
<br />You <span class="underline">saved</span>: $<asp:Label ID="savedCost" runat="server"> / person</asp:Label>
</div>
<center><div id="payment2">
    <br />
For limited time only, 

    <asp:Label ID="upsellPrice" runat="server" Text="insertUpsellPrice"></asp:Label>
    /person
    <br />
    <asp:ImageButton ID="upsellBtn" runat="server" 
        ImageUrl="Images/buttons/addtocartbutton2.jpg" onclick="upsellBtn_Click" />
    <p />
&nbsp;<asp:LinkButton ID="linkBSC" runat="server" Font-Size="12pt" 
            onclick="linkBSC_Click">No thanks, i don&#39;t want this fabulous offer and i know this will never be offered again. Proceed me to checkout now</asp:LinkButton>
        <br />
<br /><img alt="cardpayment" 
        class="style2" src="Images/buttons/credit.jpg" border="none"/>
        <img src="Images/site/verisign2.png" /></div></center>
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

    <asp:Label ID="upsellPrice2" runat="server" Text="insertUpsellPrice"></asp:Label>
    /person
    <br />
    <asp:ImageButton ID="upsellBtn2" runat="server" 
        ImageUrl="Images/buttons/addtocartbutton2.jpg" onclick="upsellBtn2_Click" />
        <br />
        <br />
    <asp:LinkButton ID="linkBSC2" runat="server" Font-Size="12pt" 
        onclick="linkBSC2_Click">No thanks, i don&#39;t want this fabulous offer and i know this will never be offered again. Proceed me to checkout now</asp:LinkButton>
    <br />
    <br />
        &nbsp;<img alt="cardpayment" 
        class="style2" src="Images/buttons/credit.jpg" border="none"/>
        <img src="Images/site/verisign2.png" />
        </center></div>
<div id ="ps">P.S.S. This offer will never be made again. If you want to have discounted rate, you will need to buy now! We're serious!
<p />P.S.S.S. This offer is a limited time only!</div>
</div>
</div>
</ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

