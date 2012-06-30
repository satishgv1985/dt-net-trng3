<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoursePopup.aspx.cs" Inherits="TrainingCenters.admin.CoursePopup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function funcClose() {
            window.opener.location.reload(true);
            this.close();

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Course Id: <asp:Label ID="lblCourseId" runat="server"></asp:Label><br />
    CourseName:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnSubmit" Text="Submit" runat="server" onclick="btnSubmit_Click" />
    <input type="button" value="Cancel" onclick="window.close()" />
    </div>
    </form>
</body>
</html>
