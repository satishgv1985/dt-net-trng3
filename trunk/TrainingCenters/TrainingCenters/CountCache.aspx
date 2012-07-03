<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CountCache.aspx.cs" Inherits="TrainingCenters.CountCache" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
    <td>
        <asp:Label ID="lbCount" runat="server" Text="No of Count increased by page views:"></asp:Label>    </td>
        <td></td>
        <td align="right">
        <asp:LinkButton ID="lnkLinkButton" runat="server" CommandName="Click" 
                onclick="lnkLinkButton_Click">Click Me</asp:LinkButton></td>
                <asp:Label ID="lblCount" runat="server"></asp:Label>
</tr>
    </table>   
    </div>
    </form>
</body>
</html>
