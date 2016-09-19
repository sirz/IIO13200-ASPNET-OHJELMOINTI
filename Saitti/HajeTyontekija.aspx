'<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HajeTyontekija.aspx.cs" Inherits="HajeTyontekija" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Työntekijät</title>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="nappulat">
    <asp:Button ID="btnHaje" class="w3-btn w3-amber" runat="server" Text="Hae työntekijät" OnClick="btnHaje_Click" />
    </div>
        <div id="esitys" class="w3-green">
        <asp:DataGrid ID="gvData" runat="server"></asp:DataGrid>

        </div>
    <div id="footer" class="w3-container w3-teal">
        <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
    </div>

    </form>
</body>
</html>
