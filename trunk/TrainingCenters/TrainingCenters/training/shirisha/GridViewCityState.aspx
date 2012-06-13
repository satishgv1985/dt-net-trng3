<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewCityState.aspx.cs" Inherits="TrainingCenters.admin.GridViewCityState" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:gridview ID="Gridview1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="InstituteID" DataSourceID="SqlDataSource1">
           <Columns>
               <asp:BoundField DataField="InstituteID" HeaderText="InstituteID" 
                   InsertVisible="False" ReadOnly="True" SortExpression="InstituteID" />
               <asp:BoundField DataField="InstituteName" HeaderText="InstituteName" 
                   SortExpression="InstituteName" />
               <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
               <asp:BoundField DataField="CityID" HeaderText="CityID" 
                   SortExpression="CityID" />
               <asp:BoundField DataField="StateID" HeaderText="StateID" 
                   SortExpression="StateID" />
               <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                   SortExpression="EmailID" />
               <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                   SortExpression="ContactNo" />
           </Columns>

       </asp:gridview>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TCdbConnectionString %>" 
            SelectCommand="SELECT [InstituteID], [InstituteName], [Area], [CityID], [StateID], [EmailID], [ContactNo] FROM [Institute]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
