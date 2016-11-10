<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIP.master" AutoEventWireup="true" CodeFile="TyontekijatPalkkaIP.aspx.cs" Inherits="TyontekijatPalkkaIP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:XmlDataSource ID="srcWorkers" runat="server" 
        DataFile="~/App_Data/Työntekijät2013.xml" XPath="//tyontekija" TransformFile="~/App_Data/Convert.xsl"/>
    <asp:GridView ID="gvWorkers" DataSourceID="srcWorkers" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="etunimi" HeaderText="etunimi" SortExpression="etunimi" />
            <asp:BoundField DataField="sukunimi" HeaderText="sukunimi" SortExpression="sukunimi" />
            <asp:BoundField DataField="numero" HeaderText="numero" SortExpression="numero" />
            <asp:BoundField DataField="tyosuhde" HeaderText="tyosuhde" SortExpression="tyosuhde" />
            <asp:BoundField DataField="palkka" HeaderText="palkka" SortExpression="palkka" />
        </Columns>
    </asp:GridView>
    <div id="myDiv" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

