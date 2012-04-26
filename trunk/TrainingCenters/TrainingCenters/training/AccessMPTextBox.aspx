<%@ Page Title="" Language="C#" MasterPageFile="~/training/TestSite.Master" AutoEventWireup="true"
    CodeBehind="AccessMPTextBox.aspx.cs" Inherits="TrainingCenters.training.AccessMPTextBox" %>

<%@ Register Assembly="TBServerControl" Namespace="TBServerControl" TagPrefix="mc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function showSearchTerm() {
            //debugger;
            var st = "<%=hfSearchTerm.ClientID %>";
            var val = document.getElementById(st).value
            alert(val);
        }


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    this is child page
    <br />
    <asp:Label ID="lblName" runat="server"></asp:Label><br />
    <br />
    Required TB<mc:RequiredTB ID="mcRTB" runat="server"></mc:RequiredTB>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"
        CausesValidation="true" UseSubmitBehavior="true" />
    <asp:Button ID="btnShowSearchTerm" runat="server" OnClientClick="javascript:showSearchTerm()"
        Text="Search Term" UseSubmitBehavior="true" CausesValidation="true" />
    <asp:HiddenField ID="hfSearchTerm" ClientIDMode="Static" runat="server" />
</asp:Content>
