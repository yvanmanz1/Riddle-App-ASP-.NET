using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using BCrypt;

namespace GymManagementSystem
{
    public partial class usersignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // Roles.AddUserToRole("username", "User");
        }
        SqlConnection conn = new SqlConnection(@"Data Source=Yvan-PC\SQLEXPRESS;Initial Catalog=RIDDLE_DB;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (v_password.Text.Equals(ConfirmBox.Text))
            {
              
                string hashedPassword = BCrypt.Net.BCrypt.HashPassword(v_password.Text);

                String sqlquery = "insert into users(names,dob,contact,email,password) values(@v_names,@v_dob,@v_contact,@v_email,@v_password)";

                SqlCommand cmd = new SqlCommand(sqlquery, conn);
                cmd.Parameters.AddWithValue("@v_names", names.Text);
                cmd.Parameters.AddWithValue("@v_dob", dob.Text);
                cmd.Parameters.AddWithValue("@v_contact", contact.Text);
                cmd.Parameters.AddWithValue("@v_email", email.Text);
                
                cmd.Parameters.AddWithValue("@v_password", v_password.Text); 

                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Write("Account created successfully");
                    Response.Redirect("userlogin.aspx");
                }
                else
                {
                    Response.Write("Error creating account");
                }
            }
            else
            {
                Response.Write("Passwords don't match");
            }

        }
        }
    }
