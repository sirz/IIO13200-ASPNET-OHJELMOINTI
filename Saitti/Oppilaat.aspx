<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oppilaat.aspx.cs" Inherits="Oppilaat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Oppilaat syksy 2016</h1>
        <div id="Puttoset">
            <asp:Button ID="btnGet3" runat="server" Text="Haje 3 oppilasta" OnClick="btnGet3_Click" />
            <asp:Button ID="btnGetAll" runat="server" Text="Haje oppilaat tietokannasta" OnClick="btnGetAll_Click" />
            <asp:Button ID="btnGet3Oppilas" runat="server" Text="Haje 4 oppilasoliota" OnClick="btnGet3Oppilas_Click" />
        </div>
        <div id="data">
            <asp:GridView ID="gvStudents" runat="server"></asp:GridView>
        </div>
        <div id="footer">
             <asp:Label ID="lblMessages" runat="server" ></asp:Label> 
            </div>
    </div>
    </form>
</body>
</html>
