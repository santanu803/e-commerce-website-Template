using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnVcart_Click(object sender, EventArgs e)
    {
        Label oid = ((Label)((Button)sender).Parent.FindControl("lbloid"));
        Label cartid = ((Label)((Button)sender).Parent.FindControl("lblUid"));
        Label otime = ((Label)((Button)sender).Parent.FindControl("lbltime"));
        Session["ucartid"] = cartid.Text;
       
        Session["orderid"] = oid.Text;

        Session["time"] = otime.Text;


        Response.Redirect("AdminViewCart.aspx");
    }
}