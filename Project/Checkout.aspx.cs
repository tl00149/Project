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
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Cust_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Check_Click(object sender, EventArgs e)
        {
            // declare SQLDataReader
            SqlDataReader readerOne;

            // declare SQLConnection
            SqlConnection connectionOne = new SqlConnection(SqlDataSource1.ConnectionString);

            // declare SQLCommand with command
            SqlCommand commandOne = new SqlCommand(SqlDataSource1.InsertCommand);

            // Defining the connection
            commandOne.Connection = connectionOne;

            // Parameters
            commandOne.Parameters.AddWithValue("@Name", txtName.Text);
            commandOne.Parameters.AddWithValue("@City", TextBox2.Text);
            commandOne.Parameters.AddWithValue("@State", TextBox3.Text);
            commandOne.Parameters.AddWithValue("@Zip", TextBox4.Text);
            commandOne.Parameters.AddWithValue("@Card", TextBox5.Text);
            commandOne.Parameters.AddWithValue("@CVV", txtCVV.Text);


            // Open the connection to DB
            connectionOne.Open();

            // Execute and populate datareader with results of query
            readerOne = commandOne.ExecuteReader(CommandBehavior.CloseConnection);

            // Close the connection
            connectionOne.Close();

            Response.Redirect("ThankYou.aspx");
        }
    }
}