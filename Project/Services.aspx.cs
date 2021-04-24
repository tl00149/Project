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
    public partial class Services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null || Session["TypeVar"].ToString() != "1")
            {
                //Redirect to login
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblDesc.Visible = false;
                lblPrice.Visible = false;
            }
        }

        protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            // declare SQLDataReader
            SqlDataReader readerOne;

            // declare SQLConnection
            SqlConnection connectionOne = new SqlConnection(Source3.ConnectionString);

            // declare SQLCommand with command
            SqlCommand commandOne = new SqlCommand(Source3.SelectCommand);

            // Defining the connection
            commandOne.Connection = connectionOne;

            commandOne.Parameters.AddWithValue("@Serv_ID", ddlMonth.SelectedValue.ToString());

            // Open the connection to DB
            connectionOne.Open();

            // Execute and populate datareader with results of query
            readerOne = commandOne.ExecuteReader(CommandBehavior.CloseConnection);


            // Loop through values to assign variables for email and pass
            while (readerOne.Read())
            {
                lblID.Text = Convert.ToString(readerOne.GetInt32(0));
                lblDesc.Text = readerOne.GetString(2).Trim();
                imgPic.ImageUrl = readerOne.GetString(5);
                imgPic.Height = 150;
                imgPic.Width = 150;
                lblPrice.Text = "$" + Convert.ToString(readerOne.GetDecimal(3));
                lblDesc.Visible = true;
                lblPrice.Visible = true;
            }

            // Close the connection
            connectionOne.Close();
        }

        protected void btnAddCart_Click(object sender, EventArgs e)
        {
            SqlConnection CartCon = new SqlConnection(Source4.ConnectionString);
            SqlCommand CartIns = new SqlCommand(Source4.InsertCommand);
            CartIns.Connection = CartCon;
            CartIns.Parameters.AddWithValue("@Li_ID", Convert.ToInt32(Session["Cust_ID"].ToString())); //Session Var ID for name? Convert.ToInt32(Session["Cust_ID"].ToString())
            CartIns.Parameters.AddWithValue("@Serv_ID", Convert.ToInt32(lblID.Text));
            CartIns.Parameters.AddWithValue("@Serv_Qty", Convert.ToInt32(ddlQty.Text));
            CartCon.Open();
            CartIns.ExecuteNonQuery();
            CartCon.Close();
            Response.Redirect("Cart.aspx");
            
        }
    }
}