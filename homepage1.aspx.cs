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
    public partial class homepage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRiddles();
            }
            if (Session["UserEmail"] != null)
            {
               
               
                string userEmail = Session["UserEmail"].ToString();
                

            }
        }
        protected void rptRiddles_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(@"Data Source=Yvan-PC\SQLEXPRESS;Initial Catalog=RIDDLE_DB;Integrated Security=True");
        private void LoadRiddles()
        {
            string query = "SELECT category, question, answer FROM riddles";
            SqlCommand command = new SqlCommand(query, conn);
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            adapter.Fill(dt);
            // Bind the DataTable to the Repeater for display
            rptRiddles.DataSource = dt;
            rptRiddles.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text.Equals("Your name"))
            {
                if (Session["UserEmail"] != null)
                {
                    string userEmail = Session["UserEmail"].ToString();
                   // string score = "10";
                    UpdateUserScore(userEmail);
                    LbMessage.Text = "Correct";
                }
            }
            else
            {
                Lblmassge.Text = "Incorrect answer. Please try again.";
            }
        }

        private void UpdateUserScore(string userEmail)
        {
            string sqlquery = "UPDATE users SET score = score+10 WHERE email = @v_email";

            SqlCommand cmd = new SqlCommand(sqlquery, conn);
            
            cmd.Parameters.AddWithValue("@v_email", userEmail);

            if (conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Equals("Because they always drop their needles."))
            {
                if (Session["UserEmail"] != null)
                {
                    string userEmail = Session["UserEmail"].ToString();
                    // string score = "10";
                    UpdateUserScore(userEmail);
                    Lblmessage.Text = "Correct";
                }
            }
            else
            {
                lblmessage2.Text = "Incorrect answer. Please try again.";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text.Equals("An apple a day keeps the doctor away!"))
            {
                if (Session["UserEmail"] != null)
                {
                    string userEmail = Session["UserEmail"].ToString();
                    // string score = "10";
                    UpdateUserScore(userEmail);
                    Labelmess.Text = "Correct";
                }
            }
            else
            {
                lablmessage.Text = "Incorrect answer. Please try again.";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox4.Text.Equals("No stairs"))
            {
                if (Session["UserEmail"] != null)
                {
                    string userEmail = Session["UserEmail"].ToString();
                    // string score = "10";
                    UpdateUserScore(userEmail);
                    Label1.Text = "Correct";
                }
            }
            else
            {
                Label2.Text = "Incorrect answer. Please try again.";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (TextBox5.Text.Equals("No stairs"))
            {
                if (Session["UserEmail"] != null)
                {
                    string userEmail = Session["UserEmail"].ToString();
                    // string score = "10";
                    UpdateUserScore(userEmail);
                    Label3.Text = "Correct";
                }
            }
            else
            {
                Label4.Text = "Incorrect answer. Please try again.";
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (TextBox6.Text.Equals("Drop the S"))
            {
                if (Session["UserEmail"] != null)
                {
                    string userEmail = Session["UserEmail"].ToString();
                    // string score = "10";
                    UpdateUserScore(userEmail);
                    Label5.Text = "Correct";
                }
            }
            else
            {
                Label6.Text = "Incorrect answer. Please try again.";
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (TextBox7.Text.Equals("Dreams"))
            {
                if (Session["UserEmail"] != null)
                {
                    string userEmail = Session["UserEmail"].ToString();
                    // string score = "10";
                    UpdateUserScore(userEmail);
                    Label7.Text = "Correct";
                }
            }
            else
            {
                Label8.Text = "Incorrect answer. Please try again.";
            }
        }
    }
}