using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class LoginSuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (lblUser.Text == "")
                {
                    if (Session["UserID"] != null)
                    {
                        // Session to string
                        lblUser.Text = Session["UserID"].ToString();
                    }
                    else
                    {
                        // Redirect to login
                        Response.Redirect("Login.aspx");
                    }
                }
            }
        }
    }
}