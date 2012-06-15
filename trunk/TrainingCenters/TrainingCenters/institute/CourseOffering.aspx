<%@ Page Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="CourseOffering.aspx.cs"
    Inherits="TrainingCenters.institute.CourseOffering" %>
    <%@ Register Src="~/institute/InstituteCommon.ascx" TagName="Institute" TagPrefix="uc" %>
    <asp:Content ID="cpCO" ContentPlaceHolderID="cphHeader" runat="server" >
        <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 259px;
        }
        .style3
        {
            height: 30px;
        }
        .style4
        {
            width: 263px;
        }
    </style>
    </asp:Content>

   <asp:Content ID="cpCOBody" ContentPlaceHolderID="cphBody" runat="server">
       <div>

    <uc:Institute ID="ucInstitute" runat="server" />
        <table class="style1">
            <tr>
                <td align="center">
                    <asp:Label ID="lblCourseDetails" runat="server" Font-Bold="True" Font-Size="Large"
                        Font-Underline="True" Text="COURSE DETAILS"></asp:Label>
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <table class="style1">
            <tr>
                <td align="right">
                    <asp:Label ID="lblInstituteName" runat="server" Text="InstituteName  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbInstituteName" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvInstituteName" Display="Dynamic" runat="server"
                        ControlToValidate="tbInstituteName" ErrorMessage="Institute Name should be required"
                        SetFocusOnError="true" ForeColor="red" ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="lblCourseName" runat="server" Text="Couse Name  :"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="tbCourseName" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvCourseName" Display="Dynamic" runat="server"
                        ControlToValidate="tbCourseName" ErrorMessage="Name should be required" SetFocusOnError="true"
                       
                        ForeColor="red" ValidationGroup="vgCourseDetails"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="lblCourseDuration" runat="server" Text="Couse Duration  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbCourseDuration" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvCourseDuration" Display="Dynamic" runat="server"
                        ControlToValidate="tbCourseDuration" ErrorMessage="Course Duration should be required"
                        SetFocusOnError="true" ForeColor="red" ValidationGroup="vgCourseDetails"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="lblCourseTmings" runat="server" Text="Course Timings  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbCourseTimings" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvCourseTimngs" Display="Dynamic" runat="server"
                        ControlToValidate="tbCourseTimings" ErrorMessage="Course Timngs should be required"
                        SetFocusOnError="true" ForeColor="red" ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="lblCourseFee" runat="server" Text="Course Fee  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbCourseFee" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvCourseFee" Display="Dynamic" runat="server"
                        ControlToValidate="tbCourseFee" ErrorMessage="Fee details should be required"
                        SetFocusOnError="true" ForeColor="red" ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <table class="style1">
            <tr>
                <td align="right" class="style2">
                    <asp:Label ID="lblFacultyDetails" runat="server" Text="Faculty Details  :"></asp:Label>
                    &nbsp;
                </td>
                <td>
                    &nbsp;<asp:TextBox ID="tbFacultyDetails" runat="server" Style="margin-left: 5px"
                        TextMode="MultiLine"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rfvUserName3" Display="Dynamic" runat="server" ControlToValidate="tbFacultyDetails"
                        ErrorMessage="Faculty Details should be required" SetFocusOnError="true" ForeColor="red"
                        ValidationGroup="vgCourseDetails"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <table class="style1">
            <tr>
                <td align="right" class="style4">
                    <asp:Label ID="lblContactUs" runat="server" Text="Contact Us  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbContacUs" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revUserMobileNumber" Display="Dynamic" runat="server"
                        ControlToValidate="tbContacUs" ErrorMessage="Contact number should be 10 digits"
                        ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="vgInstitute"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
    </div>
    <p align="center">
        <asp:Button ID="btnSelectAnoyherCourse" runat="server" 
            Text="Select Another Course" ValidationGroup="vgCourseDetails" />
    </p>
   </asp:Content>
