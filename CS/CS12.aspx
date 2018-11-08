<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS12.aspx.cs" Inherits="CS.CS12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style>
        img{
            width:150px;
            height: 180px;
        }
    </style>
</head>
<body>
    <div class="container">
        <form id="phanhoi" runat="server" class="row">
            <div class="col-6">
                <div class="w-100 d-flex flex-wrap justify-content-center">
                    <h4 class="w-100 text-center">Category Name</h4>
                    <asp:Image ID="productImage" ImageUrl="#" CssClass="" runat="server" />
                    <asp:Label ID="lbGia" CssClass="w-100 text-center" runat="server"></asp:Label>
                </div>
            </div>
            <div class="col-6">
                <div class="content">
                    <asp:Label ID="lbName" runat="server"></asp:Label>
                    <p class="m-0">Phản hồi</p>
                    <div class="w-100 d-flex justify-content-between">
                        <asp:TextBox ID="txtUsername" CssClass="w-100" runat="server"></asp:TextBox>
                        <span class="mx-1"></span>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="w-100" TextMode="Email"></asp:TextBox>
                    </div>
                    <asp:TextBox ID="txtNoidung" CssClass="mt-2 w-100" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSubmit" CssClass="float-right" runat="server" Text="Gửi phản hồi" OnClick="btnSubmit_Click" />
                </div>
                <div class="mt-5 feedback">
                    <asp:Repeater ID="Repeater1" DataSourceID="SqlDataSource1" runat="server">
                        <ItemTemplate>
                            <b><%# Eval("Nguoigui") %> - <%# Eval("EmailNguoigui")%></b> <br />
                            <p class="m-0"><%# Eval("Noidung") %></p>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [tblPhanhoi] WHERE (([DaDuyet] = @DaDuyet) AND ([FK_HangID] = @FK_HangID))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="True" Name="DaDuyet" Type="Boolean" />
                            <asp:QueryStringParameter Name="FK_HangID" QueryStringField="product" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
