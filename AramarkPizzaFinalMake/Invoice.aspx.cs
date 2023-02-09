using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AramarkPizzaFinalMake
{
    public partial class Invoice : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                int id = (int)Session["ID"];

                using (PizzaInfoEntities2 context = new PizzaInfoEntities2())
                {
                    Customer order = context.Customers.Find(id);

                    fullNameLabel.Text = String.Format("{0} {1}", order.First_Name, order.Last_Name);
                    phoneNumberLabel.Text = order.Phone;
                    pizzaLabel.Text = order.Pizza_Type;
                    totalLabel.Text = String.Format("{0}", Session["Price"]);

                }
            }
        }




    }
}