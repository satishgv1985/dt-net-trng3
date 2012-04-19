<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true"
    CodeBehind="CacheSet.aspx.cs" Inherits="TrainingCenters.training.CacheSet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    Name:
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <br />
    <asp:Button ID="btnSubmit" Text="Submit" runat="server" 
        onclick="btnSubmit_Click" />
        <br />
        <br />
        <asp:HyperLink ID="hlReadCache" runat="server" NavigateUrl="~/training/CacheRead.aspx" Text="Go To Cache Read"></asp:HyperLink>
</asp:Content>
