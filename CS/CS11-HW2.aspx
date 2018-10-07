<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS11-HW2.aspx.cs" Inherits="CS.CS11_HW2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style>
        .production {
            width: 200px;
            padding: 1em;
            border: solid 1px #808080;
            border-radius: .5em;
        }
        img {
            width: 150px;
            height: 180px;
        }
    </style>
</head>
<body>
    <div class="container">
        <form class="row col-12" action="CS12" method="post">
            <asp:Repeater ID="Repeater1" DataSourceID="SqlDataSource1" runat="server">
                <ItemTemplate>
                    <div class="mt-3 mx-2 production d-flex flex-wrap justify-content-center">
                        <input class="w-100 d-none" name="mahang" value='<%# Eval("Pk_HangID") %>' />
                        <h4 class="w-100"><%# Eval("Tenhang") %></h4>
                        <a href='<%# "CS12?product=" + Eval("Pk_HangID") %>'><asp:Image ID="picter" runat="server" 
                            ImageUrl='<%# HttpContext.Current.Server.MapPath(@"~/App_Data/" + ConfigurationManager.AppSettings["PathSaveImage"] + Eval("TenfileAnh")) %>' /></a>
                        <p class="w-100 m-0"><%# Eval("GiaNiemyet") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [tblHang]"></asp:SqlDataSource>
        </form>
    </div>
</body>
</html>
