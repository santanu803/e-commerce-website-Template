using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Vegetables : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Session["tid"] = null;
        Session["id"] = null;
        Session["nvid"] = null;

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

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
       
        
    }

    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {

    }
}
