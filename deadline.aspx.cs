using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace aipt_egypt
{
    public partial class deadline : System.Web.UI.Page
    {
        private SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-RPHCFPK;Initial Catalog=aipt;User ID=saa;Password=123");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindGridViewData();
            }


        }
        private void BindGridViewData()
        {
            string CS = ConfigurationManager.ConnectionStrings["aiptConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select *from tmarks", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataBind();
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string date = TextBox1.Text;

            SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-RPHCFPK;Initial Catalog=aipt;Integrated Security=True");

            connection.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO deadline (date) VALUES (@date)", connection);
            cmd.Parameters.Add("@date", SqlDbType.Date).Value = date;

            int count = cmd.ExecuteNonQuery();

            connection.Close();
            BindGridViewData();
        }
    }

        
    }
