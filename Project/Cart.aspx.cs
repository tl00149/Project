using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Project
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void cart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }


        protected void btnClearCart_Click(object sender, EventArgs e)
        {
            SqlConnection deleteConnection = new SqlConnection(SqlDataSource2.ConnectionString);
            SqlCommand deleteCom = new SqlCommand(SqlDataSource2.DeleteCommand);
            deleteCom.Connection = deleteConnection;


            deleteCom.Parameters.AddWithValue("@Li_ID", Session["Cust_ID"].ToString());
            deleteConnection.Open();
            deleteCom.ExecuteNonQuery();
            deleteConnection.Close();

        }
    }
}