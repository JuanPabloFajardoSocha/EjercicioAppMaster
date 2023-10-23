<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AppMaster.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <title></title>

</head>
<body style="background-color:black; color:white">
    <form id="form1" runat="server">
        <div class="container">
            <div class="mb-3 mt-3">
                <label for="email" class="form-label">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Enter email"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="pwd" class="form-label">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Enter password"></asp:TextBox>
            </div>

            <div class="form-check mb-3">
                <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" name="remember" />
                    Remember me
                </label>
            </div>

            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="btn btn-primary" OnClick="btnIngresar_Click" />
        </div>
    </form>
</body>
</html>
