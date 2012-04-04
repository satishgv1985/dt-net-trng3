﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="institute.aspx.cs" Inherits="TrainingCenters.institute" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head2" runat="server">
    <title>institute Registration Form</title>
    <script type="text/javascript">
        function funcCheckCourses() {
            return true;
        }

        function funcCheckUserNameLength(source, arguments) {
            arguments.IsValid = true;
            var un = document.getElementById('tbUserName').value;
            if (un.length < 8 || un.length>15)
                arguments.IsValid = false;
        }
    </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 279px;
        }
        .style3
        {
            width: 292px;
        }
        .style4
        {
            width: 276px;
        }
        .style5
        {
            width: 303px;
        }
        .style6
        {
            width: 303px;
            height: 23px;
        }
        .style7
        {
            height: 23px;
        }
    </style>
</head>
<body style="background-color: Olive">
    <form id="form2" runat="server">
    <div>
        <center>
            <h1 style="text-decoration: underline">
                Institute Registration Form</h1>
        </center>
        <table class="style1">
            <tr>
                <td class="style2" align="right">
                    <asp:Label ID="lblInstituteName" runat="server" Text="Enter Institute Name  :" Font-Bold="True"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="tbInstituteName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInstituteName" Display="Dynamic" runat="server"
                        ControlToValidate="tbInstituteName" ErrorMessage="Institute Name should be required"
                        SetFocusOnError="true" ForeColor="red" ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    <asp:Label ID="lblUserName" runat="server" Text="Enter User Name  :" Font-Bold="True"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUserName" Display="Dynamic" runat="server" ControlToValidate="tbUserName"
                        ErrorMessage="Name should be required" SetFocusOnError="true" ForeColor="red"
                        ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvUserName" runat="server" ControlToValidate="tbUserName"
                        ErrorMessage="UserName should be 8-15characters" ForeColor="Red" 
                      ValidationGroup="vgInstitute"   onservervalidate="cvUserName_ServerValidate" ></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    <asp:Label ID="lblPassword" runat="server" Text="Password  :" Font-Bold="True"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="tbPassword" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" SetFocusOnError="true" runat="server"
                        ControlToValidate="tbPassword" ErrorMessage="Password should not be blank" ForeColor="red"
                        ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password  :" Font-Bold="True"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="tbConfirmPassword" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" Display="Dynamic" runat="server"
                        ControlToValidate="tbConfirmPassword" ErrorMessage="Password should not be blank"
                        ForeColor="red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvPassword" Display="Dynamic" runat="server" ControlToCompare="tbPassword"
                        ControlToValidate="tbConfirmPassword" ErrorMessage="Both Passwords should be same"
                        ForeColor="red" ValidationGroup="vgInstitute"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    <asp:Label ID="lblDateOfEstablishment" runat="server" Text="Date Of Establishment  :"
                        Font-Bold="True"></asp:Label>
                </td>
                <td align="left">
                    <asp:Calendar ID="cDateOfEstablishment" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    <asp:Label ID="Label1" runat="server" Text="Courses Offered  :" Font-Bold="True"></asp:Label>
                </td>
                <td align="left" class="style3">
                    <asp:CheckBoxList ID="cblCoursesOffered" runat="server" RepeatColumns="2" Style="margin-bottom: 0px;
                        margin-left: 0px;">
                        <asp:ListItem Text=".Net" Value="1"></asp:ListItem>
                        <asp:ListItem Text="JAVA" Value="2"></asp:ListItem>
                        <asp:ListItem Text="PHP" Value="3"></asp:ListItem>
                        <asp:ListItem Text="ORACLE" Value="4"></asp:ListItem>
                        <asp:ListItem Text="SQL/PLSQL" Value="5"></asp:ListItem>
                        <asp:ListItem Text="C" Value="6"></asp:ListItem>
                        <asp:ListItem Text="C++" Value="7"></asp:ListItem>
                        <asp:ListItem Text="SAP" Value="8"></asp:ListItem>
                        <asp:ListItem Text="TESTING" Value="9"></asp:ListItem>
                        <asp:ListItem Text="DATA WAREHOUSING" Value="10"></asp:ListItem>
                        <asp:ListItem Text="NETWORKING" Value="11"></asp:ListItem>
                        <asp:ListItem Text="DBA" Value="12"></asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
        </table>
        <strong>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Insitute Address&nbsp; :<br />
        </strong>
        <table class="style1">
            <tr>
                <td align="right" class="style5">
                    <asp:Label ID="lblDoorNumber" runat="server" Style="font-weight: 700" Text="Door Number  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbDoorNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5">
                    <asp:Label ID="lblArea" runat="server" Style="font-weight: 700" Text="Area  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbArea" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    <asp:Label ID="lblCity" runat="server" Style="font-weight: 700" Text="City  :"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="tbCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5">
                    <asp:Label ID="lblMobileNumber" runat="server" Style="font-weight: 700" Text="Mobile Number  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbMobileNumber" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revMobileNumber" Display="Dynamic" runat="server"
                        ControlToValidate="tbMobileNumber" ErrorMessage="Mobile number should be 10 digits"
                        ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="vgInstitute"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5">
                    <asp:Label ID="lblEmailId" runat="server" Style="font-weight: 700" Text="Email ID  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbEmailId" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revEmailId" Display="Dynamic" runat="server"
                        ControlToValidate="tbEmailId" ErrorMessage="give valid email id" ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgInstitute"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5">
                    <asp:Label ID="lblPincodeNumber" runat="server" Style="font-weight: 700" Text="Pincode Number  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbPincodeNumber" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revPincodeNumber" Display="Dynamic" runat="server"
                        ControlToValidate="tbPincodeNumber" ErrorMessage="Give valid pincode number"
                        ForeColor="Red" ValidationExpression="\d{5}" ValidationGroup="vgInstitute"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:ValidationSummary ID="vsIstitute" runat="server" Display="Dynamic" ForeColor="Red"
            ValidationGroup="vgInstitute" HeaderText="Errors occured" ShowMessageBox="false"
            Visible="false" />
        <table class="style1">
            <tr>
                <td align="center">
                    <asp:Button ID="btnSubmitForm" runat="server" Text="SubmitForm" ValidationGroup="vgInstitute"
                        OnClick="btninstsubmit_Click" CausesValidation="true" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>