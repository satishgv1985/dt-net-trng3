<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="Course Search.aspx.cs" Inherits="TrainingCenters.Course_Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <style type="text/css">
        .style11
        {
            width: 100%;
        }
        .style12
        {
            width: 371px;
        }
        .style13
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <table><tr><td style="width:100%"><center><h3 style="width: 963px" class="style13">COURSE SEARCH</h3></center></td></tr></table>
<br />
    <table class="style11">
        <tr>
            <td align="right">
                <asp:Label ID="lblCourseName" runat="server" style="font-weight: 700" 
                    Text="Enter Institute Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbCourseName" runat="server" Width="191px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="gvInstitutes" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="InstituteID">
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
            <asp:ControlParameter ControlID="tbCourseName" Name="instituteName" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <table class="style11">
        <tr>
            <td align="right" class="style12">
                <asp:Button ID="btnCourseSearch" runat="server" Text="Course Search" 
                    Width="178px" onclick="btnCourseSearch_Click" />
            </td>
            <td align="center">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="190px" />
            </td>
        </tr>
    </table>

</asp:Content>
