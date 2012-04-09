<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/TCSite.Master" CodeBehind="institute.aspx.cs"
    Inherits="TrainingCenters.institute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <title>institute Registration Form</title>
    <script type="text/javascript">
        function funcCheckCourses() {
            return true;
        }

        function funcCheckUserNameLength(source, arguments) {
            arguments.IsValid = true;
            var un = document.getElementById('tbUserName').value;
            if (un.length < 8 || un.length > 15)
                arguments.IsValid = false;
        }
    </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 292px;
        }
        .style6
        {
            width: 502px;
            height: 23px;
        }
        .style7
        {
            height: 23px;
        }
        .style8
        {
            width: 501px;
        }
        .style9
        {
            width: 502px;
        }
        .style10
        {
            width: 503px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div>
        <center>
            <h3 style="text-decoration: underline">
                Institute Registration Form</h3>
        </center>
        <table class="style1">
            <tr>
                <td class="style8" align="right">
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
                <td class="style8" align="right">
                    <asp:Label ID="lblUserName" runat="server" Text="Enter User Name  :" Font-Bold="True"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUserName" Display="Dynamic" runat="server" ControlToValidate="tbUserName"
                        ErrorMessage="Name should be required" SetFocusOnError="true" ForeColor="red"
                        ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvUserName" runat="server" ControlToValidate="tbUserName"
                        ErrorMessage="UserName should be 8-15characters" ForeColor="Red" ValidationGroup="vgInstitute"
                        OnServerValidate="cvUserName_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="style8" align="right">
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
                <td class="style8" align="right">
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
        </table>
        <table>
            <tr>
                <td class="style8" align="right">
                    <asp:Label ID="lblDateOfEstablishment" runat="server" Text="Date Of Establishment  :"
                        Font-Bold="True"></asp:Label>
                </td>
                <td align="left">
                    <asp:Calendar ID="cDateOfEstablishment" runat="server"></asp:Calendar>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td class="style8" align="right">
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
        <table class="style1">
            <tr>
                <td align="right" class="style10">
                    <asp:Label ID="lblInstituteAddress" runat="server" Style="font-weight: 700" Text="Institute Address  :"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td align="right" class="style9">
                    <asp:Label ID="lblDoorNumber" runat="server" Style="font-weight: 700" Text="Door Number  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbDoorNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style9">
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
                <td align="right" class="style9">
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
                <td align="right" class="style9">
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
                <td align="right" class="style9">
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
                        OnClick="btninstsubmit_Click" CausesValidation="true" Style="font-weight: 700;
                        margin-left: 0px" Width="219px" 
                        PostBackUrl="~/ReadInstituteRegistration.aspx" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
