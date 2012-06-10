<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="InstituteWelcome.aspx.cs" Inherits="TrainingCenters.institute.InstituteWelcome" %>
<%@ Register Src="~/InstituteCommon.ascx" TagName="Institute" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    Thanks for login.
Welcome <asp:Label ID="lblName" runat="server"></asp:Label> <br />
<br />
<uc:Institute ID="ucInstitute" runat="server" />


</asp:Content>
