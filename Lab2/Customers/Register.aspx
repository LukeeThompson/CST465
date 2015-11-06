<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Lab2.Customers.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="main" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="form" runat="server">
        <asp:CreateUserWizard ID="uxCreateUserWizard" MembershipProvider="SqlMembership" ContinueDestinationPageUrl="~/Customers/Login.aspx" runat="server">
 
    </asp:CreateUserWizard>
</asp:Content>