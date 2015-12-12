<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="Lab2.Midterm.Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="form" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="main" runat="server">
    <asp:Repeater ID="uxQuestionAnswers" 
        runat="server">
        <ItemTemplate>
            <b>Question: 
            <%# Eval("QuestionText") %></b><br />
            Answer: 
            <%# Eval("Answer") %> <br /><br />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
