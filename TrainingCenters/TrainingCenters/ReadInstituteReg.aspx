<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="ReadInstituteReg.aspx.cs" Inherits="TrainingCenters.ReadInstituteReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">

    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            height: 21px;
        }
        </style>
        </asp:Content>
        <asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">


        
    <table class="style1">
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" Font-Size="Large" 
                    style="font-weight: 700; text-decoration: underline" 
                    Text="InstituteDetails"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <table class="style1">
        <tr>
            <td align="right">
                <asp:Label ID="lblInstituteName0" runat="server" style="font-weight: 700" 
                    Text="Institute Name :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblInstituteName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblUserName0" runat="server" style="font-weight: 700" 
                    Text="User Name  :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblUserName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblDateOfEstablishment0" runat="server" style="font-weight: 700" 
                    Text="Date Of Establishment  :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblDateOfEstablishment" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblSelectedCourses0" runat="server" style="font-weight: 700" 
                    Text="Selected Courses  :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblSelectedCourse" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblDoorNumber0" runat="server" style="font-weight: 700" 
                    Text="Door Number  :"></asp:Label>
            </td>
            <td align="left">
                <asp:Label ID="lblDoorNumber" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" align="right">
                <asp:Label ID="lblArea0" runat="server" style="font-weight: 700" Text="Area  :"></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblArea" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblCity0" runat="server" style="font-weight: 700" Text="City  :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblCity" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblMobileNumber0" runat="server" style="font-weight: 700" 
                    Text="Mobile Number  :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblMobileNumber" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblEmailId0" runat="server" style="font-weight: 700" 
                    Text="Email Id  :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblEmailId" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <table class="style1">
        <tr>
            <td align="center">
                <asp:Button ID="btnConfirm" runat="server" Text="Confirm" />
            </td>
            <td align="center">
                <asp:Button ID="btnReset" runat="server" onclick="btnReset_Click" 
                    Text="Reset" PostBackUrl="~/institute.aspx" />
            </td>
        </tr>
    </table>
  </asp:Content>
