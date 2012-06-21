<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/TCSite.Master" CodeBehind="ForgotPassword.aspx.cs" Inherits="TrainingCenters.ForgotPassword" %>
<asp:Content ID="Conntent1" ContentPlaceHolderID="cphHeader" runat="server">



    <title>Forgot Password</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 543px;
        }
        .style10
        {
            width: 323px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">

    <table class="style1">
        <tr>
            <td align="center">
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                    Font-Underline="True" Text="FORGOT STUDENT PASSWORD"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <table class="style1">
        <tr>
            <td align="right" class="style10">
                <asp:Label ID="lblUserEmailId" runat="server" Text="User Emaild  :"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="tbUserEmaild" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revUserEmailId" Display="Dynamic" runat="server"
                        ControlToValidate="tbUserEmaild" ErrorMessage="give valid email id" ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="vgInstitute"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                <asp:Label ID="lblUserMobileNumber" runat="server" Text="User Moble Number  :"></asp:Label>
            </td>
            <td>
                    <asp:TextBox ID="tbUserMobileNumber" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revUserMobileNumber" Display="Dynamic" runat="server"
                        ControlToValidate="tbUserMobileNumber" ErrorMessage="Mobile number should be 10 digits"
                        ForeColor="Red" ValidationExpression="\d{10}" 
                    ValidationGroup="vgInstitute"></asp:RegularExpressionValidator>
                </td>
        </tr>
    </table>
    <div align="center">
    
        &nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="dsGetStudentPassword" Width="302px">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="dsGetStudentPassword" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TCdbConnectionString %>" 
            SelectCommand="spGetStudentPassword" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="tbUserMobileNumber" Name="MobileNO" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="tbUserEmaild" Name="EmailID" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <br />
        <br />
        <table class="style1">
            <tr>
                <td align="center">
                    <asp:Button ID="btnSubmitUserDetals" runat="server" Text="SubmitUserDetails" 
                        onclick="btnSubmitUserDetals_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </asp:Content>

