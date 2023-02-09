<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffPage.aspx.cs" Inherits="AramarkPizzaFinalMake.StaffPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Page</title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>

<body>
    <form id="form2" runat="server">
        <div style="display:flex; justify-content:center; align-items:center; height:100vh;">
            <div style="border: 1px solid #ccc; padding: 30px; box-shadow: 2px 2px 5px #ccc;">
                        <div>
                            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
                DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                    <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Pizza_Type" HeaderText="Pizza_Type" SortExpression="Pizza_Type" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\PizzaInfo.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Customer]" DeleteCommand="DELETE FROM [Customer] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Customer] ([First_Name], [Last_Name], [Phone], [Pizza_Type]) VALUES (@First_Name, @Last_Name, @Phone, @Pizza_Type)" UpdateCommand="UPDATE [Customer] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Phone] = @Phone, [Pizza_Type] = @Pizza_Type WHERE [Id] = @Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="First_Name" Type="String" />
                                    <asp:Parameter Name="Last_Name" Type="String" />
                                    <asp:Parameter Name="Phone" Type="String" />
                                    <asp:Parameter Name="Pizza_Type" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="First_Name" Type="String" />
                                    <asp:Parameter Name="Last_Name" Type="String" />
                                    <asp:Parameter Name="Phone" Type="String" />
                                    <asp:Parameter Name="Pizza_Type" Type="String" />
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                <br />
                <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" CssClass="auto-style1" />
            </div>
        </div>
    </form>
</body>

</html>