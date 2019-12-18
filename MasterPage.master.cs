using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        btnOuticon.Visible = false;
        if (Session["uid"] != null)
        {
            lblsession.Text = Session["uid"].ToString();
            DataSet ds = DbConnection.FetchData("select user_name from user_table where user_email='" + lblsession.Text+ "'");

            if (ds.Tables[0].Rows.Count == 1)
            {
                lblUsernme.Text = "Hi! " + ds.Tables[0].Rows[0]["user_name"].ToString(); ;
                btnOuticon.Visible = true;
            }
            else
            {
                lblUsernme.Text = "Hi! Guest ";
                btnOuticon.Visible = true;
            }
            LblTC.Text = GridView1.Rows.Count.ToString();


        }
        else
        {
            doption.Visible = false;
            btnOuticon.Visible = false;
            lblUsernme.Visible = false;

        }

    }


    protected void btnLgicon_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void btnOuticon_Click(object sender, ImageClickEventArgs e)
    {
        Session["pid"] = null;
        Session["uid"] = null;
        Response.Redirect("Index.aspx");
        lblUsernme.Visible = false;
        btnOuticon.Visible = false;
        
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.facebook.com/HomeBazarcom-1688807604513264/");
    }





    protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    {
        Session["sid"] = txtSearch.Text;
        Response.Redirect("Search.aspx");

    }

    //protected void btnCart_Click(object sender, EventArgs e)
    //{
    //    if(Session["uid"]!=null)
    //    {
    //        Response.Redirect("MyCart.aspx");

    //    }
    //    else
    //    {
    //        Response.Write("<script>alert('Please login and try again')</script>"); 
    //    }
    //}

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("NPayback.aspx");
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AdminLogin.aspx");
    }



    protected void btnCart_Click1(object sender, ImageClickEventArgs e)
    {
        if (Session["uid"] != null)
        {
            Response.Redirect("MyCart.aspx");

        }
        else
        {
            Response.Write("<script>alert('Please login and try again')</script>");
        }
    }
}
