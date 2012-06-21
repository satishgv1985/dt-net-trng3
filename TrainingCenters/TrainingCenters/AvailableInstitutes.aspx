<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true"
    CodeBehind="AvailableInstitutes.aspx.cs" Inherits="TrainingCenters.AvailableInstitutes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    This page contains the search results for which the institute offer the courses
    <br />
    <table>
        <tr>
            <td>
                InstituteName: Drona
            </td>
        </tr>
        <tr>
            <td>
                Courses: C#, ASP.Net
            </td>
        </tr>
    </table>
    <asp:ListView ID="lvInstitutes" runat="server">
        <ItemTemplate>
            <%# Eval("InstituteName") %>
        </ItemTemplate>
    </asp:ListView>
    <br />
</asp:Content>
