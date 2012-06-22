<%@ Page Title="" Language="C#" MasterPageFile="~/TCSite.Master" AutoEventWireup="true" CodeBehind="RegistrationManagement.aspx.cs" Inherits="TrainingCenters.admin.RegistrationManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
  
    <div>
   
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False"  DataKeyNames="StudentID" 
            DataSourceID="sqlRegistration" >
            <EmptyDataTemplate>
                No Records Present</EmptyDataTemplate>
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
            
                <asp:CommandField ShowSelectButton="True"  />
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                <asp:BoundField DataField="StudentName" HeaderText="StudentName" 
                    SortExpression="StudentName" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                    <asp:CommandField ShowDeleteButton="True" HeaderText="Delete Registration" />
            </Columns>
                      <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <asp:SqlDataSource ID="sqlRegistration" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TCdbConnectionString %>" 
            DeleteCommand="delete from student where studentid=@studentid;delete from logindetails where insstuid=@studentid and isinstitute=0"  
            SelectCommand="select * from student" 
            UpdateCommand="update student set address=&quot;&quot; where id=&quot;&quot;">
        </asp:SqlDataSource>




        
        
    </div>
  
</asp:Content>
