﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="InstituteWelcome.aspx.cs" Inherits="TrainingCenters.InstituteWelcome" %>
<%@ Register Src="~/InstituteCommon.ascx" TagName="Institute" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
Thanks for login
<uc:Institute ID="ucInstitute" runat="server" />


</asp:Content>