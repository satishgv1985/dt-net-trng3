<%@ Page Title="" Language="C#" MasterPageFile="~/training/TestSite.Master" AutoEventWireup="true" CodeBehind="ReadMPTextbox.aspx.cs" Inherits="TrainingCenters.training.ReadMPTextbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
this is reading

<br />
Roll No:<asp:TextBox ID="txtRollNo" runat="server"></asp:TextBox>
<br />
<asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />
</asp:Content>
