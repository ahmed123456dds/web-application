using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;

namespace aipt_egypt
{
    public partial class trademarks : System.Web.UI.Page
    {
        private SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-33BFETB;Initial Catalog=aipt;Persist Security Info=True;User ID=sa;Password=123");

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



        protected void sav_Click1(object sender, EventArgs e)
        {
            if (fileuploadEmpImage.HasFile)
            {
                // getting length of uploaded file
                int length = fileuploadEmpImage.PostedFile.ContentLength;
                //create a byte array to store the binary image data  
                byte[] imgbyte = new byte[length];
                //store the currently selected file in memeory  
                HttpPostedFile img = fileuploadEmpImage.PostedFile;
                //set the binary data  
                img.InputStream.Read(imgbyte, 0, length);
                string trademark = trad.Text;
                string clas = DropDownList1.Text;
                string regnum = reg.Text;
                string country = con.Text;
                string arabic = arb.Text;
                string markstatus = ms.Text;
                string owner = own.Text;
                string dead = TextBox1.Text;

                SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-33BFETB;Initial Catalog=aipt;Persist Security Info=True;User ID=sa;Password=123");

                connection.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO tmarks (trademark,clas,regnum,country,arabic,markstatus,owner,dead,logo) VALUES (@trademark,@clas,@regnum,@country,@arabic,@markstatus,@owner,@dead,@logo)", connection);

                cmd.Parameters.Add("@trademark", SqlDbType.NVarChar, 50).Value = trademark;
                cmd.Parameters.Add("@clas", SqlDbType.NVarChar, 50).Value = clas;
                cmd.Parameters.Add("@regnum", SqlDbType.NVarChar, 50).Value = regnum;
                cmd.Parameters.Add("@country", SqlDbType.NVarChar, 50).Value = country;
                cmd.Parameters.Add("@arabic", SqlDbType.NVarChar, 50).Value = arabic;
                cmd.Parameters.Add("@markstatus", SqlDbType.NVarChar, 50).Value = markstatus;
                cmd.Parameters.Add("@owner", SqlDbType.NVarChar, 50).Value = owner;
                cmd.Parameters.Add("@dead", SqlDbType.Date).Value = dead;
                cmd.Parameters.Add("@logo", SqlDbType.Image).Value = imgbyte;
                if ((TextBox1.Text == ""))
                {
                    cmd.Parameters["@dead"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@dead"].Value = DateTime.Parse(TextBox1.Text);
                }
                int count = cmd.ExecuteNonQuery();
                connection.Close();



                if (count == 1)
                {
                    trad.Text = string.Empty;
                    DropDownList1.Text = string.Empty;
                    reg.Text = string.Empty;
                    //con.Text = string.Empty;
                    arb.Text = string.Empty;
                    //ms.Text = string.Empty;
                    own.Text = string.Empty;
                    //TextBox1.Text = string.Empty;


                    BindGridViewData();
                }

            }
        }

    }
}
