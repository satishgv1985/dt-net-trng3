<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="SendStudentEmail.aspx.cs" Inherits="TrainingCenters.SendStudentEmail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <style type="text/css">
        .style10
        {
            width: 100%;
        }
        .style11
        {
            width: 71px;
        }
        .style12
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
<table>
<tr>
<td>
<center>
<h3 class="style12" style="width: 915px">
Student Email</h3></center></td></tr></table>
    <table class="style10">
        <tr>
            <td class="style11" style="font-weight: 700">
                <asp:Label ID="Label1" runat="server" Text="Email id :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbEmailId" runat="server" Width="847px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11" style="font-weight: 700">
                <asp:Label ID="Label2" runat="server" Text="Subject :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbSubject" runat="server" Width="846px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <table class="style10">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" style="font-weight: 700" Text="Message :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbMessage" runat="server" TextMode="MultiLine" Width="853px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <table class="style10">
        <tr>
            <td align="center">
                <asp:Button ID="btnSend" runat="server" Text="Send" Width="185px" />
            </td>
            <td align="center">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="166px" />
            </td>
        </tr>
    </table>
</asp:Content>
