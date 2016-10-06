<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIP.master" AutoEventWireup="true" CodeFile="DemoJsonIP.aspx.cs" Inherits="DemoJsonIP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:Button ID="btnGet" runat="server" Text="Hae Json-teksti" OnClick="btnGet_Click" />
    <asp:Button ID="btnGetPerson" runat="server" Text="Hae Json ja muuta olioksi" OnClick="btnGetPerson_Click" />
    <asp:Button ID="btnGetPolticis" runat="server" Text="Hae Json ja muuta oliokokoelmaksi" OnClick="btnGetPolticis_Click" />
    <br />
    <asp:Literal ID="ltResult" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

