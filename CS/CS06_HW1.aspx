<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS06_HW1.aspx.cs" Inherits="CS.CS06_HW1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
        <asp:Button ID="btn1" runat="server" Text="Button1" OnClick="btn1_Click"/>
        <asp:Label ID="lbl1" runat="server"></asp:Label> <br />
        <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
        <asp:Button ID="btn2" runat="server" Text="Button2" OnClick="btn2_Click"/>
        <asp:Label ID="lbl2" runat="server"></asp:Label>
    </form>
</body>
</html>
