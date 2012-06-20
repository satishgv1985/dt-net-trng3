<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="AddUpdateCourse.aspx.cs" Inherits="TrainingCenters.admin.AddUpdateCourse" %>
<asp:Content ID="conCourseHead" ContentPlaceHolderID="cphHeader" runat="server">
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
<asp:Content ID="conCoBody" ContentPlaceHolderID="cphBody" runat="server">
   <table class="style1">
            <tr>
                <td align="center">
                    <asp:Label ID="lblAPCourse" runat="server" Font-Bold="True" Font-Size="Large"
                        Font-Underline="True" Text="ADD/UPDATE COURSE"></asp:Label>
                    <br />
                </td>
            </tr>

             <tr>
            <td align="left">
                <asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
        <br />
        <table class="style1">
            <tr>
                <td align="right">
                    <asp:Label ID="lblCourseName" runat="server" Text="Course Name  :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbCourseName" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server"
                        ControlToValidate="tbCourseName" ErrorMessage="Course Name should be required"
                        SetFocusOnError="true" ForeColor="red" ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Couse Short Name :"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="tbCSName" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rqvCSName" Display="Dynamic" runat="server"
                        ControlToValidate="tbCSName" ErrorMessage="Short Name is mandatory" SetFocusOnError="true"
                       
                        ForeColor="red" ValidationGroup="vgCourseDetails"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label4" runat="server" Text="Parent Course  :"></asp:Label>
                </td>
                <td>
                   <asp:DropDownList ID="ddlParentCourse" runat="server" >
                   
                   </asp:DropDownList>
                </td>
            </tr>
            <tr>
            <td align="center">
           
        <table >
        <tr>
            <td >
                    <asp:Button ID="btnSaveCourse" runat="server" Text="Add/Update" ValidationGroup="vgInstitute"
                         CausesValidation="true" onclick="btnSaveCourse_Click"   />
                </td>
                <td>
                    <asp:Button ID="btnCancelCourse" runat="server" Text="Cancel" ValidationGroup="vgInstitute"
                         CausesValidation="true"   />
                </td>
        </tr>
        </table>
        </td>
            </tr>
    </table>
</asp:Content>







