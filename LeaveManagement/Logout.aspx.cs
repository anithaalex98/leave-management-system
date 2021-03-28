using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaveManagement
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null & Session["sid"] != null)
            {
                Session.Abandon();
                Session.Remove("email");
                Session.Remove("sid");
                Response.Redirect("~/Login.aspx");
            }
            else if (Session["admin"] != null)
            {
                Session.Abandon();
                Session.Remove("admin");
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}