using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AramarkPizzaFinalMake
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {

            string PhoneNumber = phoneNumberTextBox.ToString();
            PizzaInfoEntities2 db = new PizzaInfoEntities2();
            var dbCustomers = db.Customers;

            var newCustomer = new Customer();

           

            newCustomer.First_Name = firstNameTextBox.Text;
            newCustomer.Last_Name = lastNameTextBox.Text;
            newCustomer.Phone = phoneNumberTextBox.Text;
            newCustomer.Pizza_Type = pizzaDropDownList.SelectedValue;

            


            dbCustomers.Add(newCustomer);
            db.SaveChanges();
            Session["ID"] = newCustomer.Id;
            db.SaveChanges();

            if (pizzaDropDownList.SelectedValue == "Margherita")
            {
                Session["Price"] = "£5.00";
            }

            if (pizzaDropDownList.SelectedValue == "Pepperoni")
            {
                Session["Price"] = "£10.00";
            }

            if (pizzaDropDownList.SelectedValue == "Vegetarian")
            {
                Session["Price"] = "£20.00";
            }

            if (pizzaDropDownList.SelectedValue == "BBQ Chicken")
            {
                Session["Price"] = "£15.00";
            }

            else
            {
                Session["Price"] = "£25.00";
            }

            Response.Redirect("Invoice.aspx");
        }
    }
}