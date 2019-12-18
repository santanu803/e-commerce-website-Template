using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblSid.Text = Session["sid"].ToString();
        if(Session["sid"]==null)
        {
              Response.Write("<script>alert('No Item Matched')</script>");
        }

    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Label itmid = ((Label)((ImageButton)sender).Parent.FindControl("lblItemid"));
        Session["iid"] = itmid.Text;
        Response.Redirect("Order.aspx");
    }
}