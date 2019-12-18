using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class grocery : System.Web.UI.Page
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

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnAll_Click(object sender, EventArgs e)
    {
        Response.Redirect("Grocerya.aspx");
    }

    protected void btnRice_Click(object sender, EventArgs e)
    {

        //Label iid = ((Label)((Button)sender).Parent.FindControl("lblItemid"));
        Label subcat = ((Label)((Button)sender).Parent.FindControl("lblsubcat"));

    }

    protected void btnDal_Click(object sender, EventArgs e)
    {

    }

    protected void btnOil_Click(object sender, EventArgs e)
    {

    }

    protected void btnHoil_Click(object sender, EventArgs e)
    {

    }

    protected void btnCookies_Click(object sender, EventArgs e)
    {

    }

    
}