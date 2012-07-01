<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true"
    CodeBehind="HomeTrainingCenter.aspx.cs" Inherits="TrainingCenters.HomeTrainingCenter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <style type="text/css">
        .style1
        {
            width: 101%;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            width: 101%;
        }
        .style4
        {
            width: 50%;
        }
        .style5
        {
            height: 23px;
        }
        .style11
        {
            height: 23px;
            width: 346px;
        }
        .style12
        {
            width: 289px;
        }
        .style13
        {
            width: 346px;
        }
    </style>
    <script type="text/javascript">
    function funcOpenPopup(id)
    {
        //debugger;
        window.open("/institute/courseofferingdetails.aspx?cid="+id, 'name', 'height=400,width=450');
    return false;
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <table style="width: 100%">
        <tr>
            <td class="style12" style="width: 25%">
                <table class="style1">
                    <tr>
                        <td align="left" class="style13">
                            <asp:Label ID="lblCoursesOffering" runat="server" Font-Bold="True" Font-Size="Larger"
                                Font-Underline="True" Style="font-size: large" Text="CoursesOffering"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lbInstitute" runat="server" Text='<%#Eval("InstituteId") %>'
                                                OnClientClick="return funcOpenPopup(<%#Eval('InstituteName') %>);"></asp:LinkButton>
                                       
                                       <input type="button" onclick="funcOpenPopup('<%#Eval("InstituteName") %>')" value='<%#Eval("InstituteId") %>'/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:HyperLinkField HeaderText="Course Name" DataTextField="CourseName" DataNavigateUrlFields="CourseID,InstituteID"
                                        DataNavigateUrlFormatString="institute/CourseOfferingDetails.aspx?cid={0}&iid={1}" />
                                    <asp:HyperLinkField HeaderText="Institute   Name" DataNavigateUrlFormatString="institute/CourseOfferingDetails.aspx?cid={0}"
                                        DataTextField="InstituteName" DataNavigateUrlFields="CourseName" />
                                        <asp:HyperLinkField HeaderText="YearofEstablishment" DataNavigateUrlFormatString="institute/CourseOfferingDetails.aspx?cid={0}"
                                        DataTextField="InstituteName" DataNavigateUrlFields="CourseName" />
                                        <asp:HyperLinkField HeaderText="Area" DataNavigateUrlFormatString="institute/CourseOfferingDetails.aspx?cid={0}"
                                        DataTextField="InstituteName" DataNavigateUrlFields="CourseName" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TCdbConnectionString2 %>"
                                SelectCommand="SELECT  Course.CourseName,Course.CourseID, Institute.InstituteName,Institute.InstituteID FROM CourseOffering INNER JOIN Course ON CourseOffering.CourseID = Course.CourseID INNER JOIN Institute ON CourseOffering.InstituteID = Institute.InstituteID">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <%-- <tr>
                        <td align="left" class="style13">
                            <asp:HyperLink ID="hlDotNet" runat="server">DotNet</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:HyperLink ID="hlOracle" runat="server">ORACLE</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:HyperLink ID="hlClanguage" runat="server">C Language</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:HyperLink ID="hlCpp" runat="server">C++</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:HyperLink ID="hlUnix" runat="server">UNIX</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:HyperLink ID="hlTesting" runat="server">TESTING</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style11">
                            <asp:HyperLink ID="hlSap" runat="server">SAP</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:HyperLink ID="hlPhp" runat="server">PHP</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:HyperLink ID="hlSql" runat="server">SQL/PLSQL</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:HyperLink ID="hlDataWareHousing" runat="server">DATAWAREHOUSING</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:HyperLink ID="hlDba" runat="server">DBA</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style13">
                            <asp:HyperLink ID="hlNetWorking" runat="server">NETWORKING</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style4" style="width:50%">
                <table class="style3">
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblTopInstitutes" runat="server" Font-Bold="True" Font-Underline="True"
                                Text="TOP 10 INSTITUTES"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:HyperLink ID="hlInstitute1" runat="server">Institute1</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:HyperLink ID="hlInstitute2" runat="server">Institute2</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:HyperLink ID="hlInstitute3" runat="server">Institute3</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:HyperLink ID="hlInstitute4" runat="server">Institute4</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:HyperLink ID="hlInstitute5" runat="server">Institute5</asp:HyperLink>
                        </td>
                    </tr>--%>
                    <%--<tr>
                        <td align="center">
                            <asp:HyperLink ID="hlInstitute6" runat="server">Institute6</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:HyperLink ID="hlInstitute7" runat="server">Institute7</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:HyperLink ID="hlInstitute8" runat="server">Institute8</asp:HyperLink>
                        </td>
                    </tr>--%>
                    <%--<tr>
                        <td align="center">
                            <asp:HyperLink ID="hlInstitute9" runat="server">Institute9</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:HyperLink ID="hlInstitute10" runat="server">Institute10</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style5">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style5">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width: 25%">
                <table class="style1" style="border-style: none; border-color: inherit; border-width: 1px;
                    width: 249px;">
                    <tr>
                        <td align="right">--%>
                    <%-- <asp:Label ID="rtisements" runat="server" Font-Bold="True" Font-Size="Larger" Font-Underline="True"
                                Text="Advartisements"></asp:Label>
                        </td>
                    </tr>--%>
                    <%--     </table>
            </td>
        </tr>--%>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
