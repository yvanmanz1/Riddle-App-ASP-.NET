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
    public partial class adminprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                display();
            }
        }

        SqlConnection conn = new SqlConnection(@"Data Source=Yvan-PC\SQLEXPRESS;Initial Catalog=RIDDLE_DB;Integrated Security=True");

        private void display()
        {
          //  SqlConnection conn = new SqlConnection();
        //    if (conn.State == ConnectionState.Closed)
           //     conn.Open();
            String sql = "SELECT * From users";
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            int ID;
            int.TryParse(id.Text, out ID);
            String sqlquery = "UPDATE users set name = @v_status where user_id = @v_id";

            SqlCommand cmd = new SqlCommand(sqlquery, conn);
            cmd.Parameters.AddWithValue("@v_status", status.Text);
            cmd.Parameters.AddWithValue("@v_id", ID);

            if (conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

              



            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int ID;
            int.TryParse(id.Text, out ID);
            String sqlquery = "DELETE from users where user_id = @v_id";

            SqlCommand cmd = new SqlCommand(sqlquery, conn);
           
            cmd.Parameters.AddWithValue("@v_id", ID);

            if (conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();





            }
        }
    }
}