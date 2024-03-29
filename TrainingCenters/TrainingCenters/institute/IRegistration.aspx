﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/TCSite.Master" CodeBehind="IRegistration.aspx.cs"
    Inherits="TrainingCenters.institute.IRegistration"  MaintainScrollPositionOnPostback="true" %>
<%@ Register Src="~/institute/InstituteUserControl.ascx" TagName="instituteReg" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <title>institute Registration Form</title>
    <script type="text/javascript">
        //function funcCheckCourses() {
        //   return true;
        //}

        //function funcCheckUserNameLength(source, arguments) {
        //  arguments.IsValid = true;
        //var un = document.getElementById('tbUserName').value;
        // if (un.length < 8 || un.length > 15)
        //   arguments.IsValid = false;
        //}
    </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style8
        {
            width: 501px;
        }
        .style11
        {
            width: 386px;
            height: 49px;
        }
        .style12
        {
            height: 49px;
        }
        .style13
        {
            width: 475px;
        }
        .style14
        {
            width: 386px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <center>
        <h3 style="text-decoration: underline">
            Institute Registration Form</h3>
    </center>
    <asp:Label ID="lblMessage" runat="server" Visible="false"></asp:Label>
    <uc:instituteReg ID="ucInstituteReg" runat="server"></uc:instituteReg>
    <div>
        <table class="style1">
            <tr>
                <td align="right" class="style14">
                    <asp:Label ID="lblUserName" runat="server" Text="Enter User Name  :" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="tbUserName" runat="server" OnTextChanged="tbUserName_TextChanged"
                                AutoPostBack="true">
                            </asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="rfvUserName" Display="Dynamic" runat="server"
                                ControlToValidate="tbUserName" ErrorMessage="Name should be required" SetFocusOnError="true"
                                ForeColor="red" ValidationGroup="vgInstitute">
                            </asp:RequiredFieldValidator>
                            <asp:Label ID="lblUserNameMessage" runat="server" Visible="false"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="style11" align="right">
                    <asp:Label ID="lblPassword" runat="server" Text="Password  :" Font-Bold="True"></asp:Label>
                </td>
                <td align="left" class="style12">
                    <asp:TextBox ID="tbPassword" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" SetFocusOnError="true" runat="server"
                        ControlToValidate="tbPassword" ErrorMessage="Password should not be blank" ForeColor="red"
                        ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style14" align="right">
                    <strong>Confirm Password : </strong>
                </td>
                <td align="left">
                    <asp:TextBox ID="tbConfirmPassword" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" Display="Dynamic" runat="server"
                        ControlToValidate="tbConfirmPassword" ErrorMessage="Password should not be blank"
                        ForeColor="red" ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvPassword" Display="Dynamic" runat="server" ControlToCompare="tbPassword"
                        ControlToValidate="tbConfirmPassword" ErrorMessage="Both Passwords should be same"
                        ForeColor="red" ValidationGroup="vgInstitute"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="btnSubmitForm" runat="server" Text="SubmitForm" ValidationGroup="vgInstitute"
                        OnClick="btninstsubmit_Click" CausesValidation="true" Style="font-weight: 700;
                        margin-left: 0px" Width="219px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
