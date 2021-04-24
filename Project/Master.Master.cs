using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlMaster.SelectedValue = Request.Url.AbsolutePath;
            }
        }

        protected void ddlMaster_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect(ddlMaster.SelectedValue);
        }

    }
}