<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestQueryStrings.aspx.cs" Inherits="TrainingCenters.RequestQueryStrings" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <br />
    Roll No: <asp:TextBox ID="txtRollNo" runat="server"></asp:TextBox>
    <br />
    <asp:HiddenField ID="hdnPageID" runat="server" Value="900" />

    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit(GET)" onclick="btnSubmit_Click" />
    &nbsp;&nbsp;<asp:Button ID="btnSubmitPost" runat="server" Text="Submit(POST)" PostBackUrl="~/ReadPostData.aspx" />

    </div>
    </form>
</body>
</html>
