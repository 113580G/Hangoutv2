<%@ Page Title="" Language="C#" MasterPageFile="~/Master/mainpage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Master_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    First Name:
<asp:TextBox ID="NewsFN" runat="server" style="margin-left: 2px; margin-top: 12px" ></asp:TextBox>
    <asp:Label ID="LabelValidateFName" runat="server" Font-Size="XX-Small" ForeColor="Red" 
        Text="*Required" Visible="False"></asp:Label>
    <br />

        
Last Name: 
<asp:TextBox ID="NewsLN" runat="server" style="margin-left: 2px; margin-top: 12px"></asp:TextBox>
    <asp:Label ID="LabelValidateLName" runat="server" Font-Size="XX-Small" ForeColor="Red" 
        Text="*Required" Visible="False"></asp:Label>
<br />

Email:
<asp:TextBox ID="NewsE" runat="server" style="margin-left: 35px" Width="128px"></asp:TextBox>
    <asp:Label ID="LabelValidateEmail" runat="server" Font-Size="XX-Small" ForeColor="Red" 
        Text="*Required" Visible="False"></asp:Label>
    &nbsp;
    
    <br />
    
    <asp:Button ID="Button1" runat="server" Text="Submit" Height="19px" 
        onclick="Button1_Click" style="margin-top: 0px" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="wwa">
    <h2>Who are we?</h2>
    <p><img src="Images/Pictures/whatwedo.png" /></p>
    <div id="wwacontent">
    <p>We are a group of outgoing individual that wants to empower people of many walks of life. We want to make an impact in people lives and aims to make them realise a new height of success.</p>
    </div>
    </div>
    <div id="wwd">
    <h2>What we do?</h2>
    <p><img src="Images/Pictures/whoarewe.png" /></p>
    <div id="wwdcontent">
    <p>We provides outdoor education and adventure learning programmes to help people realise their full potential. Through expeditions and outdoor activities, participants acquire new skills and a sense of adventure, develop the tenacity to overcome challenges as a team and broaden their perspectives.</p>
    </div>
    </div>
    <div id="testimonials">
    <h2>Testimonials:</h2>
    <div id="testcontent">
        <asp:ObjectDataSource 
                ID="ObjectDataSource1" runat="server" DeleteMethod="Deletetestismonial" 
                InsertMethod="InsertTestimonial" OldValuesParameterFormatString="original_{0}" 
                SelectMethod="GetTData" TypeName="Testismonial" 
                UpdateMethod="UpdateTestismonial">
                <DeleteParameters>
                    <asp:Parameter Name="Original_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="testDesc" Type="String" />
                    <asp:Parameter Name="tTimestamp" Type="String" />
                    <asp:Parameter Name="custSerial" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="testDesc" Type="String" />
                    <asp:Parameter Name="tTimestamp" Type="String" />
                    <asp:Parameter Name="tDecision" Type="String" />
                    <asp:Parameter Name="custSerial" Type="Int32" />
                    <asp:Parameter Name="staffID" Type="Int32" />
                    <asp:Parameter Name="Original_testID" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" style="margin-top: 0px" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="fName" HeaderText="Name" 
                SortExpression="fName" />
            <asp:BoundField DataField="testDesc" HeaderText="Testimonial" 
                SortExpression="testDesc" />
            <asp:BoundField DataField="tTimestamp" HeaderText="Time Added" 
                SortExpression="tTimestamp" />
        </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT Customer_Registration.fName, Testimonials.testDesc, Testimonials.tTimestamp FROM Testimonials INNER JOIN Customer_Registration ON Testimonials.custSerial = Customer_Registration.custSerial WHERE (Testimonials.tDecision = 'True')">
        </asp:SqlDataSource>
    </div>
    </div>
</asp:Content>

