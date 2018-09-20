<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS02.aspx.cs" Inherits="CS.CS02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        window.onunload = function (event) {
            var ajax = new XMLHttpRequest();
            ajax.open("GET", "http://localhost:18242/CS02?close=true");
            ajax.send();
        };
    </script>
</head>
<body>
     
</body>
</html>
