<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewTreaters.aspx.cs" Inherits="Lab2.ViewTreaters" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Treaters</title>
</head>
<body>
    <asp:SqlDataSource ID="treatertable" 
        ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" 
        runat="server" SelectCommandType="Text" 
        SelectCommand="SELECT Name, ProductName, Costume FROM Treaters JOIN Candy ON Treaters.FavoriteCandyID=Candy.ID JOIN Costumes ON Treaters.CostumeID = Costumes.ID"/>
    <asp:Repeater ID="TreaterData" 
        DataSourceID="treatertable" 
        runat="server">
        <ItemTemplate>
            Name: 
            <%# Eval("Name") %> <br />
            Favourite Candy: 
            <%# Eval("ProductName") %> <br />
            Costume: 
            <%# Eval("Costume") %> <br /> <br />
        </ItemTemplate>
    </asp:Repeater>
</body>
</html>
