<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="InstituteUserControl.ascx.cs"
    Inherits="TrainingCenters.institute.InstituteUserControl" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        height: 23px;
    }
    .style3
    {
        height: 26px;
    }
</style>
<p>
    &nbsp;</p>
<table class="style1">
    <tr>
        <td align="right">
            <asp:Label ID="lblInstituteName" runat="server" Text="Enter Institute Name  :" Font-Bold="True"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tbInstituteName" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfvInstituteName" Display="Dynamic" runat="server"
                ControlToValidate="tbInstituteName" ErrorMessage="Institute Name should be required"
                SetFocusOnError="true" ForeColor="red" ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style13" align="right">
            <asp:Label ID="lblDateOfEstablishment" runat="server" Text="Date Of Establishment  :"
                Font-Bold="True"></asp:Label>
        </td>
        <td align="left">
            <asp:Calendar ID="cDateOfEstablishment" runat="server"></asp:Calendar>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="Label1" runat="server" Text="Courses Offered  :" Font-Bold="True"></asp:Label>
        </td>
        <td>
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
    <tr>
        <td align="right">
            <asp:Label ID="lblInstituteAddress" runat="server" Style="font-weight: 700; text-decoration: underline;"
                Text="Institute Address  :"></asp:Label>
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="lblDoorNumber" runat="server" Style="font-weight: 700" Text="Door Number  :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tbDoorNumber" runat="server"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="rfvDoorNumber" runat="server" ControlToValidate="tbDoorNumber"
                ErrorMessage="Door number should be required" ForeColor="Red" ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="lblArea" runat="server" Style="font-weight: 700" Text="Area  :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tbArea" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfvArea" runat="server" ControlToValidate="tbArea"
                ErrorMessage="Area should be required" ForeColor="Red" ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style3">
            <asp:Label ID="lblState" runat="server" Style="font-weight: 700" 
                Text="State  :"></asp:Label>
        </td>
        <td class="style3">
            <asp:DropDownList ID="ddlState" runat="server" DataValueField="StateId" 
                DataTextField="StateName" AutoPostBack="true" 
                onselectedindexchanged="ddlState_SelectedIndexChanged" Height="26px" 
                Width="130px">
            </asp:DropDownList>
        &nbsp;<asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="ddlState"
                ErrorMessage="State should be required" ForeColor="Red" 
                ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style2">
            <asp:Label ID="lblCity" runat="server" Style="font-weight: 700" Text="City  :"></asp:Label>
        </td>
        <td class="style2">
            <asp:DropDownList ID="ddlCity" runat="server" Height="16px" Width="128px">
               
            </asp:DropDownList>
            &nbsp;<%--<asp:TextBox ID="tbCity" runat="server"></asp:TextBox>
            
            &nbsp;
            <asp:RequiredFieldValidator ID="rfvCity" runat="server" 
                ControlToValidate="tbCity" ErrorMessage="City should be required" 
                ForeColor="Red" ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>--%><asp:RequiredFieldValidator 
                ID="rfvCity" runat="server" ControlToValidate="ddlCity"
                ErrorMessage="City should be required" ForeColor="Red" 
                ValidationGroup="vgInstitute"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="lblMobileNumber" runat="server" Style="font-weight: 700" Text="Mobile Number  :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tbMobileNumber" runat="server"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="revMobileNumber" Display="Dynamic" runat="server"
                ControlToValidate="tbMobileNumber" ErrorMessage="Mobile number should be 10 digits"
                ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="vgInstitute"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="lblEmailId" runat="server" Style="font-weight: 700" Text="Email ID  :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tbEmailId" runat="server"> 
            </asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="revEmailId" Display="Dynamic" runat="server"
                ControlToValidate="tbEmailId" ErrorMessage="give valid email id" ForeColor="Red"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgInstitute"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
    <td align="right">
                <asp:Label ID="lblWebSite" runat="server" Style="font-weight: 700" Text="Web Site :"></asp:Label>

    </td>
    <td>
        <asp:TextBox ID="tbWebSite" runat="server"></asp:TextBox>
&nbsp;</td></tr>
    <tr>
        <td align="right">
            <asp:Label ID="lblPincodeNumber" runat="server" Style="font-weight: 700" Text="Pincode Number  :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tbPincodeNumber" runat="server"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="revPincodeNumber" Display="Dynamic" runat="server"
                ControlToValidate="tbPincodeNumber" ErrorMessage="Give valid pincode number"
                ForeColor="Red" ValidationExpression="\d{5}" ValidationGroup="vgInstitute"></asp:RegularExpressionValidator>
        </td>
    </tr>
</table>
