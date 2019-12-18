using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class NPayback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtDate.Text= DateTime.Now.ToString("dd-MM-yy");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
            bool r = DbConnection.InsertData("insert into tblPcard values('" + txtPass.Text + "','" + txtEid.Text + "','" + txtName.Text + "','" + txtAddress.Text + "','" + txtPin.Text + "','" + txtCity.Text + "','" + txtState.Text + "','"+txtMno.Text+"','"+txtDate.Text+"','"+0.0+"')");
        if( r == true)
            {
            Session["Pcardemail"] = txtEid.Text;
            Response.Redirect("YourCard.aspx");

        }
    }

    protected void txtEid_TextChanged(object sender, EventArgs e)
    {
        DataSet ds = DbConnection.FetchData("select * from user_table where user_email ='" + txtEid.Text + "'");
        if (ds.Tables[0].Rows.Count != 1)
        {
            Response.Write("<script>alert('This email id is not registered.Please go to log in page and register your email and try again')</script>");
            txtEid.Text = "";
            txtName.Text = "";
            txtPass.Text = "";
            txtMno.Text = "";
            txtCity.Text = "";
            txtAddress.Text = "";
            txtDate.Text = "";
            txtPin.Text = "";
            txtState.Text = "";
        }

        DataSet ds1 = DbConnection.FetchData("select emailid from tblPcard where emailid ='" + txtEid.Text + "'");
        if (ds1.Tables[0].Rows.Count == 1)
        {
            Response.Write("<script>alert('This email id is alredy used')</script>");
            txtEid.Text = "";
            txtName.Text = "";
            txtPass.Text = "";
            txtMno.Text = "";
            txtCity.Text = "";
            txtAddress.Text = "";
            txtDate.Text = "";
            txtPin.Text = "";
            txtState.Text = "";
        }
    }
    

}