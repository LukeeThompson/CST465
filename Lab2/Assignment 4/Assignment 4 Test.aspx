<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.master" AutoEventWireup="true" CodeBehind="Assignment 4 Test.aspx.cs" Inherits="Lab2.Assignment_4.WebForm1" %>

<%@ Register Assembly="Lab2" Namespace="Lab2.Assignment_4" TagPrefix="LAME" %>
<%@ Register TagPrefix="LAME" TagName="EssayQuestion" Src="~/Assignment 4/EssayQuestion.ascx" %>
<%@ Register TagPrefix="LAME" TagName="MultipleChoiceQuestion" Src="~/Assignment 4/MultipleChoiceQuestion.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Assignment 4 Test
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="form" runat="server">
    <h2>Assignment 4 Test</h2>
    <blockquote>
    <b>#1) Essay Question</b><br /><br />
    <LAME:EssayQuestion ID="EssayQuestion"  QuestionText="Please write 500 words explaining why 'E.T.' for the Nintendo Entertainment System is the 'Citizen Kane' of video games." runat="server"/><br />
    <b>#2) Multiple Choice Question</b><br /><br />
    <LAME:MultipleChoiceQuestion ID="MultipleChoiceQuestion" QuestionText="What makes a game truly lame?" 
        OptionA="Poor graphical design" 
        OptionB="Poor level design" 
        OptionC="Poor plotline" 
        OptionD="Games aren't made lame, they have lameness thrust upon them." 
        runat="server"/><br />
    <b>#3) True False Question</b><br /><br />
    <LAME:TrueFalseQuestion ID="TrueFalseQuestion" QuestionText="Tetris is a lame game" runat="server" /><br />
    <b>#4) Short Text Question</b><br /><br />
    <LAME:ShortTextQuestion ID="ShortTextQuestion" QuestionText="The lamest game of all time is:" runat="server" /><br /><br />

    <b>#5) The Submit Button</b><br /><br />
    <asp:Button ID="TestSubmit" 
                Text="Submit" 
                OnClick="SubmitClick" 
                runat="server" /><br /><br />
    <b>#6) The Literal</b><br /><br />
    <asp:Literal ID="TestLiteral" runat="server" />
        </blockquote>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="main" runat="server">
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
