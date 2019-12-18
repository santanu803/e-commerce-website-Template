using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Buywithoutlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if(txtEmail.Text!=null)
        {
            bool r = DbConnection.InsertData("insert into tblCart values('" +txtEmail.Text + "','" + Session["pid"].ToString() + "','" + Session["pname"].ToString() + "','" + Session["q"].ToString() + "','" + Session["qu"].ToString() + "','" + Session["tp"].ToString() + "','" + Session["img"].ToString() + "')");
            if(r==true)
            {
                Session["uid"] = txtEmail.Text;
                Response.Redirect("Shipping.aspx");
            }

        }
    }
}