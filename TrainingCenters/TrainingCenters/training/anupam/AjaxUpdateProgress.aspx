<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxUpdateProgress.aspx.cs" Inherits="TrainingCenters.training.anupam.AjaxUpdateProgress" %>

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
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <asp:Button ID="mybutton" runat="server" Text="loadpage" OnClick="ShowProgress" />
        </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" 
            AssociatedUpdatePanelID="UpdatePanel1" DisplayAfter="0">
        <ProgressTemplate>
        The page is being loaded.....<asp:Image ID="Image1" ImageUrl="~/training/anupam/loading.gif" runat="server" />
        </ProgressTemplate>
        </asp:UpdateProgress>
        

         
       
    </div>
    </form>
</body>
</html>
