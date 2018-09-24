<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS07.aspx.cs" Inherits="CS.CS07" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function checkName(source, args) {
            switch (true) {
                case args.Value == "":
                    args.IsValid = false;
                    break;
                default: args.IsValid = true;
            }
        }
        function checkYearOfBirth(source, args) {
            
        }
        function checkEmail(source, args) {
            
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Ho Ten: <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox> 
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ErrorMessage="Ho va Ten khong hop le" 
            ValidateEmptyText="true"
            ForeColor ="RED"
            ClientValidationFunction="checkName"
            ControlToValidate ="txtHoTen"></asp:CustomValidator><br />
        Nam Sinh: <asp:TextBox ID="txtNamSinh" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator2" runat="server"
             ErrorMessage="Nam sinh khong hop le" 
            ValidateEmptyText="true" 
            ForeColor ="RED"
            ClientValidationFunction="checkYearOfBirth"
            ControlToValidate ="txtNamSinh"></asp:CustomValidator> <br />
        Email: <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator3" runat="server"
             ErrorMessage="Email khong hop le" 
            ValidateEmptyText="true" 
            ForeColor ="RED"
            ClientValidationFunction="checkEmail"
            ControlToValidate ="txtEmail" ></asp:CustomValidator> <br />
        <asp:Button ID="btnSend" Text="Submit" runat="server" OnClick="btnSend_Click" />
    </div>
    </form>
</body>
</html>
