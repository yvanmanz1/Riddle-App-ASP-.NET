using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;


namespace GymManagementSystem
{
    public partial class userlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(@"Data Source=Yvan-PC\SQLEXPRESS;Initial Catalog=RIDDLE_DB;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            String sqlquery = "SELECT  email, password FROM users WHERE email=@v_email";
            SqlCommand cmd = new SqlCommand(sqlquery, conn);
            cmd.Parameters.AddWithValue("@v_email", emailBox.Text);

            if (conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                // Check user credentials
                while (rdr.Read())
                {
                    String passwordFromDB = rdr.GetValue(1).ToString();
                    if (passwordFromDB.Equals(PaswordBox.Text))
                    {
                        string userEmail = rdr["email"].ToString();

                        Session["UserEmail"] = userEmail;

                        Response.Redirect("homepage1.aspx");
                        return;  // Exit the method if user credentials are correct
                    }
                    else
                    {
                        Response.Write("Wrong Credentials");
                    }
                }

                // Check admin credentials outside the loop
                if (emailBox.Text == "admin@riddle.com" && PaswordBox.Text == "admin")
                {
                   
                  //  Roles.AddUserToRole(emailBox.Text, "Admin");
                    Response.Redirect("adminprofile2.aspx");
                }
                else
                {
                    Response.Write("Wrong Credentials"); // This should probably be a more specific message
                }
            }

            conn.Close(); // Close the connection
        }
    }
}