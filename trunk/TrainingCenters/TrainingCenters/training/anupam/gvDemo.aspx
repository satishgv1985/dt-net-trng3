﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gvDemo.aspx.cs" Inherits="TrainingCenters.training" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" 
            AutoGenerateEditButton="True" AutoGenerateSelectButton="True" DataKeyNames="ID" 
            DataSourceID="sdsStation">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                    SortExpression="ID" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
                <asp:BoundField DataField="LAT_N" HeaderText="LAT_N" SortExpression="LAT_N" />
                <asp:BoundField DataField="LONG_W" HeaderText="LONG_W" 
                    SortExpression="LONG_W" />
                    <asp:TemplateField>

                    <ItemTemplate>
                    <%#Eval("CITY") %>
                    </ItemTemplate>
                    <EditItemTemplate>
                    <asp:DropDownList ID="ddlCity" runat="server" DataSourceID="sdscity" DataTextField="CITY_NAME" DataValueField="CITY_ID"></asp:DropDownList>
                    <asp:SqlDataSource ID="sdscity" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>"  SelectCommand="SELECT [CITY_NAME], [CITY_ID] FROM [CITY]"></asp:SqlDataSource>
                    </EditItemTemplate>
                   
                    </asp:TemplateField>
                    
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sdsStation" runat="server" 
            ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
            DeleteCommand="DELETE FROM STATION WHERE (ID = @ID)" 
            SelectCommand="SELECT * FROM [STATION]" 
            UpdateCommand="UPDATE STATION SET CITY = @CITY, STATE = @STATE, LAT_N = @LAT_N, LONG_W = @LONG_W WHERE (ID = @ID)">
            <DeleteParameters>
                <asp:Parameter Name="ID" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CITY" />
                <asp:Parameter Name="STATE" />
                <asp:Parameter Name="LAT_N" />
                <asp:Parameter Name="LONG_W" />
                <asp:Parameter Name="ID" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
