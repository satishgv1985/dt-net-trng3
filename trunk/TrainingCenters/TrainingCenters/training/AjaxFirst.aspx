<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxFirst.aspx.cs" Inherits="TrainingCenters.training.AjaxFirst" %>

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
        <marquee>This is news message.</marquee>
        <br />
        PageLoad:
        <asp:Label ID="lblDate" runat="server"></asp:Label>
        <br />
        Button click time:<asp:Label ID="lblButtonClick" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <marquee>This is inside update panell</marquee>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
        <br />
        after after
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="submit" OnClick="btnSubmit_Click" />
    </div>
    </form>
</body>
</html>
