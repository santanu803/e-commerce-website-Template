using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Adminname"] != null)
        {
            Response.Redirect("AdminPage.aspx");
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtAdminid.Text == "admin" && txtAdminpass.Text == "1234")
        {
            if (Session["uid"] == null)
            {
                Session["Adminname"] = txtAdminid.Text;
                Response.Redirect("AdminPage.aspx");
            }
            else
            {
                //Response.Write("<script>alert('Please select A Quantity Unit')</script>");
                Response.Write("<script>alert('You are logged in as a user Please LogOut and Try again')</Script>");
            }


        }
        else
        {
            //lblerror.Text = "* Invalid Admin_id or password";
        }
    }
}