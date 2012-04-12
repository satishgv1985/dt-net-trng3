<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="RegistrationLink.aspx.cs" Inherits="TrainingCenters.RegistrationLink" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <table class="style1">
        <tr>
            <td align="right">
                <asp:Label ID="lectRegistration" runat="server" Font-Bold="True" 
                    Text="Select Your Registration  :"></asp:Label>
            </td>
            <td>
                <table class="style1">
                    <tr>
                        <td>
                            <asp:HyperLink ID="hlInstituteRegistration" runat="server" Font-Bold="True" 
                                Font-Underline="True" ForeColor="Blue" NavigateUrl="~/institute.aspx">Institute Registration</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="hlStudentRegistration" runat="server" Font-Bold="True" 
                                Font-Underline="True" ForeColor="Blue" NavigateUrl="~/StudentReg.aspx">Student Registration</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
