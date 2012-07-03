<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestViewState.aspx.cs" Inherits="TrainingCenters.training.TestViewState" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    username:<input type="text" id="txtUserName" runat="server" /><br />
    Paswor:<asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
    <asp:Button ID="btn" runat="server" Text="submit" onclick="btn_Click" />
    </div>
    </form>
</body>
</html>
