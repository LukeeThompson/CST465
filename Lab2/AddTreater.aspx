<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTreater.aspx.cs" Inherits="Lab2.AddTreater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Treater</title>
</head>
<body>
    <form runat="server">
    <asp:SqlDataSource ID="SqlCandy" 
        ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" 
        runat="server"
        SelectCommandType="Text" 
        SelectCommand="SELECT * FROM Candy"/>

    <asp:SqlDataSource ID="SqlCostume" 
        ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" 
        runat="server"
        SelectCommandType="Text"
        SelectCommand="SELECT * FROM Costumes"/>

    <asp:SqlDataSource ID="SqlInsertTreater" 
        ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" 
        runat="server" 
        InsertCommandType="Text"
        InsertCommand="INSERT INTO Treaters(Name, FavoriteCandyID, CostumeID) VALUES(@Name, @FavoriteCandyID, @CostumeID)"/>



    <asp:FormView ID="InsertTreater"
        runat="server"
        DefaultMode="Insert"
        DataKeyNames="Name"
        DataSourceID="SqlInsertTreater">

        <InsertItemTemplate>

            <label>Name</label><br />
            <asp:TextBox id="TreaterName" Text='<%# BIND("Name") %>' runat="server"/> <br />
    
            <label>Favorite Candy</label><br />
            <asp:DropDownList ID="FavCandy" 
                SelectedValue='<%# Bind("FavoriteCandyID") %>' 
                runat="server" 
                DataSourceID="SqlCandy" 
                DataTextField="ProductName" 
                DataValueField="ID"/>

            <label>Costume</label><br />
            <asp:DropDownList ID="CostumeChoice" 
                SelectedValue='<%# Bind("CostumeID") %>'
                runat="server" 
                DataSourceID="SqlCostume"
                DataTextField="Costume" 
                DataValueField="ID" />

            <asp:Button ID="SubmitTreater" 
                Text="Add Treater" 
                CommandName="Insert" 
                runat="server" />

        </InsertItemTemplate>
    </asp:FormView>
        </form>
</body>
</html>
