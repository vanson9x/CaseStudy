<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS05.aspx.cs" Inherits="CS.CS05" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server">
        <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
        <asp:Button ID="btnShow" runat="server" Text="Show" OnClick="btnShow_Click"/>
        <asp:Label ID="lblText" runat="server"></asp:Label>
    </form>
</body>
</html>
