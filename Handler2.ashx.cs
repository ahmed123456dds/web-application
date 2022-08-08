using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace aipt_egypt
{
    /// <summary>
    /// Summary description for Handler2
    /// </summary>
    public class Handler2 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string imageid = context.Request.QueryString["Id"];
            SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-33BFETB;Initial Catalog=aipt;Persist Security Info=True;User ID=sa;Password=123");
            connection.Open();
            SqlCommand command = new SqlCommand("select logo from pksa where id=" + imageid, connection);
            SqlDataReader dr = command.ExecuteReader();
            dr.Read();

            context.Response.BinaryWrite((Byte[])dr[0]);
            connection.Close();
            context.Response.End();
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