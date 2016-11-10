<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIP.master" AutoEventWireup="true" CodeFile="FeeditIP.aspx.cs" Inherits="FeeditIP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:Button ID="btnGetFeeds" runat="server" 
        Text="Feedit IltaSanomat" OnClick="btnGetFeeds_Click"/>
    <asp:Button ID="btnGetFeedsYle" runat="server" 
        Text="Feedit Yle Pääuutiset" OnClick="btnGetFeedsYle_Click"/>
    <asp:XmlDataSource ID="myDataSource" runat="server"></asp:XmlDataSource>
    <div id="myDiv" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

