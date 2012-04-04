<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="TrainingCenters.ForgotPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    </style>
</head>
<body bgcolor="#66ffff">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td align="center">
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                    Font-Underline="True" Text="FORGOT PASSWORD"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <table class="style1">
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="lblUserEmailId" runat="server" Text="User Emaild  :"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="tbUserEmaild" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revUserEmailId" Display="Dynamic" runat="server"
                        ControlToValidate="tbUserEmaild" ErrorMessage="give valid email id" ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="vgInstitute"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="lblUserMobileNumber" runat="server" Text="User Moble Number  :"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="tbUserMobileNumber" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revUserMobileNumber" Display="Dynamic" runat="server"
                        ControlToValidate="tbUserMobileNumber" ErrorMessage="Mobile number should be 10 digits"
                        ForeColor="Red" ValidationExpression="\d{10}" 
                    ValidationGroup="vgInstitute"></asp:RegularExpressionValidator>
                </td>
        </tr>
    </table>
    <div>
    
        <br />
        <br />
        <table class="style1">
            <tr>
                <td align="center">
                    <asp:Button ID="btnSubmitUserDetals" runat="server" Text="SubmitUserDetails" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
