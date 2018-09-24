<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS06.aspx.cs" Inherits="CS.CS06" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:TextBox ID="txtTen" runat="server"></asp:TextBox> <br />
         <asp:Label ID="lblMsg" runat="server"></asp:Label> <br />
         <asp:Label ID="lblErr" runat="server"></asp:Label> <br />
         <asp:Button ID="btnOK" runat="server" Text="btnClick" OnClick="btnOK_Click" />
    </form>
</body>
</html>
