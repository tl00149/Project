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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DateTime Age = DateTime.Today;
                rvDOB.MinimumValue = Age.AddYears(-100).Year.ToString();
                rvDOB.MaximumValue = Age.AddYears(-18).Year.ToString();
            }
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            //Declare the connection from the database
            SqlConnection RegisConnection = new SqlConnection(SqlDataSource1.ConnectionString);

            // Command
            SqlCommand RegisCommand = new SqlCommand(SqlDataSource1.InsertCommand);

            // Connection
            RegisCommand.Connection = RegisConnection;

            // Parameters
            RegisCommand.Parameters.AddWithValue("@Email", txtRegEmail.Text);
            RegisCommand.Parameters.AddWithValue("@Password", txtRegPassConfirm.Text);
            RegisCommand.Parameters.AddWithValue("@FName", txtRegFirst.Text);
            RegisCommand.Parameters.AddWithValue("@LName", txtRegLast.Text);
            RegisCommand.Parameters.AddWithValue("@YOB", txtRegYOB.Text);
            RegisCommand.Parameters.AddWithValue("@Address", txtRegAddress.Text);
            RegisCommand.Parameters.AddWithValue("@City", txtRegCity.Text);
            RegisCommand.Parameters.AddWithValue("@Zip", txtRegZip.Text);

            // Open the connection
            RegisConnection.Open();

            //Execute nonquery
            RegisCommand.ExecuteNonQuery();

            // Close the connection
            RegisConnection.Close();

            Response.Redirect("RegisterSuccess.aspx");

        }
    }
}