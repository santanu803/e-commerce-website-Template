using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["uid"]!=null)
        {
            txtUid.Text= Session["uid"].ToString();
            txtUid.Visible = false;
            lbluid.Visible = false;
        }
        else
        {
            txtUid.Visible = true;
            lbluid.Visible = true;
        }

    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        bool r = DbConnection.InsertData("insert into tblFeedback values('" + txtUid.Text + "','" + txtSms.Text + "') ");
        if (r == true)
        {
            Response.Write("<script>alert('We Recieve Your Feedback')</script>");
            txtUid.Text = "";
            txtSms.Text = "";
        }
    }

    protected void btncancle_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }
}