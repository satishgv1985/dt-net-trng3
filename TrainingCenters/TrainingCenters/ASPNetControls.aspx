<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ASPNetControls.aspx.cs"
    Inherits="TrainingCenters.ASPNetControls" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function funcCheckUserNameLength(source, arguments) {            
            arguments.IsValid = true;
            var un = document.getElementById('tbUserName').value;
            if (un.length < 8 || un.length > 15)
                arguments.IsValid = false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="lblError" runat="server"></asp:Label>
    <br />
    <br />
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

Username:         <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
                    
                    <asp:CustomValidator ID="cvUserName" runat="server" ControlToValidate="tbUserName"
                        ErrorMessage="UserName should be 8-15characters" ForeColor="Red" 
                         
            ValidateEmptyText="true" onservervalidate="cvUserName_ServerValidate"></asp:CustomValidator>
                         <br />


        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CausesValidation="true" 
            onclick="btnSubmit_Click" />
    </div> 
    </form>
</body>
</html>
