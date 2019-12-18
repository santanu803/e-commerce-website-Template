using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Torder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            
            Response.Redirect("Login.aspx");
        }
        else
        {


            //Ready for delivery
            foreach (GridViewRow gvr2 in GridView2.Rows)
            {
                string ostatus = ((Label)gvr2.FindControl("lblOstatus")).Text;
                Button cancle = ((Button)gvr2.FindControl("btnCancel"));
                if (ostatus == "Ready for delivery")
                {
                    cancle.Enabled = false;
                }
            }
        }
    }


    protected void btnCancel_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow gvr in GridView2.Rows)
        {

            string iname = ((Label)gvr.FindControl("lbloid")).Text;
        
            DbConnection.InsertData("delete from tblOrder where oid='" +iname+"'");

            Response.Redirect("Torder.aspx");
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Label oid = ((Label)((ImageButton)sender).Parent.FindControl("lbloid"));
        Session["oid"] = oid.Text;
        Response.Redirect("UserViewcart.aspx");
       
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}