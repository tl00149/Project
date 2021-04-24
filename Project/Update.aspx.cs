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
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                txtUpFName.Visible = false;
                txtUpLName.Visible = false;
                txtUpEmail.Visible = false;
                txtUpPass.Visible = false;
                txtUpPassConf.Visible = false;
                txtUpYOB.Visible = false;
                txtUpAddress.Visible = false;
                txtUpCity.Visible = false;
                txtUpZip.Visible = false;
                h1UpChange.Visible = false;

                DateTime Age = DateTime.Today;
                rvDOB2.MinimumValue = Age.AddYears(-100).Year.ToString();
                rvDOB2.MaximumValue = Age.AddYears(-18).Year.ToString();

                // declare SQLDataReader
                SqlDataReader readerOne;

                // declare SQLConnection
                SqlConnection connectionOne = new SqlConnection(SqlDataSourceUpdate.ConnectionString);

                // declare SQLCommand with command
                SqlCommand commandOne = new SqlCommand(SqlDataSourceUpdate.SelectCommand);

                // Defining the connection
                commandOne.Connection = connectionOne;

                // Define what values are sent to database
                commandOne.Parameters.AddWithValue("@Email", Session["Email"].ToString());

                // Open the connection to DB
                connectionOne.Open();

                // Execute and populate datareader with results of query
                readerOne = commandOne.ExecuteReader(CommandBehavior.CloseConnection);


                // Loop through values to assign variables for email and pass
                while (readerOne.Read())
                {
                    lblUpEmail.Text = readerOne.GetString(1).Trim();
                    lblUpPass.Text = readerOne.GetString(2).Trim();
                    lblUpFName.Text = readerOne.GetString(3).Trim();
                    lblUpLName.Text = readerOne.GetString(4).Trim();
                    lblUpYOB.Text = readerOne.GetInt32(5).ToString().Trim();
                    lblUpAddress.Text = readerOne.GetString(6).Trim();
                    lblUpCity.Text = readerOne.GetString(7).Trim();
                    lblUpZip.Text = readerOne.GetInt32(8).ToString().Trim();
                    if (Session["TypeVar"].ToString() == "1")
                    {
                        lblUpType.Text = "Customer";
                    }
                    else
                    {
                        lblUpType.Text = "Employee";
                    }
                }

                // Close the connection
                connectionOne.Close();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }


        protected void chUpFName_CheckedChanged(object sender, EventArgs e)
        {
            if (chUpFName.Checked == true)
            {
                txtUpFName.Visible = true;
                h1UpChange.Visible = true;
            }
            else
            {
                txtUpFName.Visible = false;
                h1UpChange.Visible = false;
            }
        }


        protected void chUpPass_CheckedChanged(object sender, EventArgs e)
        {
            if (chUpPass.Checked == true)
            {
                txtUpPass.Visible = true;
                txtUpPassConf.Visible = true;
                h1UpChange.Visible = true;
            }
            else
            {
                txtUpPass.Visible = false;
                txtUpPassConf.Visible = false;
                h1UpChange.Visible = false;
            }
        }

        protected void chUpYOB_CheckedChanged(object sender, EventArgs e)
        {
            if (chUpYOB.Checked == true)
            {
                txtUpYOB.Visible = true;
                h1UpChange.Visible = true;
            }
            else
            {
                txtUpYOB.Visible = false;
                h1UpChange.Visible = false;
            }
        }

        protected void chUpLName_CheckedChanged(object sender, EventArgs e)
        {
            if (chUpLName.Checked == true)
            {
                txtUpLName.Visible = true;
                h1UpChange.Visible = true;
            }
            else
            {
                txtUpLName.Visible = false;
                h1UpChange.Visible = false;
            }
        }

        protected void chUpEmail_CheckedChanged(object sender, EventArgs e)
        {
            if (chUpEmail.Checked == true)
            {
                txtUpEmail.Visible = true;
                h1UpChange.Visible = true;
            }
            else
            {
                txtUpEmail.Visible = false;
                h1UpChange.Visible = false;
            }
        }

        protected void chUpAddress_CheckedChanged(object sender, EventArgs e)
        {
            if (chUpAddress.Checked == true)
            {
                txtUpAddress.Visible = true;
                h1UpChange.Visible = true;
            }
            else
            {
                txtUpAddress.Visible = false;
                h1UpChange.Visible = false;
            }
        }

        protected void chUpCity_CheckedChanged(object sender, EventArgs e)
        {
            if (chUpCity.Checked == true)
            {
                txtUpCity.Visible = true;
                h1UpChange.Visible = true;
            }
            else
            {
                txtUpCity.Visible = false;
                h1UpChange.Visible = false;
            }
        }

        protected void chUpZip_CheckedChanged(object sender, EventArgs e)
        {
            if (chUpZip.Checked == true)
            {
                txtUpZip.Visible = true;
                h1UpChange.Visible = true;
            }
            else
            {
                txtUpZip.Visible = false;
                h1UpChange.Visible = false;
            }
        }

        protected void SubmitUp_Click(object sender, EventArgs e)
        {

            // declare SQLConnection
            SqlConnection connectionOne = new SqlConnection(SqlDataSourceUpdate.ConnectionString);

            // declare SQLCommand with command
            SqlCommand commandOne = new SqlCommand(SqlDataSourceUpdate.UpdateCommand);

            // Defining the connection
            commandOne.Connection = connectionOne;

            // Define what values are sent to database
            commandOne.Parameters.AddWithValue("@Email", Session["Email"].ToString());

            // logical statement to see which data to store
            // FName
            if (chUpFName.Checked == true)
            {
                commandOne.Parameters.AddWithValue("@FName", txtUpFName.Text);
            }
            else
            {
                commandOne.Parameters.AddWithValue("@FName", lblUpFName.Text);
            }

            // LName
            if (chUpLName.Checked == true)
            {
                commandOne.Parameters.AddWithValue("@LName", txtUpLName.Text);
            }
            else
            {
                commandOne.Parameters.AddWithValue("@LName", lblUpLName.Text);
            }

            // Password
            if (chUpPass.Checked == true)
            {
                commandOne.Parameters.AddWithValue("@Password", txtUpPass.Text);
            }
            else
            {
                commandOne.Parameters.AddWithValue("@Password", lblUpPass.Text);
            }

            // YOB
            if (chUpYOB.Checked == true)
            {
                commandOne.Parameters.AddWithValue("@YOB", Convert.ToInt32(txtUpYOB.Text));
            }
            else
            {
                commandOne.Parameters.AddWithValue("@YOB", Convert.ToInt32(lblUpYOB.Text));
            }

            if (chUpAddress.Checked == true)
            {
                commandOne.Parameters.AddWithValue("@Address", txtUpAddress.Text);
            }
            else
            {
                commandOne.Parameters.AddWithValue("@Address", lblUpAddress.Text);
            }

            if (chUpCity.Checked == true)
            {
                commandOne.Parameters.AddWithValue("@City", txtUpCity.Text);
            }
            else
            {
                commandOne.Parameters.AddWithValue("@City", lblUpCity.Text);
            }

            if (chUpZip.Checked == true)
            {
                commandOne.Parameters.AddWithValue("@Zip", Convert.ToInt32(txtUpZip.Text));
            }
            else
            {
                commandOne.Parameters.AddWithValue("@Zip", Convert.ToInt32(lblUpZip.Text));
            }

            // Open the connection to DB
            connectionOne.Open();

            // Execute and populate datareader with results of query
            commandOne.ExecuteNonQuery();

            connectionOne.Close();


            // Post update, copying original page load
            txtUpFName.Visible = false;
            txtUpLName.Visible = false;
            txtUpEmail.Visible = false;
            txtUpPass.Visible = false;
            txtUpPassConf.Visible = false;
            txtUpYOB.Visible = false;
            txtUpAddress.Visible = false;
            txtUpCity.Visible = false;
            txtUpZip.Visible = false;
            h1UpChange.Visible = false;
            chUpFName.Checked = false;
            chUpLName.Checked = false;
            chUpPass.Checked = false;
            chUpYOB.Checked = false;
            chUpAddress.Checked = false;
            chUpCity.Checked = false;
            chUpZip.Checked = false;


            Response.Redirect("Update.aspx");
                        /*
            // declare SQLDataReader
            SqlDataReader readerOne;

            // Switch to select command
            commandOne.CommandText = SqlDataSourceUpdate.SelectCommand; 

            // Defining the connection
            commandOne.Connection = connectionOne;

            // Open the connection to DB
            connectionOne.Open();

            // Execute and populate datareader with results of query
            readerOne = commandOne.ExecuteReader(CommandBehavior.CloseConnection);


            // Loop through values to assign variables for email and pass
            while (readerOne.Read())
            {
                lblUpEmail.Text = readerOne.GetString(0).Trim();
                lblUpPass.Text = readerOne.GetString(1).Trim();
                lblUpFName.Text = readerOne.GetString(2).Trim();
                lblUpLName.Text = readerOne.GetString(3).Trim();
                lblUpYOB.Text = readerOne.GetInt32(4).ToString().Trim();
            }

            // Close the connection
            connectionOne.Close();
            */
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            SqlConnection deleteConnection = new SqlConnection(SqlDataSourceUpdate.ConnectionString);
            SqlCommand deleteCom = new SqlCommand(SqlDataSourceUpdate.DeleteCommand);
            deleteCom.Connection = deleteConnection;
            if (chDeleteAcc.Checked == true)
            {

                deleteCom.Parameters.AddWithValue("@Email", Session["Email"].ToString());
                deleteConnection.Open();
                deleteCom.ExecuteNonQuery();
                deleteConnection.Close();
                Session["Email"] = null;
                Session["UserID"] = null;

                Response.Redirect("Goodbye.aspx");

            }
            else
            {
                lblDeleteAcc.Text = "Please check the textbox before clicking Delete Account";
            }

        }
    }
}