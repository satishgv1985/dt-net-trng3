<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true"
    CodeBehind="ContactUs.aspx.cs" Inherits="TrainingCenters.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <h3>
        Contact Information&Query Submission</h3>
    <h3>
        Training Center</h3>
    <p>
        Tulasi teater Road,<br />
        Marthalli,<br />
        Bangalore,<br />
        Karnataka</p>
    <h3>
        Office:95026726372</h3>
    <h3>
        For Enquery: info@Trainingcenter.com</h3>
    <h3>
        Please send your detailed query in below format, we would come back to you soon.</h3>
    <table>
        <tr>
            <td >
                <asp:Label ID="lbName" runat="server" Text="*Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbMobile" runat="server" Text="*Mobile"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbEmail" runat="server" Text="*Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbQuery" runat="server" Text="Message/Query"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtQuery" runat="server" Height="100" Width="300" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td>
            </td>
            <td align="right">
                <asp:Button ID="bttnCSubmit" runat="server" Text="Submit" />
            </td>
            <td align="center">
                <asp:Button ID="bttnCReset" runat="server" Text="Reset" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
