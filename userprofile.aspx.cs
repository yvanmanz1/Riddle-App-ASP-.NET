using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
//using iText.Kernel.Pdf;
//using iText.Layout;
//using iText.Layout.Element;



namespace GymManagementSystem
{
    public partial class userprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                display();
            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=Yvan-PC\SQLEXPRESS;Initial Catalog=RIDDLE_DB;Integrated Security=True");
        protected void Button4_Click(object sender, EventArgs e)
        {

        }
        private void display()
        {
            //  SqlConnection conn = new SqlConnection();
            //    if (conn.State == ConnectionState.Closed)
            //     conn.Open();
            String sql = "SELECT names, score FROM users ORDER BY score DESC";
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
            //using (PdfWriter writer = new PdfWriter("output.pdf"))
            //{
            //    using (PdfDocument pdf = new PdfDocument(writer))
            //    {
            //        Document document = new Document(pdf);

            //        // Add GridView to the PDF
            //        document.Add(GridView1);
            //    }
            //}
        }
    }
}