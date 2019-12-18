using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Grocerya : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Label itmid = ((Label)((ImageButton)sender).Parent.FindControl("lblItemid"));
        Session["iid"] = itmid.Text;
        Response.Redirect("Order.aspx");
    }

   
}