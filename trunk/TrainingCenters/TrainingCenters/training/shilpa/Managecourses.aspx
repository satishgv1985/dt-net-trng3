﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Managecourses.aspx.cs" Inherits="TrainingCenters.training.shilpa.Managecourses" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
    
    <asp:GridView ID="gvcourses" runat="server" AllowPaging="True" 
        AllowSorting="True" DataKeyNames="coursename" DataSourceID="Sdscourses" 
        onselectedindexchanged="gvcourses_SelectedIndexChanged1" Width="623px">
                <Columns>
        <asp:TemplateField>
    <EditItemTemplate>
        <asp:SqlDataSource ID="sdscourses" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TCdbConnectionString %>" 
        SelectCommand="SELECT [CourseID], [CourseName] FROM [Course]"></asp:SqlDataSource>

            </EditItemTemplate>
                </asp:TemplateField>
               
<asp:BoundField DataField="coursename" HeaderText="course name"></asp:BoundField>
<asp:CommandField EditText="click to Edit" ShowEditButton="True" HeaderText="update column"></asp:CommandField>
<asp:CommandField ShowDeleteButton="True"></asp:CommandField>
<asp:CommandField EditText="select" ShowSelectButton="True"></asp:CommandField>
          <%-- <asp:BoundField DataField="Duration" HeaderText="Duration" />
                <asp:BoundField DataField="CourseID" HeaderText="courseid" 
                SortExpression="courseid" />--%>
          
            </Columns>  
                            
             <HeaderStyle BackColor= "AliceBlue" Font-Bold="true" ForeColor="Black" />
                <FooterStyle BackColor="AliceBlue" Font-Bold="true" ForeColor="Blue" />
    </asp:GridView>
    

    <asp:SqlDataSource ID="sdscourses" runat="server" ConnectionString="<%$ ConnectionStrings:TCdbConnectionString %>"
            SelectCommand="SELECT coursename,ci.CourseID from Course c INNER JOIN CourseOffering ci on c.CourseID=ci.CourseID"
            UpdateCommand="UPDATE Course SET CourseName = @course WHERE (CourseID= @CourseID)"
            DeleteCommand="DELETE FROM Course WHERE (ID = @CourseID)">
            <DeleteParameters>
                <asp:Parameter Name="course name" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="course name" />
                        </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
