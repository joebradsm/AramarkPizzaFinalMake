<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="AramarkPizzaFinalMake.StaffLogin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Login</title>
    <style type="text/css">
        .container
        {
            width: 400px;
            height: 200px;
            margin: 100px auto;
            padding: 20px;
            background-color: white;
            border: 1px solid gray;
            box-shadow: 2px 2px 5px #888888;
            text-align: center;
        }

        .header
        {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .form-control
        {
            width: 60%;
            height: 30px;
            margin-bottom: 20px;
            padding: 5px;
            border: 1px solid gray;
            font-size: 18px;
        }

        .btn
        {
            width: 40%;
            height: 40px;
            background-color: blue;
            color: white;
            border: none;
            font-size: 18px;
            box-shadow: 2px 2px 5px #888888;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header">
                Staff Login
            </div>
            <div>
                <asp:Label ID="usernameLabel" runat="server" Text="Username: " />
                <asp:TextBox ID="usernameTextBox" runat="server" CssClass="form-control" />
            </div>
            <div>
                <asp:Label ID="passwordLabel" runat="server" Text="Password: " />
                <asp:TextBox ID="passwordTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" />
            </div>
            <div>
                <asp:Button ID="loginButton" runat="server" Text="Login" CssClass="btn" OnClick="loginButton_Click" />
                <br />
                <br />
                <br />
                <asp:Label ID="lblError" runat="server"></asp:Label>
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>