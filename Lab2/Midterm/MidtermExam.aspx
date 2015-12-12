<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.master" AutoEventWireup="true" CodeBehind="MidtermExam.aspx.cs" Inherits="Lab2.Midterm.MidtermExam" %>

<%@ Register Assembly="Lab2" Namespace="Lab2.Assignment_4" TagPrefix="LAME" %>
<%@ Register TagPrefix="LAME" TagName="EssayQuestion" Src="~/Assignment 4/EssayQuestion.ascx" %>
<%@ Register TagPrefix="LAME" TagName="MultipleChoiceQuestion" Src="~/Assignment 4/MultipleChoiceQuestion.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="form" runat="server">
    <blockquote>
    <asp:PlaceHolder id="uxQuestions" runat="server">
    <h1>True False Questions</h1><br /><br />
    <LAME:TrueFalseQuestion ID="TrueFalseQuestion" QuestionText="HTTP is a stateless protocol" runat="server" /><br />
    <LAME:TrueFalseQuestion ID="TrueFalseQuestion1" QuestionText="SessionState can be transferred between pages" runat="server" /><br />
    <LAME:TrueFalseQuestion ID="TrueFalseQuestion2" QuestionText="Sanitizing database inputs is only important for sites handling sensitive information" runat="server" /><br />
    <LAME:TrueFalseQuestion ID="TrueFalseQuestion3" QuestionText="ViewState can be transferred between pages" runat="server" /><br />
    <LAME:TrueFalseQuestion ID="TrueFalseQuestion4" QuestionText="Cookies can be transferred between pages" runat="server" /><br />
    <LAME:TrueFalseQuestion ID="TrueFalseQuestion5" QuestionText="It is a good practice to use inline CSS styles" runat="server" /><br />
    <LAME:TrueFalseQuestion ID="TrueFalseQuestion6" QuestionText="All controls in ASP.NET support DataBinding" runat="server" /><br />
    <LAME:TrueFalseQuestion ID="TrueFalseQuestion7" QuestionText="Browsers must support ASP.NET in order to display pages created with it" runat="server" /><br />
    <LAME:TrueFalseQuestion ID="TrueFalseQuestion8" QuestionText="When a MasterPage is used, a page wraps its own content with the MasterPages’s content" runat="server" /><br />
    <LAME:TrueFalseQuestion ID="TrueFalseQuestion9" QuestionText="&ltdeny&gt authorization rules in the web.config are processed first regardless of the way the rules are ordered" runat="server" /><br />

    <h1>Essay Questions</h1><br /><br />
    <LAME:EssayQuestion ID="EssayQuestion"  QuestionText="Place the following events in order of when they occur in the page lifecycle:<br/>Load, Init, Request Arrives, PreRender, Load ViewState, Input Control Event Handling" runat="server"/><br />
    <LAME:EssayQuestion ID="EssayQuestion1"  QuestionText="What is the purpose of the doctype  declaration at the top of a web page?" runat="server"/><br />
    <LAME:EssayQuestion ID="EssayQuestion2"  QuestionText="What is the order of precedence for the same style defined in the following ways?<br/>Style tag in document head, Extenal Style Sheet referenced by the link tag in document head" runat="server"/><br />
    <LAME:EssayQuestion ID="EssayQuestion3"  QuestionText="What is the order of precedence for CSS for referencing elements in the following ways<br/>By Element Name, By ID, By CSS Class, Inline using the style='' attribute" runat="server"/><br />
    <LAME:EssayQuestion ID="EssayQuestion4"  QuestionText="Explain why the alt attribute of the img tag is important" runat="server"/><br />
    <LAME:EssayQuestion ID="EssayQuestion5"  QuestionText="What is the purpose of name mangling?" runat="server"/><br />
    <LAME:EssayQuestion ID="EssayQuestion6"  QuestionText="Explain the difference between redirects that use a 301 HTTP status code and ones that use a 302 HTTP status code" runat="server"/><br />

    <h1>Multiple Choice Questions</h1><br /><br />
    <LAME:MultipleChoiceQuestion ID="MultipleChoiceQuestion" 
        QuestionText="HTML Stands for:" 
        OptionA="HoTMaiL" 
        OptionB="Highly Transferable Modeling Language" 
        OptionC="HyperText Markup Language" 
        OptionD="High Traffic Masking Language" 
        runat="server"/><br />
    <LAME:MultipleChoiceQuestion ID="MultipleChoiceQuestion1" 
        QuestionText="All controls that ask for user input should have an associated" 
        OptionA="Label" 
        OptionB="Validator" 
        OptionC="Event Handler" 
        OptionD="Ferret" 
        runat="server"/><br />
    <LAME:MultipleChoiceQuestion ID="MultipleChoiceQuestion2" 
        QuestionText="The living version of a page within the web browser is called the" 
        OptionA="Output Rendering Model" 
        OptionB="Document Object Model" 
        OptionC="Box Model" 
        OptionD="Underwear Model" 
        runat="server"/><br />
    <LAME:MultipleChoiceQuestion ID="MultipleChoiceQuestion3" 
        QuestionText="Which of the following elements is most appropriate for presenting the user with a list of items in no particular order?" 
        OptionA="ol" 
        OptionB="ul" 
        OptionC="dl" 
        OptionD="dropdownlist" 
        runat="server"/><br />
    <LAME:MultipleChoiceQuestion ID="MultipleChoiceQuestion4" 
        QuestionText="What is the difference between the ViewStateMode and EnableViewState properties in the <%@ Page %> declaration?" 
        OptionA="ViewStateMode was introduced in ASP.NET 4 to allow more than true/false values, but currently there is no distinguishable difference in functionality" 
        OptionB="When ViewState is disabled via ViewStateMode, it can't be enabled at the control level" 
        OptionC="When ViewState is disabled via EnableViewState, it can't be enabled at the control level" 
        OptionD="When ViewState is enabled via ViewStateMode, it can't be disabled at the control level" 
        runat="server"/><br />
    
    <h1>Short Text Questions</h1><br /><br />
    <LAME:ShortTextQuestion ID="ShortTextQuestion" QuestionText="The line of text that tells a SqlDataSource how to connect to the database is called a:" runat="server" /><br /><br />
    <LAME:ShortTextQuestion ID="ShortTextQuestion1" QuestionText="When a WebForms page performs a POST operation to itself, it is referred to as a:" runat="server" /><br /><br />
    <LAME:ShortTextQuestion ID="ShortTextQuestion2" QuestionText="The term for loading a controls data from a data source is:" runat="server" /><br /><br />
    <LAME:ShortTextQuestion ID="ShortTextQuestion3" QuestionText="An example of a block element is:" runat="server" /><br /><br />
    <LAME:ShortTextQuestion ID="ShortTextQuestion4" QuestionText="An example of an inline element is:" runat="server" /><br /><br />
    <LAME:ShortTextQuestion ID="ShortTextQuestion5" QuestionText="What is the name of the file that stores configuration information for a web site?" runat="server" /><br /><br />
    <LAME:ShortTextQuestion ID="ShortTextQuestion6" QuestionText="A div with the following CSS will have what computed height and width? { margin: 0 0 5px; padding: 5px 10px; height: 100px; width: 50px;  border-left: solid 3px #0c0; }" runat="server" /><br /><br />

    </asp:PlaceHolder>

    <b>Submit:</b><br /><br />
    <asp:Button ID="TestSubmit" 
                Text="Submit" 
                OnClick="SubmitClick" 
                runat="server" /><br /><br />
    </blockquote>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="main" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
