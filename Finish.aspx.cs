using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Finish : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
        //if(Session["cashback"]!=null)
        //{
        //    lblcashbacksession.Text = Session["cashback"].ToString();
        //}
        //if (Session["if"] != null)
        //{
        //    lblcardno.Text = Session["if"].ToString();
        //}

    }

    protected void btnCshopping_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }
}