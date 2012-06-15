<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true"
    CodeBehind="InstituteSendEnquiry.aspx.cs" Inherits="TrainingCenters.institute.InstituteSendEnquiry" %>

<%@ Register Src="~/institute/InstituteCommon.ascx" TagName="Institute" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <table>
        <tr>
            <td>
                <uc:Institute ID="ucInstitute" runat="server" />
            </td>
            <td>
                send enquiry
            </td>
        </tr>
    </table>
</asp:Content>
