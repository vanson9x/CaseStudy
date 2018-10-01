<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS10.aspx.cs" Inherits="CS.CS10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" action="CS10" method="post" runat="server" enctype="multipart/form-data">
    <div>
        Nhom Hang: <asp:DropDownList ID="drlNhom" runat="server"></asp:DropDownList> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="drlNhom"
            ForeColor="Red"
            ErrorMessage="Phai chon nhom"></asp:RequiredFieldValidator>
        <br />
        Ten Hang: <asp:TextBox ID="txtName" runat="server"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtName"
            ForeColor="Red"
            ErrorMessage="Ten khong duoc de trong"></asp:RequiredFieldValidator>
        <br />
        Gia Niem Yet: <asp:TextBox ID="txtPrice" runat="server" TextMode="Number"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtPrice"
            ForeColor="Red"
            ErrorMessage="Gia niem yet khong duoc trong"></asp:RequiredFieldValidator>
        <br />
        Anh: <asp:FileUpload ID="fileUpload" runat="server" /> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="fileUpload"
            ForeColor="Red"
            ErrorMessage="Phai chon anh san pham"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="Them" OnClick="btnAdd_Click" />
    </div>
    </form>
</body>
</html>
