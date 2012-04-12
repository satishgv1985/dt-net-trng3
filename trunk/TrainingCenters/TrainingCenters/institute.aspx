<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/TCSite.Master" CodeBehind="institute.aspx.cs"
    Inherits="TrainingCenters.institute" %>
<%@ Register Src="~/InstituteUserControl.ascx" TagName="instituteReg" TagPrefix="uc"  %>
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
            width: 501px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">

<uc:instituteReg id="ucInstituteReg" runat="server"></uc:instituteReg>
    <div>
        <center>
            <h3 style="text-decoration: underline">
                Institute Registration Form</h3>
        </center>
       
        
        <table class="style1">
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
                <td class="style13" align="right">
                    <asp:Label ID="lblDateOfEstablishment" runat="server" Text="Date Of Establishment  :"
                        Font-Bold="True"></asp:Label>
                </td>
                <td align="left">
                    <asp:Calendar ID="cDateOfEstablishment" runat="server"></asp:Calendar>
                </td>
            </tr>
            </table>
             
            <table width="100%"><tr><td>
                <table class="style1">
                    <tr>
                        <td align="center">
                    <asp:Button ID="btnSubmitForm" runat="server" Text="SubmitForm" ValidationGroup="vgInstitute"
                        OnClick="btninstsubmit_Click" CausesValidation="true" Style="font-weight: 700;
                        margin-left: 0px" Width="219px" />
                        </td>
                    </tr>
                </table>
                </td></tr>
        
        </table>

       
    </div>
    
</asp:Content>
