<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxTimer.aspx.cs" Inherits="TrainingCenters.training.AjaxTimer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
        </asp:Timer>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Image ID="imgDynamic" runat="server" ImageUrl="~/training/images/Image1.jpg"
                    Width="200" Height="200" />
            </ContentTemplate>
            <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
        <marquee>this is marquee</marquee>

    </div>
    </form>
</body>
</html>
