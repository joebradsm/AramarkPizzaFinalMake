using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace AramarkPizzaFinalMake
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

            Session["ID"] = null;

            Session["Price"] = null;

            Session["Username"] = "";

            Session["Password"] = "";

            Session["Logged"] = "No";

        }
    }
}