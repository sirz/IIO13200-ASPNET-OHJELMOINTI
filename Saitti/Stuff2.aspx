<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIP.master" AutoEventWireup="true" CodeFile="Stuff2.aspx.cs" Inherits="Stuff2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Oppilaat %>" 
        DeleteCommand="DELETE FROM [testi] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [testi] ([name], [description]) VALUES (@name, @description)" 
        SelectCommand="SELECT [id], [name], [description] FROM [testi]" 
        UpdateCommand="UPDATE [testi] SET [name] = @name, [description] = @description WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:Oppilaat %>" 
            DeleteCommand="DELETE FROM [testi] WHERE [id] = @original_id AND [name] = @original_name AND [description] = @original_description" 
            InsertCommand="INSERT INTO [testi] ([name], [description]) VALUES (@name, @description)" OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [name], [id], [description] FROM [testi]" 
            UpdateCommand="UPDATE [testi] SET [name] = @name, [description] = @description WHERE [id] = @original_id AND [name] = @original_name AND [description] = @original_description">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_description" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_description" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <h1 class="w3-container w3-indigo">Stuffeja maailmalta</h1>
    <div class="w3-row">
        <!-- vasemman puoleinen esittää kaikki stuffit-->
        <div class="w3-container w3-half">
            <asp:GridView ID="gvStuff" runat="server" 
                AutoGenerateColumns="false"
                OnSelectedIndexChanged="gvStuff_SelectedIndexChanged"
                DataSourceID="SqlDataSource2">
              <Columns>
                  <asp:ButtonField DataTextField="id" 
                      HeaderText="ID" CommandName="select"/>
                  <asp:BoundField DataField="name" HeaderText="Nimi" />
                  <asp:BoundField DataField="description" HeaderText="Kuvaus" />
              </Columns>  
            </asp:GridView>
        </div>
        <!-- oikean puoleinen valitun stuffin muokkaus -->
        <div class="w3-container w3-half">
            <h2 class="w3-container w3-blue">Valittu:
                 <asp:Literal ID="myStuff" runat="server" /> </h2>
            <asp:DetailsView ID="dvStuff" runat="server"
                DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

