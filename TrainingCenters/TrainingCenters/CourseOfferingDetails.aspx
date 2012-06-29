<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="CourseOfferingDetails.aspx.cs" Inherits="TrainingCenters.CourseOfferingDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
<script type="text/javascript">
    function Showalert(CourseName) {
        alert(CourseName + ' details updated successfully.');
        if (alert) {
            window.location = 'HomeTrainingCenter.aspx';
        }
    }
   </script>


<table>
<tr>
<td>
<asp:Label ID="Label1" runat="server" Text="InstituteName"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtInstituteName" runat="server"></asp:TextBox>
</td></tr>
<tr><td>
    <asp:Label ID="Label2" runat="server" Text="YearofEstablishment"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtYearofEstablishment" runat="server"></asp:TextBox>
</td></tr>
<tr><td>
    <asp:Label ID="Label3" runat="server" Text="Area"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtArea" runat="server"></asp:TextBox>
</td></tr>
<%--<tr><td align="center">
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
</td></tr>--%>
</table>
</asp:Content>
