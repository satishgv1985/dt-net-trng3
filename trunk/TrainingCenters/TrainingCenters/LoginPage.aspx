<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/TCSite.Master" CodeBehind="LoginPage.aspx.cs"
    Inherits="TrainingCenters.LoginPage" %>

<asp:Content ID="cpLoginHeader" runat="server" ContentPlaceHolderID="cphHeader">
    <style type="text/css">
        .style15
        {
            width: 100%;
            height: 32px;
        }
        .style16
        {
            text-decoration: underline;
            width: 396px;
        }
        
        .style17
        {
            width: 100%;
        }
        .style18
        {
            width: 229px;
        }
        .style19
        {
            width: 445px;
        }
    </style>
    <title>LoginPage</title>
</asp:Content>
<asp:Content ID="cpLoginBody" ContentPlaceHolderID="cphBody" runat="server">
    <table class="style15" cellpadding="10" border="5">
        <tr>
            <td class="style19">
                <table border="2">
                    <tr>
                        <td align="right" class="style16"  style="padding:10px;">
                            <asp:Label ID="lblStudentLogin" runat="server" Font-Bold="True" Font-Overline="False"
                                Font-Size="Large" Text="STUDENT LOGIN" Style="text-decoration: underline"></asp:Label>
                        </td>
                        <td align="right"  style="padding:10px;" class="style18">
                            <asp:HyperLink ID="hlStudentRegistration" runat="server" ForeColor="Blue" Style="font-weight: 700"
                                NavigateUrl="~/student/SRegistration.aspx">Student Registration</asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style15">
                    <tr>
                        <td>
                            &nbsp;
                        <asp:Label ID="lblStudentMessage" runat="server" 
                                Text="Invalid UserName or Password." ForeColor="Red" Font-Bold="true" 
                                Visible="false"></asp:Label>
                
                        </td>
                    </tr>
                </table>
                <table class="style15">
                    <tr>
                        <td>
                            <asp:Label ID="lblStudentEmailId" runat="server" Text="StudentUserName  :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tbStudentUserName" runat="server"></asp:TextBox>
                            <%--<asp:RegularExpressionValidator ID="revStudentEmailId" Display="Dynamic" runat="server"
                                ControlToValidate="tbStudentEmald" ErrorMessage="give valid email id" ForeColor="Red"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgStudentLogin"></asp:RegularExpressionValidator>--%>&nbsp;<asp:RequiredFieldValidator 
                                ID="rfvStudentUserName" SetFocusOnError="true" runat="server"
                                ControlToValidate="tbStudentUserName" ErrorMessage="UserName should be required"
                                ForeColor="red" ValidationGroup="vgStudent"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPassword1" runat="server" Text="Student Password  :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tbStudentPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvStudentPassword" SetFocusOnError="true" runat="server"
                                ControlToValidate="tbStudentPassword" ErrorMessage="Password should not be blank"
                                ForeColor="red" ValidationGroup="vgStudent"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style17">
                    <tr>
                        <td>
                            <asp:Button ID="btnStudentSubmit" runat="server" Style="margin-left: 65px" Text="Student Submit"
                                Width="156px" OnClick="btnStudentSubmit_Click" 
                                ValidationGroup="vgStudent" />
                        </td>
                        <td>
                            <asp:Button ID="btnStudentReset" runat="server" Style="margin-left: 107px" Text="StudentReset"
                                Width="124px" OnClick="btnStudentReset_Click" 
                                ValidationGroup="vgStudent" />
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style15">
                    <tr>
                        <td align="center">
                            <asp:HyperLink ID="hlStudentPassword" runat="server" ForeColor="Blue" Style="font-weight: 700"
                                NavigateUrl="~/ForgotPassword.aspx">Forgot Student Password ?</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
            <td>

                <table class="style15">
                <tr><td colspan="2">
                <asp:Label ID="lblInstituteMessage" runat="server" Text="Invalid username or password." ForeColor="Red" Font-Bold="true" Visible="false"></asp:Label>
                
                </td></tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblInstituteLogin" runat="server" Font-Bold="True" Font-Overline="False"
                                Font-Size="Large" Font-Underline="True" Text="INSTITUTE LOGIN"></asp:Label>
                        </td>
                        <td align="right">
                            <asp:HyperLink ID="hlInstituteRegistration" runat="server" ForeColor="Blue" Style="font-weight: 700"
                                NavigateUrl="~/institute/IRegistration.aspx">Institute Registration</asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style15">
                    <tr>
                        <td>
                            <asp:Label ID="lblUserEmailId0" runat="server" Text="User Name :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
                            <%--<asp:RegularExpressionValidator ID="revUserEmailId" Display="Dynamic" runat="server"
                                ControlToValidate="tbUserEmaild" ErrorMessage="give valid email id" ForeColor="Red"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgInstituteLogin"></asp:RegularExpressionValidator>--%>&nbsp;<asp:RequiredFieldValidator 
                                ID="rfvUserName" SetFocusOnError="true" runat="server"
                                ControlToValidate="tbUserName" ErrorMessage="UserName Should be Required"
                                ForeColor="red" ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPassword2" runat="server" Text="User Password  :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tbUserPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUserPassword" SetFocusOnError="true" runat="server"
                                ControlToValidate="tbUserPassword" ErrorMessage="Password should not be blank"
                                ForeColor="red" ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style17">
                    <tr>
                        <td>
                            <asp:Button ID="btnInstituteSubmit" runat="server" Style="margin-left: 61px" Text="InstituteSubmit"
                                Width="111px" OnClick="btnInstituteSubmit_Click" 
                                ValidationGroup="vgInstitute" />
                        </td>
                        <td>
                            <asp:Button ID="btnInstituteReset" runat="server" Style="margin-left: 61px" Text="InstituteReset"
                                Width="111px" OnClick="btnInstituteReset_Click" 
                                ValidationGroup="vgInstitute" />
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style15">
                    <tr>
                        <td align="center">
                            <asp:HyperLink ID="hlForgotPassword" runat="server" ForeColor="Blue" Style="font-weight: 700;
                                text-decoration: underline" NavigateUrl="~/ForgotPassword.aspx">Forgot User Password ?</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
