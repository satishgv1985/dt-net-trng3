<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="ReadStudentReg.aspx.cs" Inherits="TrainingCenters.student.ReadStudentReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">

    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
        </style>

        </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    
    <table class="style1">
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                    Font-Underline="True" Text="Student Details"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <table class="style1">
        <tr>
            <td align="right">
                <asp:Label ID="lblStudentName0" runat="server" style="font-weight: 700" 
                    Text="User Name  :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblStudentName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblAge0" runat="server" style="font-weight: 700" 
                    Text="Age  :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblAge" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblGender0" runat="server" style="font-weight: 700" 
                    Text="Gender  :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblGender" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblQualification0" runat="server" style="font-weight: 700" 
                    Text="Qualification  :"></asp:Label>
            </td>
            <td align="left">
                <asp:Label ID="lblQualification" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" align="right">
                <asp:Label ID="lblState0" runat="server" style="font-weight: 700" 
                    Text="State  :"></asp:Label>
            </td>
            <td class="style2">
                <asp:Label ID="lblState" runat="server"></asp:Label>
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
                <asp:Button ID="btnResetStudent" runat="server" onclick="btnReset_Click" 
                    Text="ResetStudent" PostBackUrl="~/StudentReg.aspx" />
            </td>
        </tr>
    </table>
  

</asp:Content>

    
