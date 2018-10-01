<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS07-08.aspx.cs" Inherits="CS.CS07" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Yeu cau 1</h1>
    <form action="CS07" method="post" onsubmit="return funcSubmit()">
        Ho Ten: <input id="inHoTen" required /> <br />
        Nam Sinh: <input type="date" id="inBirthday" required /> <br />
        Email: <input type="email" id="inEmail" required /> <br />
        <button type="submit">Submit</button>
    </form>
    <h1>Yeu cau 2</h1>
    <form id="form1" runat="server">
        <div>
            Ho Ten: <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox> 
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ErrorMessage="Ho va Ten khong hop le" 
                ValidateEmptyText="true"
                ForeColor ="RED"
                ControlToValidate ="txtHoTen" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator><br />
            Nam Sinh: <asp:TextBox ID="txtNamSinh" TextMode="Date" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator2" runat="server"
                 ErrorMessage="Nam sinh khong hop le" 
                ValidateEmptyText="true" 
                ForeColor ="RED"
                ControlToValidate ="txtNamSinh" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator> <br />
            Email: <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator3" runat="server"
                 ErrorMessage="Email khong hop le" 
                ValidateEmptyText="true" 
                ForeColor ="RED"
                ControlToValidate ="txtEmail" OnServerValidate="CustomValidator3_ServerValidate" ></asp:CustomValidator> <br />
            <asp:Button ID="btnSend" Text="Submit" runat="server" OnClick="btnSend_Click" />
        </div>
    </form>
</body>
</html>

