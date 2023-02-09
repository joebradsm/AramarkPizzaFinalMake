<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="AramarkPizzaFinalMake.Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invoice</title>
    <style>
        .invoice-container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            box-shadow: 2px 2px 5px #ddd;
        }

        .invoice-element {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="invoice-container">
            <h1>Invoice</h1>
            <div class="invoice-element">
                <strong>Name:</strong>
                <asp:Label ID="fullNameLabel" runat="server"></asp:Label>
            </div>
            <div class="invoice-element">
                <strong>Phone Number:</strong>
                <asp:Label ID="phoneNumberLabel" runat="server"></asp:Label>
            </div>
            <div class="invoice-element">
                <strong>Pizza:</strong>
                <asp:Label ID="pizzaLabel" runat="server"></asp:Label>
            </div>
            <div class="invoice-element">
                <strong>Total:</strong>
                <asp:Label ID="totalLabel" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
