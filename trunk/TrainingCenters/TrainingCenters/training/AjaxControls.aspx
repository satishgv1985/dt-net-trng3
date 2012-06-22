<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxControls.aspx.cs" Inherits="TrainingCenters.training.AjaxControls" %>

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
        Date:
        <asp:TextBox ID="txtCalendar" runat="server"></asp:TextBox><asp:Button ID="btnCalendar" Text="Cal" runat="server" />
        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtCalendar" PopupButtonID="btnCalendar">
        </asp:CalendarExtender>
        <br />
        Only numbers: <asp:TextBox ID="tbNumbers" runat="server"></asp:TextBox>
        <asp:FilteredTextBoxExtender ID="ftbeNumbers" runat="server" FilterType="LowercaseLetters" TargetControlID="tbNumbers"></asp:FilteredTextBoxExtender>
      <br />
      
        <asp:TextBox ID="tbChange" runat="server" onkeydown="javascript:alert('hi')" ></asp:TextBox>
    </div>
    </form>
</body>
</html>
