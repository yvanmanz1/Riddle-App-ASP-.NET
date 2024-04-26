using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace GymManagementSystem
{
    public partial class adminprofile2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                display();
            }
        }

        SqlConnection conn = new SqlConnection(@"Data Source=Yvan-PC\SQLEXPRESS;Initial Catalog=RIDDLE_DB;Integrated Security=True");
        protected void Create_Click(object sender, EventArgs e)
        {
            try {
                String sqlquery = "insert into riddles(category,question,answer) values(@v_names,@v_email,@v_password)";

                SqlCommand cmd = new SqlCommand(sqlquery, conn);
                cmd.Parameters.AddWithValue("@v_names", names.Text);
                cmd.Parameters.AddWithValue("@v_email", email.Text);
                cmd.Parameters.AddWithValue("@v_password", v_password.Text);
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    
                    




                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }

        private void display()
        {
            //  SqlConnection conn = new SqlConnection();
            //    if (conn.State == ConnectionState.Closed)
            //     conn.Open();
            String sql = "SELECT * From riddler";
            //create pool
            // SqlCommand cmd = new  SqlCommand("view_all_data", conn);
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable datatable = new DataTable(); // import system.data
            adapter.Fill(datatable);
            GridView1.DataSource = datatable;
            GridView1.DataBind();
            /* sda.SelectCommand.CommandType = CommandType.StoredProcedure;
             DataSet ds = new DataSet();
             sda.Fill(ds);
             GridView1.DataSource = ds;
             GridView1.DataBind();
             conn.Close();*/

        }

        protected void update_Click(object sender, EventArgs e)
        {
            String sqlquery = "UPDATE riddles set answer = @v_password where category = @v_email";

            SqlCommand cmd = new SqlCommand(sqlquery, conn);
            cmd.Parameters.AddWithValue("@v_password", v_password.Text);
            cmd.Parameters.AddWithValue("@v_email", email.Text);

            if (conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();





            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            String sqlquery = "DELETE from riddles where category = @v_email";

            SqlCommand cmd = new SqlCommand(sqlquery, conn);

            cmd.Parameters.AddWithValue("@v_email", email.Text);

            if (conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();





            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String sqlquery = "insert into trainers(name,email,password) values(@v_names,@v_email,@v_password)";

                SqlCommand cmd = new SqlCommand(sqlquery, conn);
                cmd.Parameters.AddWithValue("@v_names", names.Text);
                cmd.Parameters.AddWithValue("@v_email", email.Text);
                cmd.Parameters.AddWithValue("@v_password", v_password.Text);
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Write("Account created succesfully");
                    Response.Redirect("userlogin.aspx");




                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}