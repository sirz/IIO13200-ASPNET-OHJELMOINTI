<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIP.master" AutoEventWireup="true" CodeFile="BookShopIP.aspx.cs" Inherits="BookShopIP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1>Esan KirjakauppaX</h1>
    <div class="w3-row">
        <!-- vasen lohko: asiakkaat -->
        <div class="w3-container w3-third">
            <asp:Button ID="btnGetCustomers" runat="server" 
                text="Hae asiakkaat"
                CssClass="w3-btn" OnClick="btnGetCustomers_Click" />
            <asp:DropDownList ID="ddlCustomers" runat="server" OnSelectedIndexChanged="ddlCustomers_SelectedIndexChanged" AutoPostBack="True" />
            <asp:GridView ID="gvCustomers" runat="server" />
        </div>
        <!-- oikea lohko: kirjat -->
        <div class="w3-container w3-twothird">
            <asp:Button ID="btnGetBooks" runat="server" 
                text="Hae kirjat"
                CssClass="w3-btn w3-blue" OnClick="btnGetBooks_Click" />
            <asp:GridView ID="gvBooks" runat="server" />

        </div>
    </div>
    <div class="w3-row">
        <asp:Literal ID="ltResult" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
    <asp:Label ID="lblMessages" runat="server" />
</asp:Content>

