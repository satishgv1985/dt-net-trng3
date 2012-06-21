<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="Course Search.aspx.cs" Inherits="TrainingCenters.Course_Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <style type="text/css">
        .style11
        {
            width: 100%;
        }
        .style13
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <table><tr><td style="width:100%"><center><h3 style="width: 963px" class="style13">
        SEARCH FOR COURSES</h3></center></td></tr></table>
<br />
    <table class="style11">
        <tr>
            <td align="right">
                <asp:Label ID="lblCourseName" runat="server" style="font-weight: 700" 
                    Text="Enter Institute Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbInstituteName" runat="server" Width="191px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSearch" runat="server" Text="Search" 
                    Width="178px" onclick="btnSearch_Click1"  />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="gvInstitutes" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="InstituteID" Width="862px">
        <Columns>
            <asp:BoundField DataField="InstituteID" HeaderText="InstituteID" 
                InsertVisible="False" ReadOnly="True" SortExpression="InstituteID" />
            <asp:BoundField DataField="InstituteName" HeaderText="InstituteName" 
                SortExpression="InstituteName" />
            <asp:BoundField DataField="CourseID" HeaderText="CourseID" 
                SortExpression="CourseID" />
            <asp:BoundField DataField="CourseName" HeaderText="CourseName" 
                SortExpression="CourseName" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sdsInstitutes" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TCdbConnectionString %>" SelectCommand="select i.InstituteID,InstituteName,co.CourseID,c.CourseName from Institute i
	left outer join CourseOffering co on i.InstituteID=co.InstituteID 
	left outer join Course c on c.CourseID=co.CourseID
	where InstituteName like @instituteName+'%'">
        <SelectParameters>
            <asp:ControlParameter ControlID="tbInstituteName" Name="instituteName" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>
