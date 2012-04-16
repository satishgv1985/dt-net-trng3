<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="InstituteWelcome.aspx.cs" Inherits="TrainingCenters.InstituteWelcome" %>
<%@ Register Src="~/InstituteCommon.ascx" TagName="Institute" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
Thanks for login.
Welcome <asp:Label ID="lblName" runat="server"></asp:Label> <br />
<br />
<asp:LinkButton ID="lbLogout" runat="server" Text="Log Out" 
        onclick="lbLogout_Click"></asp:LinkButton>
<uc:Institute ID="ucInstitute" runat="server" />


</asp:Content>
