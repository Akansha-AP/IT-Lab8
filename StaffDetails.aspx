<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffDetails.aspx.cs" Inherits="Lab8Q1_2.StaffDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Staff Details:
            
            <br />
            <asp:GridView ID="staffGrid" runat="server" 
                AutoGenerateColumns="False" 
                DataKeyNames="Name,Age" 
                DataSourceID="staffSource" 
                OnRowDataBound="staffGrid_RowDataBound" AllowSorting="true" 
                OnSelectedIndexChanged="staffGrid_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="Staff Details:" SortExpression="Name">
                        <ItemTemplate>
                            <b>Name:</b>
                            <%# Eval("Name") %><br />
                            <b>Age:</b>
                            <%# Eval("Age") %><br />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Designation" HeaderText="Designation"  />
                    <asp:BoundField DataField="Salary" HeaderText="Salary"  />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="staffSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Lab8 %>" 
                SelectCommand="SELECT * FROM [Staff]"></asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
