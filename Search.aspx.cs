using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace apit
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Gridtra.Visible = true;
            GridView1.Visible = false;
            GridView2.Visible = false;
            cont.Visible = false;
            gridms.Visible = false;
            gridnot.Visible = false;
            cancel.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            Gridtra.Visible = false;
            GridView2.Visible = false;
            cont.Visible = false;
            gridms.Visible = false;
            gridnot.Visible = false;
            cancel.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            GridView1.Visible = false;
            Gridtra.Visible = false;
            cont.Visible = false;
            gridms.Visible = false;
            gridnot.Visible = false;
            cancel.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Gridtra.Visible = false;
            GridView1.Visible = false;
            GridView2.Visible = false;
            cont.Visible = false;
            gridms.Visible = false;
            gridnot.Visible = false;
            cancel.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            cont.Visible = true;
            Gridtra.Visible = false;
            GridView1.Visible = false;
            GridView2.Visible = false;
            gridms.Visible = false;
            gridnot.Visible = false;
            cancel.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            gridms.Visible = true;
            Gridtra.Visible = false;
            GridView1.Visible = false;
            GridView2.Visible = false;
            cont.Visible = false;
            gridnot.Visible = false;
            cancel.Visible = true;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            gridnot.Visible = true;
            Gridtra.Visible = false;
            GridView1.Visible = false;
            GridView2.Visible = false;
            cont.Visible = false;
            gridms.Visible = false;
            cancel.Visible = true;
        }
    }
}