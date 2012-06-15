<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="InstituteProfile.aspx.cs" Inherits="TrainingCenters.institute.InstituteProfile" %>
<%@ Register Src="~/institute/InstituteCommon.ascx" TagName="institute" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
<br />
<uc:institute ID="ucInstitute" runat="server" />
Display institute profile

</asp:Content>
