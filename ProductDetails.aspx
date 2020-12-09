<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Lab8AQ1.ProductDetails" %>

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
                DataKeyNames="Id" 
                DataSourceID="productSource" AllowSorting="true" Width="262px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:TemplateField HeaderText="Name" SortExpression="Name">
                        <ItemTemplate>
                            Name:
                            <%# Eval("Name") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            Name:
                            <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="nameValidator" runat="server" ControlToValidate="txtName" ErrorMessage="This field can't be left blank."></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Details">
                        <ItemTemplate>
                            Price:
                            <%# Eval("Price") %><br />
                            Qty:
                            <%# Eval("Quantity") %><br />
                        </ItemTemplate>
                        <EditItemTemplate>
                            Price:
                            <%# Eval("Price") %><br />
                            Qty:
                            <asp:TextBox ID="txtQty" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                            <asp:RangeValidator ID="qtyValidator" runat="server" ControlToValidate="txtQty" MinimumValue="1" MaximumValue="20" Type="Integer" 
                                ErrorMessage="Enter a value in 1-20"></asp:RangeValidator>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="productSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Lab8 %>" 
                SelectCommand="SELECT * FROM [Product]" 
                UpdateCommand="Update Product Set Name=@Name, Quantity=@Quantity where Id=@Id"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
