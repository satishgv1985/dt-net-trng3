<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true"
    CodeBehind="AvailableInstitutes.aspx.cs" Inherits="TrainingCenters.AvailableInstitutes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    This page contains the search results for which the institute offer the courses
    <br />
    <asp:Repeater ID="Repeater1" runat="server" >
        <HeaderTemplate>
            <table>
                <tr>
                    <th>
                        CourseName
                    </th>
                    <th>
                        InstituteName
                    </th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <%# DataBinder.Eval(Container.DataItem, "CourseName") %>
                </td>
                <td>
                    <%# DataBinder.Eval(Container.DataItem, "InstituteName") %>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
   
    <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TCdbConnectionString3 %>" 
            SelectCommand="SELECT  Institute.InstituteName, Course.CourseName FROM CourseOffering INNER JOIN Institute ON CourseOffering.InstituteID = Institute.InstituteID INNER JOIN Course ON CourseOffering.CourseID = Course.CourseID">
        </asp:SqlDataSource>--%>
    <%-- <asp:ListView ID="lvInstitutes" runat="server">
        <ItemTemplate>
            <%# Eval("InstituteName")%> 
            <%# Eval("Area")%>                       
        </ItemTemplate>
         <ItemTemplate>
            <%# Eval("YearOfEstablishment")%>            
        </ItemTemplate>
         <ItemTemplate>
            <%# Eval("Area")%>            
        </ItemTemplate>--%>
    <%-- <ItemTemplate>
            <%# Eval("CourseName")%>
        </ItemTemplate>--%>
    <%--</asp:ListView>--%>
    <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="InstituteID">
                        
                        <Columns>
                            <asp:BoundField DataField="InstituteID" HeaderText="InstituteID" InsertVisible="False"
                                ReadOnly="True" SortExpression="InstituteID" />
                            <asp:BoundField DataField="InstituteName" HeaderText="InstituteName" SortExpression="InstituteName" />
                            <asp:BoundField DataField="YearOfEstablishment" HeaderText="YearOfEstablishment"
                                SortExpression="YearOfEstablishment" />
                            <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                            <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                        </Columns>
                    </asp:GridView>--%><
    <br />
</asp:Content>
