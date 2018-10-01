<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS09.aspx.cs" Inherits="CS.CS09" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function checkEmail(source, args) {
            var password = document.getElementById('<%=txtPassword.ClientID%>');
            if (password.value.length < 6 || password.value.search(/[0-9]/) == -1 || password.value.search(/[a-zA-Z]/) == -1) args.IsValid = false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Username: <asp:TextBox runat="server" ID="txtUsername"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtUsername"
            ForeColor="Red"
            ErrorMessage="Khong duoc bo trong"></asp:RequiredFieldValidator>
        <br />
        Password: <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ControlToValidate="txtPassword"
            ForeColor="Red"
            ClientValidationFunction="checkEmail"
            ValidateEmptyText="true"
            ErrorMessage="Mat khau toi thieu 6 ki tu bao gom ki tu va so" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Dang Nhap" OnClick="btnLogin_Click" />
    </div>
    </form>
</body>
</html>
