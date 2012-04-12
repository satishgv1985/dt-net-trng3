<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/TCSite.Master" CodeBehind="LoginPage.aspx.cs" Inherits="TrainingCenters.LoginPage" %>

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
        }
       
        .style17
        {
            width: 100%;
        }
       
    </style>
    <title>LoginPage</title>
   </asp:Content>
   <asp:Content ID="cpLoginBody" ContentPlaceHolderID="cphBody" runat="server">
         <table class="style15" cellpadding="10px" border="5px" style="background:grey">
        <tr>
            <td>
                <table class="style15">
                    <tr>
                        <td align="right" class="style16">
                            <asp:Label ID="lblStudentLogin" runat="server" Font-Bold="True" 
                                Font-Overline="False" Font-Size="Large" Text="STUDENT LOGIN" 
                                style="text-decoration: underline"></asp:Label>
                        </td>
                        <td align="right">
            <asp:HyperLink ID="hlStudentRegistration" runat="server" ForeColor="Blue" 
                                style="font-weight: 700" NavigateUrl="~/StudentReg.aspx">Student Registration</asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style15">
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <table class="style15">
                    <tr>
                        <td>
                    <asp:Label ID="lblStudentEmailId" runat="server" Text="Student Email Id  :"></asp:Label>
                        </td>
                        <td>
                    <asp:TextBox ID="tbStudentEmald" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revStudentEmailId" Display="Dynamic" runat="server"
                        ControlToValidate="tbStudentEmald" ErrorMessage="give valid email id" ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                              
                                ValidationGroup="vgStudentLogin"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                    <asp:Label ID="lblPassword1" runat="server" Text="Student Password  :"></asp:Label>
                        </td>
                        <td>
                    <asp:TextBox ID="tbStudentPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvStudentPassword" SetFocusOnError="true" runat="server"
                        ControlToValidate="tbStudentPassword" ErrorMessage="Password should not be blank" ForeColor="red"
                        ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
                        
                        </td>
                    </tr>
                    </table>
                <br />
                <table class="style17">
                    <tr>
                        <td>
                    <asp:Button ID="btnStudentSubmit" runat="server" style="margin-left: 65px" 
                        Text="StudentSubmition" Width="156px" onclick="btnStudentSubmit_Click" 
                                ValidationGroup="vgStudentLogin" />
                        </td>
                        <td>
                    <asp:Button ID="btnStudentReset" runat="server" style="margin-left: 107px" 
                        Text="StudentReset" Width="124px" onclick="btnStudentReset_Click"
                       
                                ValidationGroup="InstituteLogin" />
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style15">
                    <tr>
                        <td align="center">
                    <asp:HyperLink ID="hlStudentPassword" runat="server" ForeColor="Blue" 
                        style="font-weight: 700" NavigateUrl="~/ForgotPassword.aspx">Forgot Student Password ?</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="style15">
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblInstituteLogin" runat="server" Font-Bold="True" 
                                Font-Overline="False" Font-Size="Large" Font-Underline="True" 
                                Text="INSTITUTE LOGIN"></asp:Label>
                        </td>
                        <td align="right">
            <asp:HyperLink ID="hlInstituteRegistration" runat="server" ForeColor="Blue" 
                                style="font-weight: 700" NavigateUrl="~/institute.aspx">Institute Registration</asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style15">
                    <tr>
                        <td>
                    <asp:Label ID="lblUserEmailId0" runat="server" Text="User Email Id  :"></asp:Label>
                        </td>
                        <td>
                    <asp:TextBox ID="tbUserEmaild" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revUserEmailId" Display="Dynamic" runat="server"
                        ControlToValidate="tbUserEmaild" ErrorMessage="give valid email id" ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                               
                                ValidationGroup="vgInstituteLogin"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                    <asp:Label ID="lblPassword2" runat="server" Text="User Password  :"></asp:Label>
                        </td>
                        <td>
                    <asp:TextBox ID="tbUserPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUserPassword0" SetFocusOnError="true" runat="server"
                        ControlToValidate="tbUserPassword" ErrorMessage="Password should not be blank" ForeColor="red"
                        ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    </table>
                <br />
                <table class="style17">
                    <tr>
                        <td>
                    <asp:Button ID="btnInstituteSubmit" runat="server" style="margin-left: 61px" 
                        Text="InstituteSubmit" Width="111px" PostBackUrl="~/InstituteWelcome.aspx" />
                        </td>
                        <td>
                    <asp:Button ID="btnInstituteReset" runat="server" style="margin-left: 61px" 
                        Text="InstituteReset" Width="111px" onclick="btnInstituteReset_Click" />
                        </td>
                    </tr>
                </table>
                <br />
                <table class="style15">
                    <tr>
                        <td align="center">
        <asp:HyperLink ID="hlForgotPassword" runat="server" ForeColor="Blue" 
            style="font-weight: 700; text-decoration: underline" NavigateUrl="~/ForgotPassword.aspx">Forgot User Password ?</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
        </asp:Content>
