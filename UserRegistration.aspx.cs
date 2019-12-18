using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        bool r = DbConnection.InsertData("insert into user_table values('" + txtName.Text + "','" + txtEmail.Text + "','" + txtPass.Text + "','" + txtCpass.Text + "','" + txtMobile.Text + "','" + txtDate.Text + "','" + RadioButtonList1.Text + "')");
        if (r == true)
        {
            Response.Write("<script>alert('Sign Up Process Sucessfull')</script>");
            Response.Redirect("Login.aspx");
            txtName.Text = "";
            txtEmail.Text = "";
            txtDate.Text = "";
            txtCpass.Text = "";
            txtPass.Text = "";
            txtMobile.Text = "";
            RadioButtonList1.Text = "";

        }
        else
        {
            Response.Write("<script>alert('Please Input Valid Data')</script>");
        }

    }

    protected void btnClose_Click(object sender, ImageClickEventArgs e)
    {

        //txtCpass.Text = "0";
        //txtDate.Text = "0";
        //txtEmail.Text = "exmpl@exmpl.com";
        //txtMobile.Text = "0000000000";
        //txtName.Text = "a";
        //txtPass.Text = "0";
        Response.Redirect("Login.aspx");
    }
}