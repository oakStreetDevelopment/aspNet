<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="dataExample.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Please enter your contact information.</h3>
    <div>
        <br />
        <asp:Label runat="server" ID="firstNameLabel" Text="First Name:"></asp:Label>
        <asp:TextBox ID="firstNameTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" ID="lastNameLabel" Text="Last Name:"></asp:Label>
        <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" ID="streetAddressLabel" Text="Street Address:"></asp:Label>
        <asp:TextBox ID="streetAddressTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" ID="cityLabel" Text="City:"></asp:Label>
        <asp:TextBox ID="cityTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" ID="stateLabel" Text="State:"></asp:Label>
        <asp:TextBox ID="stateTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" ID="zipLabel" Text="Zip:"></asp:Label>
        <asp:TextBox ID="zipTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" ID="telephoneLabel" Text="Telephone:"></asp:Label>
        <asp:TextBox ID="telephoneTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label runat="server" ID="emailAddressLabel" Text="Email Address:"></asp:Label>
        <asp:TextBox ID="emailAddressTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
    </div>
</asp:Content>
