<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Lab2.UserProfile" MasterPageFile="~/App_Master/BaseTemplate.master"%>

<%--<!DOCTYPE html>--%>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Profile Page</title>

<script type="text/javascript">       
function validateFile(sender, args) {            
    var allowedExtensions = ['jpg', 'gif', 'png'];            
    var fileExtension = args.Value.split(/(\.)/g).pop();            
    
    args.IsValid = false;            
    for (var i = 0; i < allowedExtensions.length; i++) {               
        if (fileExtension == allowedExtensions[i]) {                   
            args.IsValid = true;                
        }            
    }       
}    
</script>
</head>
<body>--%>

    <asp:Content ContentPlaceHolderID="main" runat="server">
    <h1>User Profile Information</h1>
    <form id="form1" runat="server">
    <div>
    <asp:multiview id="multiview" ActiveViewIndex="0" runat="server">
        <asp:View runat="server">
        <label>First Name</label><br />
    <input type="text" id="uxFname" runat="server" required/> <br />
        <label>Last Name</label><br />
    <input type="text" id="uxLname" runat="server" required/> <br />
        <label>Age</label><br />
    <input type="number" min="0" max="200" id="uxAge" width="50px" runat="server" required/> <br />
            <label>Phone</label><br />
    <input type="text" id="uxPhone" runat="server" required/> <br />
            <label>E-Mail</label><br />
    <asp:TextBox id="uxEmail" runat="server"/> <br />
            <label>Confirm E-mail</label><br />
    <asp:TextBox id="uxConfirmEmail" runat="server"/>
    <asp:CompareValidator ID="emailvalidator" ControlToValidate="uxEmail" ControlToCompare="uxConfirmEmail" Type="String" Operator="Equal" ErrorMessage="E-mail addresses don't match." runat="server" /> <br />
    <asp:Label AssociatedControlID="uxAddress" Text="Address" runat="server" /><br />
    <asp:TextBox id="uxAddress" runat="server"/> <br />
        <asp:Label AssociatedControlID="uxCity" Text="City" runat="server" /><br />
    <asp:TextBox id="uxCity" runat="server"/> <br />
            <asp:Label AssociatedControlID="uxState" Text="State" runat="server" /> <br />
    <asp:DropDownList ID="uxState" AutoPostBack="false" runat="server">
        <asp:ListItem
                Enabled="True"
                Selected="False"
                Text="California"
                Value="CA"
            />
        <asp:ListItem
                Enabled="True"
                Selected="False"
                Text="Oregon"
                Value="OR"
            />
        <asp:ListItem
                Enabled="True"
                Selected="False"
                Text="Washington"
                Value="WA"
            />
        </asp:DropDownList> <br />
            <asp:Label AssociatedControlID="uxZipCode" Text="Zip" runat="server" /><br />
    <asp:TextBox id="uxZipCode" runat="server"/><br />
    <asp:RegularExpressionValidator id="zipvalidator" ControlToValidate="uxZipCode" ValidationExpression="\d{5}(\-\d{4})?" ErrorMessage="Invalid Zip Code." runat="server"/> <br />
        <label>Profile Picture</label>
        <asp:FileUpload ID="uxImageUpload" runat="server" /> <br />
        <asp:CustomValidator ID="CustomValidator" ErrorMessage="Invalid Image." ControlToValidate="uxImageUpload" OnServerValidate="validateFile" runat="server" /> <br />
            <asp:Button ID="uxSubmit" Text="Save Profile" OnClick="uxSubmit_Click" runat="server" /> <br />
        <asp:ValidationSummary ID="summary" ShowMessageBox="true" DisplayMode="BulletList" runat="server" />
        </asp:View>

        <asp:View runat="server">
            <strong>Name: </strong>
            <asp:Literal ID="lFname" runat="server"/>
            <asp:Literal ID="lLname" runat="server" /> <br />
            <strong>Age: </strong>
            <asp:Literal ID="lAge" runat="server" /> <br />
            <strong>Phone: </strong>
            <asp:Literal ID="lPhone" runat="server" /> <br />
            <strong>E-mail: </strong>
            <asp:Literal ID="lEmail" runat="server" /> <br />
            <strong>Address: </strong>
            <asp:Literal ID="lAddress" runat="server" />
            <asp:Literal ID="lCity" runat="server" />
            <asp:Literal ID="lState" runat="server" />
            <asp:Literal ID="lZip" runat="server" /> <br />

            <asp:Image ID="uxImage" runat="server" />

        </asp:View>
    </asp:multiview>
    </div>
    </form>
    </asp:Content>

<%--</body>
</html>--%>
