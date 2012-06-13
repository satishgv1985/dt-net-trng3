<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseOffering.aspx.cs" Inherits="TrainingCenters.training.kishore.CourseOffering" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:GridView ID="gvCourseOffering" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  AutoGenerateEditButton="true" 
            style="z-index: 1; left: 110px; top: 132px; position: absolute; height: 133px; width: 187px" >
         <Columns>
             <asp:BoundField DataField="CourseOfferingID" HeaderText="CourseOfferingID" 
                 InsertVisible="False" ReadOnly="True" SortExpression="CourseOfferingID" />
             <asp:BoundField DataField="CourseID" HeaderText="CourseID" 
                 SortExpression="CourseID" />
             <asp:BoundField DataField="InstituteID" HeaderText="InstituteID" 
                 SortExpression="InstituteID" />
             <asp:BoundField DataField="StartDate" HeaderText="StartDate" 
                 SortExpression="StartDate" />
             <asp:BoundField DataField="EndDate" HeaderText="EndDate" 
                 SortExpression="EndDate" />
             <asp:BoundField DataField="Timings" HeaderText="Timings" 
                 SortExpression="Timings" />
             <asp:BoundField DataField="Description" HeaderText="Description" 
                 SortExpression="Description" />
             <asp:BoundField DataField="Fees" HeaderText="Fees" SortExpression="Fees" />
             <asp:BoundField DataField="Faculty" HeaderText="Faculty" 
                 SortExpression="Faculty" />
             <asp:BoundField DataField="Syllabus" HeaderText="Syllabus" 
                 SortExpression="Syllabus" />
         </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:kishoreConnectionString %>" 
            SelectCommand="SELECT [CourseOfferingID], [CourseID], [InstituteID], [StartDate], [EndDate], [Timings], [Description], [Fees], [Faculty], [Syllabus] FROM [CourseOffering1]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
