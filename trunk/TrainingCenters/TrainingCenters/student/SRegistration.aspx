<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true"
    CodeBehind="SRegistration.aspx.cs" Inherits="TrainingCenters.student.StudentReg" %>

<%@ Register Src="~/student/StudentUserControl.ascx" TagName="studentReg" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Student Registration Form</title>
    <script type="text/javascript">
        //  function funcCheckCourses() {
        //    return true;
        //}
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
        .style4
        {
            width: 276px;
        }
        .style5
        {
            width: 303px;
        }
        .style10
        {
            width: 365px;
            height: 30px;
        }
        .style11
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div>
        <center>
            <h3 style="text-decoration: underline">
                Student Registration</h3>
        </center>
        <asp:Label ID="lblMessage" runat="server" Visible="false"></asp:Label>
        <uc:studentReg ID="ucStudentReg" runat="server"></uc:studentReg>
        <table class="style1">
            <tr>
                <td align="right">
                    <asp:Label ID="lblUserName" runat="server" Text="User Name  :" Style="font-weight: 700"></asp:Label>
                </td>
                <td>
                  <%--  <asp:UpdatePanel ID="upUserName" runat="server">
                        <ContentTemplate>--%>
                            <asp:TextBox ID="tbUserName" runat="server" OnTextChanged="tbUserName_TextChanged"
                                AutoPostBack="True"></asp:TextBox>
                            &nbsp;<strong><asp:RequiredFieldValidator ID="rfvUserName" Display="Dynamic" runat="server"
                                ControlToValidate="tbUserName" ErrorMessage="User Name should be required" SetFocusOnError="true"
                                ForeColor="red" ValidationGroup="vgStudent"></asp:RequiredFieldValidator>
                            </strong>
                            <asp:Label ID="lblUserNameMessage" ForeColor="Red" runat="server" Visible="false"></asp:Label>
                       <%-- </ContentTemplate>
                    </asp:UpdatePanel>--%>
                </td>
            </tr>
            <tr>
                <td class="style10" align="right">
                    <strong>
                        <asp:Label ID="lblPassword" runat="server" Text="Password  :" Font-Bold="True"></asp:Label>
                    </strong>
                </td>
                <td align="left" class="style11">
                    <strong>
                        <asp:TextBox ID="tbPassword" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" Display="Dynamic" SetFocusOnError="true"
                            runat="server" ControlToValidate="tbPassword" ErrorMessage="password should not be blank"
                            ForeColor="red" ValidationGroup="vgStudent"></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    <strong>
                        <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password  :" Font-Bold="True"></asp:Label>
                    </strong>
                </td>
                <td align="left">
                    <strong>
                        <asp:TextBox ID="tbConfirmPassword" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvConfirmPassword" Display="Dynamic" runat="server"
                            ControlToValidate="tbConfirmPassword" ErrorMessage="Password should not be blank"
                            ForeColor="red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvPassword" Display="Dynamic" runat="server" ControlToCompare="tbPassword"
                            ControlToValidate="tbConfirmPassword" ErrorMessage="Both Passwords should be same"
                            ForeColor="red" ValidationGroup="vgStudent"></asp:CompareValidator>
                    </strong>
                </td>
            </tr>
        </table>
        <br />
        <table class="style1">
            <tr>
                <td align="center">
                    <asp:Button ID="btnStudentSubmitForm" runat="server" Text="SubmitStudentForm" ValidationGroup="vgStudent"
                        OnClick="btnStudentSubmitForm_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
