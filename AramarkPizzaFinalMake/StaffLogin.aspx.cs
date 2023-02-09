using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AramarkPizzaFinalMake
{
    public partial class StaffLogin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            {
                string username = usernameTextBox.Text;
                string password = passwordTextBox.Text;

                using (PizzaInfoEntities3 db = new PizzaInfoEntities3())
                {
                    var staff = db.StaffLogins.Where(s => s.Username == username && s.Password == password).FirstOrDefault();
                    if (staff != null)
                    {
                        Session["Logged"] = "Yes";
                        Session["Username"] = staff.Username;
                        Session["Password"] = staff.Password;
                        Response.Redirect("StaffPage.aspx");
                    }
                    else
                    {
                        lblError.Text = "Username or password is incorrect. Please try again or contact administration.";
                    }
                }
            }
        }
    }
}