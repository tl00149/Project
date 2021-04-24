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
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                //Response.Redirect("Login.aspx");
            }
            else
            {
                    if (Session["TypeVar"].ToString() == "1")
                    {
                    // Session to string
                    //Change back to "UserID"
                    Response.Redirect("Login.aspx");
                    }
                }
            }

        protected void Schedule_Button(object sender, EventArgs e)
        {
            //Declare the connection from the database
            SqlConnection RegisConnection = new SqlConnection(EmpDB.ConnectionString);

            // Command
            SqlCommand RegisCommand = new SqlCommand(EmpDB.InsertCommand);

            // Connection
            RegisCommand.Connection = RegisConnection;

            // Parameters

            /**
                if ((styFall.Text == "April" || styFall.Text == "June" || styFall.Text == "September" || styFall.Text == "November") && (Convert.ToInt32(txtEmpDay.Text) > 0 && Convert.ToInt32(txtEmpDay.Text) <= 30))
                {
                    RegisCommand.Parameters.AddWithValue("@EDay", txtEmpDay.Text);
                }
                else if ((styFall.Text == "January" || styFall.Text == "March" || styFall.Text == "May" || styFall.Text == "July" || styFall.Text == "August" || styFall.Text == "October" || styFall.Text == "December") && (Convert.ToInt32(txtEmpDay.Text) > 0 && Convert.ToInt32(txtEmpDay.Text) <= 31))
                {
                RegisCommand.Parameters.AddWithValue("@EDay", txtEmpDay.Text);
                }
                else if ((styFall.Text == "February") && (Convert.ToInt32(txtEmpDay.Text) > 0 && Convert.ToInt32(txtEmpDay.Text) <= 28))
                {
                RegisCommand.Parameters.AddWithValue("@EDay", txtEmpDay.Text);
                }
                else
                {
                Response.Redirect("Employee.aspx");
                }
            **/
            RegisCommand.Parameters.AddWithValue("@EDay", txtEmpDay.Text);
            RegisCommand.Parameters.AddWithValue("@EMonth", styFall.Text);
            RegisCommand.Parameters.AddWithValue("@EYear", styEmpYear.Text);
            RegisCommand.Parameters.AddWithValue("@EHour", styEmpShift.Text);
            RegisCommand.Parameters.AddWithValue("@Cust_ID", Session["Cust_ID"]);
            RegisCommand.Parameters.AddWithValue("@ECategory", styEmpCategory.Text);

            // Open the connection
            RegisConnection.Open();

            //Execute nonquery
            RegisCommand.ExecuteNonQuery();

            // Close the connection
            RegisConnection.Close();
        }
        }
    }