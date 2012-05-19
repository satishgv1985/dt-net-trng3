<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="InstituteSearch.aspx.cs" Inherits="TrainingCenters.InstituteSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <style type="text/css">
        .style10
        {
            width: 100%;
        }
        .style11
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
<table><tr><td style="width:100%"><center><h3 style="width: 963px" class="style11">INSTITUTE SEARCH</h3></center></td></tr></table>
<br />
    <table class="style10">
        <tr>
            <td align="right">
                <asp:Label ID="lblInstituteName" runat="server" style="font-weight: 700" 
                    Text="Enter Course  Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbInstituteName" runat="server" 
                     Width="191px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <table class="style10">
        <tr>
            <td align="right">
                <asp:Button ID="btnInstituteSearch" runat="server" Text="Institute Search" 
                    Width="144px" style="margin-left: 0px" />
            </td>
            <td align="center">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="173px" />
            </td>
        </tr>
    </table>
</asp:Content>
