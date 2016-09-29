<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIP.master" AutoEventWireup="true" CodeFile="MoviesSQLIP.aspx.cs" Inherits="MoviesSQLIP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <!-- DataSource määrittely-->
    <asp:SqlDataSource ID="srcMovies" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MoviesIP %>" 
        SelectCommand="SELECT [title], [director], [year], [url] FROM [Movies] ORDER BY [title]">
    </asp:SqlDataSource>
    <!-- GV-kontrolli esittää datan -->
       <h1>Esa's movies from SQL Server</h1>
    <asp:GridView ID="gvMovies" DataSourceID="srcMovies"
        HeaderStyle-BackColor="Blue" HeaderStyle-ForeColor="White"
         runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="director" HeaderText="director" SortExpression="director" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
        </Columns>
<HeaderStyle BackColor="Blue" ForeColor="White"></HeaderStyle>
    </asp:GridView>
    <!-- elokuvien posterit näkyviin repeaterin avulla -->
    <asp:Repeater ID="myrepeater" runat="server" DataSourceID="srcMovies">
        <ItemTemplate>
            <h3><%# Eval("title") %></h3>
            <img src="<%# Eval("url") %>" alt="kuva puuttuu" width="200" />
        </ItemTemplate>
    </asp:Repeater> 

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

