using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["pid"] != null)
        {
            lblmsg.Text = "Buy Your Product With out Login";
        }
        else
        {
            lblmsg.Visible = false;
        }

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        DataSet ds = DbConnection.FetchData("select * from user_table where user_email='" + txtUserid.Text + "' and password='" + txtUserpass.Text + "'");

        if (ds.Tables[0].Rows.Count == 1)
        {
            //Response.Write("<script>alert('Login successfull')</script>");
            if (Session["pid"] != null)
            {
                Session["uid"] = txtUserid.Text;
                Response.Redirect("Order.aspx");


            }
            else
            {
                Session["uid"] = txtUserid.Text;
                Response.Redirect("Index.aspx");
            }


        }
        else
        {
            Response.Write("<script>alert('Please check your user id or passsword and try again')</script>");
        }
    }

    protected void btnClose_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Index.aspx");
    }
}