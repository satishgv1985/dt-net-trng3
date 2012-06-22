<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxCalenderExtender.aspx.cs" Inherits="TrainingCenters.training.anupam.AjaxCalenderExtender" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager ID="exender" runat="server"></asp:ScriptManager>
    Select Date:<asp:TextBox ID="txtCalender" runat="server"></asp:TextBox>
        <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtCalender" PopupButtonID="ImageButton1" runat="server">
        </asp:CalendarExtender>
    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
            ImageUrl="~/training/anupam/loading.gif" Width="20px" />
    </div>
    </form>
</body>
</html>
