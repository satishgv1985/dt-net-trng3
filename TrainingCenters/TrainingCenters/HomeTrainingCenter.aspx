<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="HomeTrainingCenter.aspx.cs" Inherits="TrainingCenters.HomeTrainingCenter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <table class="style1" border="1">
        <tr>
            <td>
                <table class="style1" border="1">
                    <tr>
                        <td>
                            <table class="style1">
                                <tr>
                                    <td>
                                        <asp:HyperLink ID="hlHome" runat="server" Font-Bold="True" ForeColor="Red" 
                                            NavigateUrl="~/HomeTrainingCenter.aspx">Home</asp:HyperLink>
                                    </td>
                                    <td>
                                        <asp:HyperLink ID="hlAboutUs" runat="server" Font-Bold="True" ForeColor="Red">About Us</asp:HyperLink>
                                    </td>
                                    <td align="right">
                                        <asp:HyperLink ID="hlRegistration" runat="server" Font-Bold="True" 
                                            Font-Underline="True" ForeColor="Blue" NavigateUrl="~/RegistrationLink.aspx">Registration</asp:HyperLink>
                                    </td>
                                    <td align="right">
                                        <asp:HyperLink ID="hlLogIn" runat="server" Font-Bold="True" 
                                            Font-Underline="True" ForeColor="Blue" NavigateUrl="~/LoginPage.aspx">LogIn</asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="style1" border="1">
                                <tr>
                                    <td>
                                        <table class="style1" >
                                            <tr>
                                                <td align="center">
                                                    <asp:Label ID="lblCoursesOffering" runat="server" Font-Bold="True" 
                                                        Font-Size="Larger" Font-Underline="True" style="font-size: large" 
                                                        Text="CoursesOffering"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:HyperLink ID="hlJava" runat="server">JAVA</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:HyperLink ID="hlDotNet" runat="server">DotNet</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:HyperLink ID="hlOracle" runat="server">ORACLE</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:HyperLink ID="hlClanguage" runat="server">C Language</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:HyperLink ID="hlCpp" runat="server">C++</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:HyperLink ID="hlUnix" runat="server">UNIX</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:HyperLink ID="hlTesting" runat="server">TESTING</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:HyperLink ID="hlSap" runat="server">SAP</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:HyperLink ID="hlPhp" runat="server">PHP</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:HyperLink ID="hlSql" runat="server">SQL/PLSQL</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:HyperLink ID="hlDataWareHousing" runat="server">DATAWAREHOUSING</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:HyperLink ID="hlDba" runat="server">DBA</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:HyperLink ID="hlNetWorking" runat="server">NETWORKING</asp:HyperLink>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
&nbsp;&nbsp;&nbsp;
                                        <table class="style1">
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="archForInstitutes" runat="server" 
                                                        Text="Search For Institutes  :"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="tbInstituteSearch" runat="server" Width="233px"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                        <table class="style1">
                                            <tr>
                                                <td align="center" class="style2">
                                                    <asp:Button ID="InstituteSearch" runat="server" Text="InstituteSearch" 
                                                        onclick="InstituteSearch_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table class="style1">
                                            <tr>
                                                <td>
                                        <asp:Label ID="rtisements" runat="server" Font-Bold="True" Font-Size="Larger" 
                                            Font-Underline="True" Text="Advartisements"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="style1">
                                <tr>
                                    <td align="center">
                                        <asp:HyperLink ID="hlContactUs" runat="server" Font-Bold="True">Contact Us</asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
