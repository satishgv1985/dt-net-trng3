<%@ Page Title="" Language="C#" MasterPageFile="~/training/TestSite.Master" AutoEventWireup="true" CodeBehind="AccessMPTextBox.aspx.cs" Inherits="TrainingCenters.training.AccessMPTextBox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    this is child page
<br />
<asp:Label ID="lblName" runat="server" ></asp:Label><br />
<asp:Button ID="btnSubmit" runat="server" Text="Submit" 
    onclick="btnSubmit_Click" />
</asp:Content>
