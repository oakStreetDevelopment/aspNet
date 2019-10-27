<%@ Page Title="Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dataExample.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="showDataSource">
        <Columns>
            <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
            <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
            <asp:BoundField DataField="streetAddress" HeaderText="streetAddress" SortExpression="streetAddress" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
            <asp:BoundField DataField="telephone" HeaderText="telephone" SortExpression="telephone" />
            <asp:BoundField DataField="emailAddress" HeaderText="emailAddress" SortExpression="emailAddress" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="showDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dataTestConnectionString %>" SelectCommand="SELECT [firstName], [lastName], [streetAddress], [city], [state], [zip], [telephone], [emailAddress] FROM [contactInfoTable]"></asp:SqlDataSource>
</asp:Content>
