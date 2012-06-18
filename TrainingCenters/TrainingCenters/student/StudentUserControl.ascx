<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentUserControl.ascx.cs" Inherits="TrainingCenters.student.StudentUserControl" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        height: 23px;
    }
</style>

<table class="style1">
    <tr>
        <td align="right">
                    <strong>
                    <asp:Label ID="lblStudentName" runat="server" Text="Enter Student Name  :" 
                        Font-Bold="True"></asp:Label>
                    </strong>
                </td>
        <td>
                    <strong>
                    <asp:TextBox ID="tbStudentName" runat="server"></asp:TextBox>
                   
                    &nbsp;&nbsp;
                   
                    <asp:RequiredFieldValidator ID="rfvStudentName" Display="Dynamic" 
                        runat="server" ControlToValidate="tbStudentName"
                        ErrorMessage="Name should be required" SetFocusOnError="true" ForeColor="red"
                        ValidationGroup="vgStudent"></asp:RequiredFieldValidator>
                    </strong>
                </td>
    </tr>
    <tr>
        <td align="right">
                    <strong>
                    <asp:Label ID="lblAge" runat="server" Text="Age  :"
                        Font-Bold="True"></asp:Label>
                    </strong>
                </td>
        <td>
                    <strong>
                    <asp:TextBox ID="tbAge" runat="server"></asp:TextBox>
                    &nbsp;
                    <asp:RangeValidator ID="rvAge" runat="server" Display="Dynamic" ControlToValidate="tbAge" 
                        ErrorMessage="Age should be between 15 to 30" ForeColor="Red" MaximumValue="30" 
                        MinimumValue="15"></asp:RangeValidator>
                    </strong>
                </td>
    </tr>
    <tr>
        <td  align="right">
                    <strong>
                    <asp:Label ID="lblGender" runat="server" Text="Gender  :"
                        Font-Bold="True"></asp:Label>
                    </strong>
                </td>
        <td>
                    <asp:RadioButtonList ID="rbtnGender" runat="server">
                        <asp:ListItem Value="Male">Male</asp:ListItem>
                        <asp:ListItem Value="Female">Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <strong>
                    <asp:RequiredFieldValidator ID="rfvGender" runat="server" Display="Dynamic"
                        ControlToValidate="rbtnGender" ErrorMessage="You should select male or female" 
                        ForeColor="Red" ValidationGroup="vgStudent"></asp:RequiredFieldValidator>
                </strong>
                </td>
    </tr>
    <tr>
        <td class="style2" align="right">
                    <strong>
                    <asp:Label ID="lblQualification" runat="server" Text="Qualiication  :"
                        Font-Bold="True"></asp:Label>
                    </strong>
                </td>
        <td class="style2">
                    <asp:TextBox ID="tbQualification" runat="server"></asp:TextBox>
                    <strong>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="rfvQualification" runat="server" Display="Dynamic" 
                        ControlToValidate="tbQualification" ErrorMessage="Select atleast one" 
                        ForeColor="Red" InitialValue="0" ValidationGroup="vgStudent"></asp:RequiredFieldValidator>
                    </strong>
                </td>
    </tr>
    <tr>
        <td class="style2" align="right">
                    <strong>
                    <asp:Label ID="lblState" runat="server" Text="State  :"
                        Font-Bold="True"></asp:Label>
                    </strong>
                </td>
        <td class="style2">
            <asp:DropDownList ID="ddlState" runat="server" DataValueField="StateId" 
                DataTextField="StateName" AutoPostBack="true" 
                onselectedindexchanged="ddlState_SelectedIndexChanged" Height="26px" 
                Width="130px">
            </asp:DropDownList>
        &nbsp;<asp:RequiredFieldValidator ID="rfvState" runat="server" Display="Dynamic"
                        ControlToValidate="ddlState" ErrorMessage="Select atleast one State" 
                        ForeColor="Red" InitialValue="0" ValidationGroup="vgStudent" 
                        style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
    </tr>
    <tr>
        <td  align="right">
                    <strong>
                    <asp:Label ID="lblCity" runat="server" Text="City  :"
                        Font-Bold="True"></asp:Label>
                    </strong>
                </td>
        <td>
                    &nbsp;<asp:DropDownList ID="ddlCity" runat="server" Height="16px" Width="131px"> 
                       
               
            </asp:DropDownList>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" Display="Dynamic"
                        ControlToValidate="ddlCity" ErrorMessage="Select atleast one City" 
                        ForeColor="Red" InitialValue="0" ValidationGroup="vgStudent" 
                        style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
    </tr>
    <tr>
        <td align="right">
                    <strong>
                    <asp:Label ID="lblArea" runat="server" Text="Area  :"
                        Font-Bold="True"></asp:Label>
                    </strong>
                </td>
        <td>
            <asp:TextBox ID="tbArea" runat="server"></asp:TextBox>
            <strong>&nbsp; <asp:RequiredFieldValidator ID="rfvArea" Display="Dynamic" 
                        runat="server" ControlToValidate="tbArea"
                        ErrorMessage="Area name should be required" SetFocusOnError="true" ForeColor="red"
                        ValidationGroup="vgStudent"></asp:RequiredFieldValidator>
                    </strong>
        </td>
    </tr>
    <tr>
        <td align="right">
                    <strong>
                    <asp:Label ID="lblMobileNo" runat="server" Text="MobileNo  :"
                        Font-Bold="True"></asp:Label>
                    </strong>
                </td>
        <td>
                    <asp:TextBox ID="tbMobileNumber" runat="server"></asp:TextBox>
                    &nbsp;<asp:RegularExpressionValidator ID="revMobileNumber" runat="server" ControlToValidate="tbMobileNumber"
                        ErrorMessage="Mobile number should be 10 digits" ForeColor="Red" ValidationExpression="\d{10}"
                        ValidationGroup="vgInstitute" style="font-weight: 700"></asp:RegularExpressionValidator>
                </td>
    </tr>
    <tr>
        <td align="right">
                    <strong>
                    <asp:Label ID="lblEmailID" runat="server" Text="EmailID  :"
                        Font-Bold="True"></asp:Label>
                    </strong>
                </td>
        <td>
                    <asp:TextBox ID="tbEmailId" runat="server"></asp:TextBox>
                    &nbsp;<asp:RegularExpressionValidator ID="revEmailId" Display="Dynamic" 
                        runat="server" ControlToValidate="tbEmailId"
                        ErrorMessage="give valid email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ValidationGroup="vgStudent" style="font-weight: 700"></asp:RegularExpressionValidator>
                </td>
    </tr>
</table>

