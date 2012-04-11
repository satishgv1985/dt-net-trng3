<%@ Page Title="" Language="C#" MasterPageFile="~/training/TestSite.Master" AutoEventWireup="true" CodeBehind="ReadUCValue.aspx.cs" Inherits="TrainingCenters.training.ReadUCValue" %>
<%@ Register Src="~/training/UserDataUC.ascx" TagName="userdata" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
Edit profile page
<br />
UserName: <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
<br />
<br /><br />
<uc:userdata ID="userdatauc" runat="server" />

<br />
<br />
<asp:Label ID="lblValue" runat="server"></asp:Label>
<asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />
</asp:Content>
