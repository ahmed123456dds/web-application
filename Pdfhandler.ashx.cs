using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace aipt_egypt
{
    /// <summary>
    /// Summary description for Pdfhandler
    /// </summary>
    public class imageViewer : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            Int32 theID;
            if (context.Request.QueryString["id"] != null)
                theID = Convert.ToInt32(context.Request.QueryString["id"]);
            else
                throw new ArgumentException("No parameter specified");
            context.Response.ContentType = "Application / pdf";
            Stream strm = DisplayImage(theID);
            byte[] buffer = new byte[2048];
            int byteSeq = strm.Read(buffer, 0, 2048);
            while (byteSeq > 0)
            {
                context.Response.OutputStream.Write(buffer, 0, byteSeq);
                byteSeq = strm.Read(buffer, 0, 2048);
            }
        }
            public Stream DisplayImage(int theID)
        {
            string str = @"Data Source=DESKTOP-33BFETB;Initial Catalog=aipt;Persist Security Info=True;User ID=sa;Password=123";
            SqlConnection connection = new SqlConnection(str);
            string sql = "SELECT document FROM tpdf WHERE id = @id";
            SqlCommand cmd = new SqlCommand(sql, connection);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", theID);
            connection.Open();
            object theImg = cmd.ExecuteScalar();
            try
            {
                return new MemoryStream((byte[])theImg);
            }
            catch
            {
                return null;
            }
            finally
            {
                connection.Close();
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}