<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS11-HW1.aspx.cs" Inherits="CS.CS11_HW1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style>
        tr{
            margin-top: 1em;
        }
        td{
            padding: 0 3em;
        }
        .production {
            border: solid 1px #808080;
            padding: 1em;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row col-12">
            <div class="w-100 d-flex justify-content-center">
                <form id="form1" runat="server">
                    <asp:DataList ID="DataList1" DataSourceID="SqlDataSource1" runat="server" DataKeyField="Pk_HangID" RepeatColumns="3">
                        <ItemTemplate>
                            <div class="mt-3 production d-flex flex-wrap justify-content-center">
                                <input class="d-none" name="mahang" value='<%# Eval("PK_HangID") %>' />
                                <h4 class="w-100"><asp:Label ID="TenhangLabel" runat="server" Text='<%# Eval("Tenhang") %>' /></h4>
                                <asp:Image ID="picter" runat="server" CssClass="w-100" ImageUrl='<%# Eval("TenfileAnh") %>' />
                                <p class="w-100 m-0"><asp:Label ID="GiaNiemyetLabel" runat="server" Text='<%# Eval("GiaNiemyet") %>' /></p>
                                <asp:Button runat="server" CssClass='<%# Eval("PK_HangID") %>' OnClick="itemClicked" Text="Add To Cart" />
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [tblHang]"></asp:SqlDataSource>
            </form>
            </div>
        </div>
    </div>
</body>
</html>
