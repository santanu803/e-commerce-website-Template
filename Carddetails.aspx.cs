using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Carddetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        Label10.Visible = false;
        Label11.Visible = false;
        Label12.Visible = false;

        cardnoLabel.Visible = false;
        nameLabel.Visible = false;
        mobileLabel.Visible = false;
        DOILabel.Visible = false;
        addressLabel.Visible = false;
        cityLabel.Visible = false;
        pinLabel.Visible = false;
        stateLabel.Visible = false;
        balanceLabel.Visible = false;


        txtEid.Visible = false;
        btnGo.Visible = false;
        lblM.Visible = false;
       // LinkButton1.Visible = false;
    }

    protected void btnCheck_Click(object sender, EventArgs e)
    {
        if (txtCardno.Text == null || txtpass.Text == null)
        {
            Response.Write("<script>alert('Please Enter your card no')</script>");

        }
        else
        {
            DataSet ds = DbConnection.FetchData("select * from tblPcard where cardno='" + txtCardno.Text + "' and password='" + txtpass.Text + "'");

            if (ds.Tables[0].Rows.Count == 1)
            {
                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                Label9.Visible = true;
                Label10.Visible = true;
                Label11.Visible = true;
                Label12.Visible = true;

                cardnoLabel.Visible = true;
                nameLabel.Visible = true;
                mobileLabel.Visible = true;
                DOILabel.Visible = true;
                addressLabel.Visible = true;
                cityLabel.Visible = true;
                pinLabel.Visible = true;
                stateLabel.Visible = true;
                balanceLabel.Visible = true;

                LinkButton1.Visible = true;


                cardnoLabel.Text = ds.Tables[0].Rows[0]["cardno"].ToString();
                nameLabel.Text = ds.Tables[0].Rows[0]["name"].ToString();
                mobileLabel.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
                DOILabel.Text = ds.Tables[0].Rows[0]["DOI"].ToString();
                addressLabel.Text = ds.Tables[0].Rows[0]["address"].ToString();
                cityLabel.Text = ds.Tables[0].Rows[0]["city"].ToString();
                pinLabel.Text = ds.Tables[0].Rows[0]["pin"].ToString();
                stateLabel.Text = ds.Tables[0].Rows[0]["state"].ToString();
                balanceLabel.Text = ds.Tables[0].Rows[0]["balance"].ToString();
            }

            else
            {
                Response.Write("<script>alert('Please check your password.')</script>");
            }
        }
    }
    protected void btnClose_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("YourCard.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        txtEid.Visible = true;
        btnGo.Visible = true;
        LinkButton1.Visible = false;
        lblM.Visible = true;
        btnCheck.Visible = false;
        btnClose.Visible = false;
        txtCardno.Visible = false;
        txtpass.Visible = false;
        Label1.Visible = false;
        Label2.Visible = false;
    }

    protected void btnGo_Click(object sender, ImageClickEventArgs e)
    {
        if(txtEid.Text!="")
        {
            DataSet ds = DbConnection.FetchData("select * from tblPcard where emailid ='" + txtEid.Text + "'");
            if (ds.Tables[0].Rows.Count != 1)
            {
                Response.Write("<script>alert('SORRY ! This email id is not registered with any payback card.')</script>");
                txtEid.Visible = true;
                btnGo.Visible = true;
                LinkButton1.Visible = false;
                lblM.Visible = true;
            }
            else
            {
                Session["Pcardemail"] = txtEid.Text;
                Response.Redirect("YourCard.aspx");
            }

                

        }
        else
        {
            Response.Write("<script>alert('please enter your email id')</script>");
            txtEid.Visible = true;
            btnGo.Visible = true;
            LinkButton1.Visible = false;
            lblM.Visible = true;
        }
       
    }
}
    
