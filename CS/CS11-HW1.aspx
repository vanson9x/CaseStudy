<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS11-HW1.aspx.cs" Inherits="CS.CS11_HW1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            SelectCommand="SELECT * FROM [tblHang]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
