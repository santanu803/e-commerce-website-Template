using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Adminname"] != null)
        {
            Response.Redirect("AdminPage.aspx");
        }
       
        Session["iid"] = null;
        

    }

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Label id = ((Label)((ImageButton)sender).Parent.FindControl("lblItemid"));
        Session["iid"] = id.Text;
        Response.Redirect("Order.aspx");
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

    }

    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {

    }
}