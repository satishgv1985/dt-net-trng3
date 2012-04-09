<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="StudentReg.aspx.cs" Inherits="TrainingCenters.StudentReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
 <title>Student Registration Form</title>
<script type="text/javascript">
    function funcCheckCourses() {
        return true;
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
            width: 406px;
        }
        .style4
        {
            width: 276px;
        }
        .style5
        {
            width: 303px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
  <div>
        <center>
            <h1 style="text-decoration: underline">
                Student Registration</h1>
        </center>
        <table class="style1">
            <tr>
                <td class="style2" align="right">
                    <asp:Label ID="lblUserName" runat="server" Text="Enter User Name  :" Font-Bold="True"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="rfvUserName" Display="Dynamic" runat="server" ControlToValidate="tbUserName"
                        ErrorMessage="Name should be required" SetFocusOnError="true" ForeColor="red"
                        ValidationGroup="vgStudent"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    <asp:Label ID="lblPassword" runat="server" Text="Password  :" Font-Bold="True"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="tbPassword" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" Display="Dynamic" SetFocusOnError="true" runat="server"
                        ControlToValidate="tbPassword" ErrorMessage="password should not be blank" ForeColor="red"
                        ValidationGroup="vgStudent"></asp:RequiredFieldValidator>
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
                        ForeColor="red" ValidationGroup="vgStudent"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    <asp:Label ID="lblAge" runat="server" Text="Age  :"
                        Font-Bold="True"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="tbAge" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="rvAge" runat="server" Display="Dynamic" ControlToValidate="tbAge" 
                        ErrorMessage="Age should be between 15 to 30" ForeColor="Red" MaximumValue="30" 
                        MinimumValue="15"></asp:RangeValidator>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td align="right" class="style4">
                   
                    <asp:Label ID="lblGender" runat="server" Text="Gender  :" 
                        style="font-weight: 700"></asp:Label>
                </td>
                <td align="left" class="style3">
                    <asp:RadioButtonList ID="rbtnGender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvGender" runat="server" Display="Dynamic"
                        ControlToValidate="rbtnGender" ErrorMessage="You should select male or female" 
                        ForeColor="Red" ValidationGroup="vgStudent"></asp:RequiredFieldValidator>
&nbsp;
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td align="right" class="style4">
                    <asp:Label ID="lblQualification" runat="server" style="font-weight: 700" 
                        Text="Qualification  :"></asp:Label>
                </td>
                <td align="left">
                    <asp:DropDownList ID="ddlQualification" runat="server" >
                        <asp:ListItem Value="0">---Select Qualification---</asp:ListItem>
                        <asp:ListItem Value="1">Intermediate</asp:ListItem>
                        <asp:ListItem Value="2">Degree</asp:ListItem>
                        <asp:ListItem Value="3">Btech</asp:ListItem>
                        <asp:ListItem Value="4">MSC</asp:ListItem>
                        <asp:ListItem Value="5">MCA</asp:ListItem>
                        <asp:ListItem Value="6">MBA</asp:ListItem>
                        <asp:ListItem Value="7">Mtech</asp:ListItem>
                        <asp:ListItem Value="8">Phd</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvQualification" runat="server" Display="Dynamic" 
                        ControlToValidate="ddlQualification" ErrorMessage="Select atleast one" 
                        ForeColor="Red" InitialValue="1" ValidationGroup="vgStudent"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style4">
                    <asp:Label ID="lblState" runat="server" style="font-weight: 700" 
                        Text="State  :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlState" runat="server" 
                        onselectedindexchanged="ddlState_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem Value="0">---Select Your State---</asp:ListItem>
                        <asp:ListItem Value="1">Andhra Pradesh</asp:ListItem>
                        <asp:ListItem Value="2">Karnataka</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" Display="Dynamic"
                        ControlToValidate="ddlState" ErrorMessage="Select atleast one State" 
                        ForeColor="Red" InitialValue="1" ValidationGroup="vgStudent"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style4">
                    <asp:Label ID="lblCity" runat="server" style="font-weight: 700" Text="City  :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCity" runat="server"  Width="154px">
                        <asp:ListItem Value="0">---Select Your City---</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" Display="Dynamic"
                        ControlToValidate="ddlCity" ErrorMessage="Select atleast one City" 
                        ForeColor="Red" InitialValue="1" ValidationGroup="vgStudent"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <table class="style1">
            <tr>
                <td align="right" class="style5">
                    <asp:Label ID="lblMobileNumber" runat="server" Style="font-weight: 700" Text="Mobile Number  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbMobileNumber" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revMobileNumber" runat="server" ControlToValidate="tbMobileNumber"
                        ErrorMessage="Mobile number should be 10 digits" ForeColor="Red" ValidationExpression="\d{10}"
                        ValidationGroup="vgInstitute"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style5">
                    <asp:Label ID="lblEmailId" runat="server" Style="font-weight: 700" Text="Email ID  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbEmailId" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revEmailId" Display="Dynamic" runat="server" ControlToValidate="tbEmailId"
                        ErrorMessage="give valid email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ValidationGroup="vgStudent"></asp:RegularExpressionValidator>
                </td>
            </tr>
            </table>
        <br />
        <asp:ValidationSummary ID="vsStudent" runat="server" ForeColor="Red" ValidationGroup="vgInstitute"
            HeaderText="Errors occured" ShowMessageBox="false" />
        <table class="style1">
            <tr>
                <td align="center">
                    <asp:Button ID="btnStudentSubmitForm" runat="server" Text="SubmitStudentForm" 
                        ValidationGroup="vgStudent"  />
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
