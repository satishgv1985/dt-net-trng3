<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblResp" runat="server"></asp:Label>
        <br />
        Add:<asp:TextBox ID="txtAdd" runat="server"></asp:TextBox>
        +
        <asp:TextBox ID="txtAdd2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <br />
        <asp:Label ID="lblRes" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="sub"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="-"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="submit" />
        <br />
        <br />
        <asp:Label ID="sult" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" 
            style="font-weight: 700; font-size: large" 
            Text="Find Square Root Of Given Number"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" style="font-weight: 700" 
            Text="Enter Number  :"></asp:Label>
        <asp:TextBox ID="tbNumber" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSqrt" runat="server" onclick="btnSqrt_Click" 
            Text="Find Sqrt" />
        <br />
        <br />
        <asp:Label ID="lblSqrt" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
