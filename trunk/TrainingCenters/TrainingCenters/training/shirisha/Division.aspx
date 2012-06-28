<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Division.aspx.cs" Inherits="TrainingCenters.training.shirisha.Division1" %>

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
                    <asp:Label ID="Label1" runat="server" Text="a"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Textbox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="b"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Textbox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr><td><asp:Label ID="lblAns" runat="server"></asp:Label></td></tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
