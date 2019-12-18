using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserViewcart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if(Session["oid"]!=null)
        //{
        //    GridView1.Visible = false;
        //    Label1.Text = Session["order"].ToString();
        //}

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
}