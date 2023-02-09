<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AramarkPizzaFinalMake.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pizza Order</title>
    <style type="text/css">
        .form-container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid lightgray;
            border-radius: 10px;
            box-shadow: 2px 2px 10px gray;
        }

        .form-element {
            margin-bottom: 20px;
        }

        .form-element label {
            display: block;
            margin-bottom: 10px;
        }

        .form-element input[type="text"],
        .form-element select {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid gray;
        }

        .form-element input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: lightgray;
            border: none;
            border-radius: 5px;
            box-shadow: 2px 2px 10px gray;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <div>
                <a href="Home.aspx">Home</a> |
                <a href="StaffLogin.aspx">Staff Login</a>
            </div>
            <br />
            <div class="form-element">
                <label for="firstNameTextBox">First Name:</label>
                <asp:TextBox ID="firstNameTextBox" runat="server"></asp:TextBox>
            </div>
            <div class="form-element">
                <label for="lastNameTextBox">Last Name:</label>
                <asp:TextBox ID="lastNameTextBox" runat="server"></asp:TextBox>
            </div>
            <div class="form-element">
                <label for="phoneNumberTextBox">Phone Number:</label>
                 <asp:TextBox ID="phoneNumberTextBox" runat="server"></asp:TextBox>
            </div>
            <div class="form-element">
                <label for="pizzaDropDownList">Pizza:</label>
                <asp:DropDownList ID="pizzaDropDownList" runat="server">
                    <asp:ListItem>Select a Pizza</asp:ListItem>
                    <asp:ListItem>Margherita</asp:ListItem>
                    <asp:ListItem>Pepperoni</asp:ListItem>
                    <asp:ListItem>Vegetarian</asp:ListItem>
                    <asp:ListItem>BBQ Chicken</asp:ListItem>
                    <asp:ListItem>Seafood</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-element">
                <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
            </div>
           </div>
          </form>
         </body>
        </html>