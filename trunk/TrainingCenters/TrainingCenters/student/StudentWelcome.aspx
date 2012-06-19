<%@ Page Title="" Language="C#"  MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="StudentWelcome.aspx.cs" Inherits="TrainingCenters.student.StudentWelcome" %>
<%@ Register Src="~/CourseSearch.ascx" TagName="Student" TagPrefix="uc"%>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    Thanks for login.
    <br />
Welcome <asp:Label ID="lblName" runat="server"></asp:Label> <br />
<br /><uc:Student ID="ucStudent" runat="server"></uc:Student>
</asp:Content>
