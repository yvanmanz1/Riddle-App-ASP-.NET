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
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRiddles();
            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=Yvan-PC\SQLEXPRESS;Initial Catalog=RIDDLE_DB;Integrated Security=True");
        protected void rptRiddles_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

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
    }
}