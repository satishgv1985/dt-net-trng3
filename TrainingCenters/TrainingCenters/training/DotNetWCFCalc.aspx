<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DotNetWCFCalc.aspx.cs"
    Inherits="TrainingCenters.training.DotNetWCFCalc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    A:    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
   +  B:   <asp:TextBox ID="TextBox2" runat="server">
        </asp:TextBox>
        
        <asp:Button ID="Button1" runat="server" Text="=" onclick="Button1_Click" /><br />
      answer:  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
