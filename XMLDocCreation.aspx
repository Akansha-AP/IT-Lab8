<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XMLDocCreation.aspx.cs" Inherits="Lab8Q1.XMLDocCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#99FF66" Height="79px">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCreate" OnClick="btnCreate_Click" runat="server" Text="Create XML" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnRead" OnClick="btnRead_Click" runat="server" Text="Read XML" />
            </asp:Panel>
            <div>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
                <asp:GridView ID="carsGrid" runat="server"></asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
