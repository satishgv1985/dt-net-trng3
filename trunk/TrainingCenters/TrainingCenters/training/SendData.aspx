<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendData.aspx.cs" Inherits="TrainingCenters.training.SendGetData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    Name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
    Roll no<asp:TextBox ID="txtRollNo" runat="server"></asp:TextBox><br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit(GET)" onclick="btnSubmit_Click" />
    <asp:Button ID="btnPostSubmit" runat="server" Text="Submit(POST)" PostBackUrl="~/training/PostRead.aspx" />    
    </div>
    </form>
</body>
</html>
