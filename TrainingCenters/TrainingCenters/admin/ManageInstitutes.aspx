﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageInstitutes.aspx.cs"
    Inherits="TrainingCenters.admin.ManageInstitutes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <asp:GridView ID="gvInstitutes" runat="server" AutoGenerateColumns="False" DataKeyNames="InstituteID"
            DataSourceID="sdsInstitutes" CellPadding="4" ForeColor="#333333" GridLines="None"
            AutoGenerateSelectButton="True" AllowPaging="true" PageSize="3" AllowSorting="true"
            AutoGenerateDeleteButton="True" OnPageIndexChanged="gvInstitutes_PageIndexChanged"
            OnRowDataBound="gvInstitutes_RowDataBound" OnSelectedIndexChanged="gvInstitutes_SelectedIndexChanged">
            <EditRowStyle BackColor="#999999" />
            <EmptyDataTemplate>
                No Records Present</EmptyDataTemplate>
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="InstituteName" HeaderText="InstituteName" SortExpression="InstituteName" />
                <asp:BoundField DataField="InstituteID" HeaderText="InstituteID" InsertVisible="False"
                    ReadOnly="True" SortExpression="InstituteID" />
                <asp:BoundField DataField="YearOfEstablishment" HeaderText="YearOfEstablishment"
                    SortExpression="YearOfEstablishment" />
                <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                <asp:BoundField DataField="ContactNo" HeaderText="Contact No" SortExpression="ContactNo" />
                <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
             

                <asp:TemplateField>
                <ItemTemplate>
                <%# Eval("CityName") %>
                </ItemTemplate>
                <EditItemTemplate>
               
               <asp:DropDownList ID="ddlCity" runat="server" DataSourceID="sdsCity" 
        DataTextField="CityName" DataValueField="CityID"></asp:DropDownList>

    <asp:SqlDataSource ID="sdsCity" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TCdbConnectionString %>" 
        SelectCommand="SELECT [CityID], [CityName] FROM [City]"></asp:SqlDataSource>

                </EditItemTemplate>
                </asp:TemplateField>
                <asp:ButtonField CommandName="Edit" Text="Edit(fromButton)" DataTextField="InstituteID"
                    HeaderText="InstituteID" />
                 
                <asp:CommandField EditText="Click To Edit" ShowEditButton="true" UpdateText="UpdateFields"
                    HeaderText="Update column" />



            <asp:TemplateField>
            <ItemTemplate>
            <%# Eval("InstituteName").ToString() %>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("InstituteName").ToString() %>'></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="sdsInstitutes" runat="server" ConnectionString="<%$ ConnectionStrings:TCdbConnectionString %>"
            SelectCommand="SELECT InstituteID, InstituteName, YearOfEstablishment, Area, EmailID, ContactNo,CityName FROM Institute i INNER JOIN City c on c.CityID=i.CityID"
            UpdateCommand="UPDATE Institute SET InstituteName = @InstituteName, YearOfEstablishment = @YearOfEstablishment, Area = @Area, EmailID = @EmailID, ContactNo = @ContactNo WHERE (InstituteID = @instituteid)"
            DeleteCommand="DELETE FROM Institute WHERE (InstituteID = @instituteid)">
            <DeleteParameters>
                <asp:Parameter Name="instituteid" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="InstituteName" />
                <asp:Parameter Name="YearOfEstablishment" />
                <asp:Parameter Name="Area" />
                <asp:Parameter Name="EmailID" />
                <asp:Parameter Name="ContactNo" />
                <asp:Parameter Name="instituteid" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    </form>
</body>
</html>
