<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReadQueryStrings.aspx.cs" Inherits="TrainingCenters.ReadQueryStrings" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="lblName" runat="server"></asp:Label>
    <br />
    <asp:Label ID="lblRollNo" runat="server"></asp:Label>
    <br />
    <table id="tblTest" runat="server">
    <tr>
    <td>dddd</td>
    </tr>
    </table>
    <asp:Table ID="tblStudent" runat="server">
    <asp:TableRow>
    <asp:TableCell>sudent form</asp:TableCell>
    </asp:TableRow>
    </asp:Table>

    <asp:Table ID="tblInstitute" runat="server">
    <asp:TableRow>
    <asp:TableCell>Institute form</asp:TableCell>
    </asp:TableRow>
    </asp:Table>

    </div>
    </form>
</body>
</html>
