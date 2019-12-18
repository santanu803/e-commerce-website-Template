using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Adminname"] != null)
        {
            lblUsernme.Text = Session["Adminname"].ToString();


            lblnoty.Text = GridView1.Rows.Count.ToString();
            int c = Convert.ToInt32(lblnoty.Text);
            if (c == 0)
            {
                doption.Visible = false;
                btnLink.Visible = false;
            }
            else
            {
              
                doption.Visible = true;
                btnLink.Visible = true;

                


            }
            lblCount.Text = GridView1.Rows.Count.ToString();
        }
        else
        {
            Response.Redirect("AdminLogin.aspx");
        }
      
    }

    protected void btnAlogout_Click(object sender, ImageClickEventArgs e)
    {
        Session["Adminname"] = null;
        Response.Redirect("AdminLogin.aspx");
    }

    protected void btnLink_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowOrder.aspx");
    }
}
