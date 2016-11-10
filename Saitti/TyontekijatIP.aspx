<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIP.master" AutoEventWireup="true" CodeFile="TyontekijatIP.aspx.cs" Inherits="TyontekijatIP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:Xml ID="Xml1" 
        DocumentSource="~/App_Data/Työntekijät2013.xml"
        TransformSource="~/App_Data/Demo.xsl"
        runat="server"></asp:Xml>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

