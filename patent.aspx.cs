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
    public partial class patent : System.Web.UI.Page
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
                SqlDataAdapter da = new SqlDataAdapter("Select *from patn", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                int length = FileUpload1.PostedFile.ContentLength;
                byte[] imgbyte = new byte[length];
                HttpPostedFile img = FileUpload1.PostedFile;
                img.InputStream.Read(imgbyte, 0, length);
                string patn = ptnt.Text;
                string own = clnt.Text;
                string pfd = pctd.Text;
                string pcn = pctn.Text;
                string coun = con.Text;
                string sta = stu.Text;
                string stad = deads.Text;
                string fild = fid.Text;
                string clref = cref.Text;
                string airef = aire.Text;

                SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-33BFETB;Initial Catalog=aipt;Persist Security Info=True;User ID=sa;Password=123");
                connection.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO patn (patn,own,pfd,pcn,coun,sta,stad,fild,clref,airef,img) VALUES  (@patn,@own,@pfd,@pcn,@coun,@sta,@stad,@fild,@clref,@airef,@img)", connection);
                cmd.Parameters.Add("@patn", SqlDbType.NVarChar, 50).Value = patn;
                cmd.Parameters.Add("@own", SqlDbType.NVarChar, 50).Value = own;
                cmd.Parameters.Add("@pfd", SqlDbType.Date).Value = pfd;
                cmd.Parameters.Add("@pcn", SqlDbType.NVarChar, 50).Value = pcn;
                cmd.Parameters.Add("@coun", SqlDbType.NVarChar, 50).Value = coun;
                cmd.Parameters.Add("@sta", SqlDbType.NVarChar, 50).Value = sta;
                cmd.Parameters.Add("@stad", SqlDbType.Date).Value = stad;
                cmd.Parameters.Add("@fild", SqlDbType.Date).Value = fild;
                cmd.Parameters.Add("@clref", SqlDbType.NVarChar, 50).Value = clref;
                cmd.Parameters.Add("@airef", SqlDbType.NVarChar, 50).Value = airef;
                cmd.Parameters.Add("@img", SqlDbType.Image).Value = imgbyte;
                if ((deads.Text == ""))
                {
                    cmd.Parameters["@stad"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@stad"].Value = DateTime.Parse(deads.Text);
                }
                int count = cmd.ExecuteNonQuery();
                connection.Close();

                if (count == 1)
                {
                    ptnt.Text = string.Empty;
                    clnt.Text = string.Empty;
                    pctd.Text = string.Empty;
                    //con.Text = string.Empty;
                    pctn.Text = string.Empty;
                    //ms.Text = string.Empty;
                    con.Text = string.Empty;
                    stu.Text = string.Empty;
                    deads.Text = string.Empty;
                    fid.Text = string.Empty;
                    cref.Text = string.Empty;
                    aire.Text = string.Empty;

                    //TextBox1.Text = string.Empty;


                    BindGridViewData();
                }


            }
        }

        protected void fid_TextChanged(object sender, EventArgs e)
        {

        }
    }
}