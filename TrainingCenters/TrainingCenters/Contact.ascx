<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Contact.ascx.cs" Inherits="TrainingCenters.Contact" %>
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
                <asp:TextBox ID="txtMessage" runat="server" Height="100" Width="300" TextMode="MultiLine"></asp:TextBox>
                <asp:Label ID="lblUserNameMessage" runat="server" Visible="false"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td>
            </td>
            <td align="right">
                <asp:Button ID="bttnCSubmit" runat="server" Text="Submit" 
                    onclick="bttnCSubmit_Click" />
            </td>
            <td align="center">
                <asp:Button ID="bttnCReset" runat="server" Text="Reset" />
            </td>
        </tr>
    </table>