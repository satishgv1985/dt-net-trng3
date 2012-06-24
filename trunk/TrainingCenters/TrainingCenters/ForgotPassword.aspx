<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/TCSite.Master" CodeBehind="ForgotPassword.aspx.cs"
    Inherits="TrainingCenters.ForgotPassword" %>

<asp:Content ID="Conntent1" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Forgot Password</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 543px;
        }
        .style10
        {
            width: 323px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <table class="style1">
        <tr>
            <td align="center">
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True"
                    Text="FORGOT STUDENT PASSWORD"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:Label ID="lblMessage" runat="server" Visible="False"></asp:Label>
    <br />
    <br />
    <table class="style1">
        <tr>
            <td align="right" class="style10">
                <asp:Label ID="lblUserEmailId" runat="server" Text="User Emaild  :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbUserEmaild" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revUserEmailId" Display="Dynamic" runat="server"
                    ControlToValidate="tbUserEmaild" ErrorMessage="give valid email id" ForeColor="Red"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgInstitute"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                <asp:Label ID="lblUserMobileNumber" runat="server" Text="User Moble Number  :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbUserMobileNumber" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revUserMobileNumber" Display="Dynamic" runat="server"
                    ControlToValidate="tbUserMobileNumber" ErrorMessage="Mobile number should be 10 digits"
                    ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="vgInstitute"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
    <div align="center">
        &nbsp;&nbsp;
        <br />
        <asp:Label ID="lblSentMessage" runat="server" ForeColor="Red" c Visible="False"></asp:Label>
        <br />
        <table class="style1">
            <tr>
                <td align="center">
                    <asp:Button ID="btnSubmitUserDetals" runat="server" Text="SubmitUserDetails" OnClick="btnSubmitUserDetals_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
