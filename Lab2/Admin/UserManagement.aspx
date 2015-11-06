<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="Lab2.Admin.UserManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="form" runat="server">
    <label>Roles</label><br />
    <asp:ListBox id="uxRoles" runat="server" /> <br /><br />
    <label>Role Name</label><br />
    <asp:TextBox ID="uxRoleName" runat="server" /> <br /><br />
    <asp:Button id="uxAddRole" Text="Add Role" OnClick="uxAddRole_click" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="main" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
