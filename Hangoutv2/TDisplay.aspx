<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TDisplay.aspx.cs" Inherits="TDisplay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .style1
        {
            text-align: center;
        }
        .style2
        {
            color: #0000FF;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="style1">
            <span class="style2">Testimonials</span><asp:ObjectDataSource 
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
        </h1>
    
    </div>
    <p style="text-align: center">
&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="testID" 
        DataSourceID="ObjectDataSource1" style="margin-top: 0px" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="custSerial" HeaderText="Customer No." 
                SortExpression="custSerial" />
            <asp:BoundField DataField="tTimestamp" HeaderText="Time Added" 
                SortExpression="tTimestamp" />
            <asp:BoundField DataField="testDesc" HeaderText="Description" 
                SortExpression="testDesc" />
        </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    </p>
    </form>
</body>
</html>
