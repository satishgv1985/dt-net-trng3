<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="EditInstituteProfile.aspx.cs" Inherits="TrainingCenters.institute.EditInstituteProfile" %>
<%@ Register Src="~/institute/InstituteUserControl.ascx" TagName="editInstitute" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
<uc:editInstitute id="ucEditInstitute" runat="server"></uc:editInstitute>
    <table class="style1">
        <tr>
            <td align="center">
                    <asp:Button ID="btnSubmitForm" runat="server" Text="SubmitForm" ValidationGroup="vgInstitute"
                         CausesValidation="true" Style="font-weight: 700;
                        margin-left: 0px" Width="219px"   />
                </td>
        </tr>
    </table>
</asp:Content>
