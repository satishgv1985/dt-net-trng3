<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Technique_ViewState.aspx.cs" Inherits="TrainingCenters.Technique_ViewState" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Name: <asp:TextBox id="txtName" runat="server"></asp:TextBox>
    <br />
    Age:<asp:TextBox id="txtAge" runat="server"></asp:TextBox>
    <br />

    RollNo: <asp:Label ID="lblRollNo" runat="server"></asp:Label>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />
    </div>
    </form>
</body>
</html>
