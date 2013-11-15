<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SupportTicket.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   
    <table cellpadding="0" style="height:215px; width:497px; background-color: #66FFCC;" border="3">
                            <tr>
                                <td align="center" colspan="2" style="font-size: xx-large">
                                    Support Ticket</td>
                            </tr>


    <tr><td align="right" style="width: 174px; height: 57px;">
        <asp:TextBox ID="TextBox1" runat="server" Height="102px" Width="483px"></asp:TextBox>
        </td></tr>
    
    <tr><td align="center" style="width: 174px; height: 57px;">
        Priority:
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Very Important</asp:ListItem>
            <asp:ListItem>Important</asp:ListItem>
            <asp:ListItem>Neutral</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
    </td></tr>
   
    

    <tr><td align="center" style="width: 174px; height: 57px;">
        <asp:Button ID="Button1" runat="server" Text="Submit!" 
            onclick="Button1_Click" style="height: 26px" />
    </td></tr>

    <p>
        &nbsp;</p>
        </table>
                       

    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [SupportTicket] WHERE [stID] = @stID" 
            InsertCommand="INSERT INTO [SupportTicket] ([stPriority], [stContent], [clientID], [stTimestamp], [custSerial], [staffID]) VALUES (@stPriority, @stContent, @clientID, @stTimestamp, @custSerial, @staffID)" 
            SelectCommand="SELECT * FROM [SupportTicket]" 
            
            
            
            
            UpdateCommand="UPDATE [SupportTicket] SET [stPriority] = @stPriority, [stContent] = @stContent, [clientID] = @clientID, [stTimestamp] = @stTimestamp, [custSerial] = @custSerial, [staffID] = @staffID WHERE [stID] = @stID">
            <DeleteParameters>
                <asp:Parameter Name="stID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="stPriority" Type="String" />
                <asp:Parameter Name="stContent" Type="String" />
                <asp:Parameter Name="clientID" Type="String" />
                <asp:Parameter Name="stTimestamp" Type="String" />
                <asp:Parameter Name="custSerial" Type="Int32" />
                <asp:Parameter Name="staffID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="stPriority" Type="String" />
                <asp:Parameter Name="stContent" Type="String" />
                <asp:Parameter Name="clientID" Type="String" />
                <asp:Parameter Name="stTimestamp" Type="String" />
                <asp:Parameter Name="custSerial" Type="Int32" />
                <asp:Parameter Name="staffID" Type="Int32" />
                <asp:Parameter Name="stID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    </form>
</body>
</html>
