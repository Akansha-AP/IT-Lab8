<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuthorDetails.aspx.cs" Inherits="Lab8Q2.AuthorDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server"
                AutoGenerateColumns="False" 
                AllowPaging="true" 
                EnablePersistedSelection="true" PageSize="3" 
                DataKeyNames="Id" 
                DataSourceID="authorSource">
                <Columns>
                    <asp:CommandField ShowEditButton="true" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True"  />
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            First Name:
                            <%# Eval("FirstName") %><br />
                            Last Name:
                            <%# Eval("LastName") %><br />
                        </ItemTemplate>
                        <EditItemTemplate>
                            First Name:
                            <asp:TextBox Text='<%# Bind("FirstName") %>' runat="server" ID="txtName"></asp:TextBox><br />
                            Last Name:
                            <%# Eval("LastName") %><br />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" ReadOnly="true"/>
                    <asp:BoundField DataField="Genre" HeaderText="Genre" ReadOnly="true" />
                    <asp:BoundField DataField="CopiesSold" HeaderText="CopiesSold"  />
                   
                </Columns>
                <HeaderStyle BackColor="Green" BorderColor="Red" Font-Bold="True" />
            </asp:GridView>
            <asp:SqlDataSource ID="authorSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Lab8 %>" 
                SelectCommand="SELECT * FROM [Authors]" 
                UpdateCommand="Update Authors Set FirstName=@FirstName, CopiesSold=@CopiesSold where Id=@Id"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
