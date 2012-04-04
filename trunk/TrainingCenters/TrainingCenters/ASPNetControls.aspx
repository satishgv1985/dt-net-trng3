<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ASPNetControls.aspx.cs"
    Inherits="TrainingCenters.ASPNetControls" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Courses:
        <asp:DropDownList ID="ddlCourses" runat="server" AutoPostBack="true" 
            onselectedindexchanged="ddlCourses_SelectedIndexChanged">
            <asp:ListItem Text="--Select Course--" Value="0">
            </asp:ListItem>
            <asp:ListItem Text="Intermediate" Value="1"></asp:ListItem>
            <asp:ListItem Text="B.Tech" Value="2"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCourses" Display="Dynamic" runat="server" ForeColor="Red" ErrorMessage="* Please Select Course" ControlToValidate="ddlCourses" InitialValue="0"></asp:RequiredFieldValidator>
        <br />
        Subjects:
        <asp:DropDownList ID="ddlSubjects" runat="server">
        <asp:ListItem Text="--Select Course First--" Value="0"></asp:ListItem>
        </asp:DropDownList>

        <br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    </div> 
    </form>
</body>
</html>
