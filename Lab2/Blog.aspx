<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Lab2.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="form" runat="server">
    <asp:LoginView runat="server">
        <AnonymousTemplate>
            <p>You've come to the wrong neighborhood! Please Log in to continue.</p>
        </AnonymousTemplate>
        <LoggedInTemplate>
            <label>Title</label> <br />
            <asp:TextBox ID="uxBlogTitle" runat="server" /> <br />
            <label>Your post</label> <br />
            <asp:TextBox ID="uxBlogPost" TextMode="MultiLine" runat="server" /> <br />
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="main" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
