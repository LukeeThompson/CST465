<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MultipleChoiceQuestion.ascx.cs" Inherits="Lab2.Assignment_4.MultipleChoiceQuestion" %>

<asp:Label ID="uxQuestion" runat="server"/>
<asp:RadioButtonList ID="uxAnswers"  runat="server"/>
<asp:RequiredFieldValidator ID="MultipleChoiceValidator" ControlToValidate="uxAnswers" runat="server" />