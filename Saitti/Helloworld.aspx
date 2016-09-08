<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Helloworld.aspx.cs" Inherits="Helloworld" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MORO</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>morsa</h1>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:Button ID="btnSayHello" runat="server" Text="Morjesta" OnClick="btnSayHello_Click" />
        <asp:Label ID="lblMessage" runat="server">...</asp:Label>
    </div>
    </form>
</body>
</html>
