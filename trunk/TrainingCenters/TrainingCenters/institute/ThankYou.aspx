<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="TrainingCenters.institute.ThankYou" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
Thank you for registration. <br />
Please confirm your registration by clicking the link from your email.<br />
<asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/LoginPage.aspx" Text="Click Here to Login"></asp:HyperLink>
</asp:Content>
