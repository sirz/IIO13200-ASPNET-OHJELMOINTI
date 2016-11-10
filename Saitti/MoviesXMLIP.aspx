<%@ Page Title="" Language="C#" 
    MasterPageFile="~/MasterPageIP.master" AutoEventWireup="true" CodeFile="MoviesXMLIP.aspx.cs" Inherits="MoviesXMLIP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <!-- XMLDataSource määrittely-->
    <asp:XmlDataSource ID="srcMovies" runat="server"
         DataFile="~/App_Data/Movies.xml" XPath="//Movie"></asp:XmlDataSource>
    <!-- GridView-kontrolli esittää datan-->
    <h1>Esa's movies from XML file</h1>
    <asp:GridView ID="gvMovies" DataSourceID="srcMovies"
        HeaderStyle-BackColor="Blue" HeaderStyle-ForeColor="White"
         runat="server"></asp:GridView>
    <!-- datan esittäminen HTML:ssä -->
    <h1>Elokuvat listattuna </h1>
    <asp:Repeater ID="Repeater1" DataSourceID="srcMovies" runat="server">
        <HeaderTemplate>
            <table border="1" style="width:50%">
                <tr>
                    <td>Elokuva</td>
                    <td>Ohjaaja</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("Name") %></td>
                <td><%# Eval("Director") %></td>
            </tr>
<!--          <p>  <%# Eval("Name") %> ohjaaja: <%# Eval("Director") %> </p> -->
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

