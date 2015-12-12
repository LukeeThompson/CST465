<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EssayQuestion.ascx.cs" Inherits="Lab2.Assignment_4.EssayQuestion" %>

<asp:Label ID="uxQuestion" runat="server" /> <br /><br />
<asp:TextBox ID="AnswerText" TextMode="MultiLine" Width="500" Height="150" runat="server" /> <br />
<asp:RequiredFieldValidator ID="EssayQuestionValidator" ControlToValidate="AnswerText" runat="server" />
