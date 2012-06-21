<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true"
    CodeBehind="InstituteSearch.aspx.cs" Inherits="TrainingCenters.institute.InstituteSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <style type="text/css">
        .style10
        {
            width: 100%;
        }
        .style11
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <table>
        <tr>
            <td style="width: 100%">
                <center>
                    <h3 style="width: 963px" class="style11">
                        &nbsp;SEARCH FOR INSTITUTES</h3>
                </center>
            </td>
        </tr>
    </table>
    <br />
    <table class="style10">
        <tr>
            <td align="right">
                <asp:Label ID="lblEnterCourseName" runat="server" Style="font-weight: 700" Text="Enter Course  Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbEnterCourseName" runat="server" Width="191px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSearch" runat="server" Text=" Search" Width="144px" Style="margin-left: 0px"
                    OnClick="btnInstituteSearch_Click" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <center>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="InstituteID"
                        DataSourceID="dsGetInstitutesByCourse">
                        <Columns>
                            <asp:BoundField DataField="InstituteID" HeaderText="InstituteID" InsertVisible="False"
                                ReadOnly="True" SortExpression="InstituteID" />
                            <asp:BoundField DataField="InstituteName" HeaderText="InstituteName" SortExpression="InstituteName" />
                            <asp:BoundField DataField="YearOfEstablishment" HeaderText="YearOfEstablishment"
                                SortExpression="YearOfEstablishment" />
                            <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                            <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                        </Columns>
                    </asp:GridView>
                </center>
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="dsGetInstitutesByCourse" runat="server" ConnectionString="<%$ ConnectionStrings:TCdbConnectionString %>"
        SelectCommand="spSearchCourseOfferingInstitutes" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="tbEnterCourseName" Name="CourseName" PropertyName="Text"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
