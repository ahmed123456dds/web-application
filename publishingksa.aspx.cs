using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace aipt_egypt
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-33BFETB;Initial Catalog=aipt;Persist Security Info=True;User ID=sa;Password=123");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
        private void Bindgridview()
        {
            string CS = ConfigurationManager.ConnectionStrings["aiptConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select *from pksa", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
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
                string trademark = trm.Text;
                string clas = cls.Text;
                string filingnumber = filn.Text;
                string date = dat.Text;
                string owner = own.Text;

                SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-33BFETB;Initial Catalog=aipt;Persist Security Info=True;User ID=sa;Password=123");
                connection.Open();

                SqlCommand cmd = new SqlCommand("INSERT INTO pksa (trademark,clas,filingnumber,date,owner,logo) VALUES (@trademark,@clas,@filingnumber,@date,@owner,@logo)", connection);

                cmd.Parameters.Add("@trademark", SqlDbType.NVarChar, 50).Value = trademark;
                cmd.Parameters.Add("@clas", SqlDbType.NVarChar, 50).Value = clas;
                cmd.Parameters.Add("@filingnumber", SqlDbType.NVarChar, 50).Value = filingnumber;
                cmd.Parameters.Add("@date", SqlDbType.Date).Value = date;
                cmd.Parameters.Add("@owner", SqlDbType.NVarChar, 50).Value = owner;
                cmd.Parameters.Add("@logo", SqlDbType.Image).Value = imgbyte;

                int count = cmd.ExecuteNonQuery();

                connection.Close();
                if (count == 1)
                {
                    trm.Text = string.Empty;
                    cls.Text = string.Empty;
                    filn.Text = string.Empty;
                    dat.Text = string.Empty;
                    own.Text = string.Empty;

                    Bindgridview();

                }


            }
        }
    }
}