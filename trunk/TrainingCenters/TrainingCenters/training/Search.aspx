<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="TrainingCenters.training.Search" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        Enter InstituteName:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:AutoCompleteExtender ID="aceInstitutes" TargetControlID="txtName"
        ServicePath="~/training/Institutes.asmx"  MinimumPrefixLength="1" CompletionSetCount="5" ServiceMethod="GetInstitutes"
         runat="server">
        </asp:AutoCompleteExtender>
    </div>
    </form>
</body>
</html>
