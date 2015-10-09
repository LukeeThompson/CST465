<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label AssociatedControlID="uxName" Text="Name" runat="server" />
    <asp:TextBox id="uxName" runat="server" /> <br />
    <asp:Label AssociatedControlID="uxUserType" Text="User Type" runat="server" />
    <asp:DropDownList ID="uxUserType" AutoPostBack="false" runat="server">
        <asp:ListItem
                Enabled="True"
                Selected="False"
                Text="Student"
                Value="string"
            />
        <asp:ListItem
                Enabled="True"
                Selected="False"
                Text="Faculty/Staff"
                Value="string"
            />
    </asp:DropDownList> <br />
    <asp:Label AssociatedControlID="uxHobby" Text="Hobby" runat="server" />
    <asp:TextBox id="uxHobby" runat="server"/> <br />
    <asp:Label AssociatedControlID="uxBand" Text="Band" runat="server" />
    <asp:TextBox id="uxBand" runat="server"/> <br />
    <asp:Label AssociatedControlID="uxBiography" Text="Biography" runat="server" />
    <asp:TextBox id="uxBiography" TextMode="MultiLine" runat="server" /> <br />
    <asp:Label AssociatedControlID="uxTable" Text="Schedule" runat="server" />
    <asp:Table ID="uxTable" Height="6" Width="3" runat="server">
        <asp:TableHeaderRow BackColor="Gray">
            <asp:TableHeaderCell Text="Course Prefix" />
            <asp:TableHeaderCell Text="Course Number" />
            <asp:TableHeaderCell Text="Course Description" />
        </asp:TableHeaderRow>
        <asp:TableFooterRow>
            <asp:TableCell>
                <asp:TextBox ID="uxCoursePrefix" runat="server" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="uxCourseNumber" runat="server" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="uxCourseDescription" runat="server" />
            </asp:TableCell>
        </asp:TableFooterRow>
    </asp:Table>
    <asp:Button ID="uxSubmit" Text="Save Profile" OnClick="uxSubmit_Click" runat="server" /> <br />
    <asp:Literal ID="uxIsPostBack" runat="server" /> <br />
    <asp:Literal ID="uxFormOutput" runat="server" /> <br />
    <asp:Literal ID="uxEventOutput" runat="server" /> <br />
    </div>
    </form>
</body>
</html>
