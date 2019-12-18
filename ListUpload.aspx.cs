using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ListUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtPstatus.Enabled = false;
        txtOrderdate.Text = DateTime.Now.ToString();

        string num = "0123456789";
        int len = num.Length;
        string otp = string.Empty;
        int otpdigit = 6;
        string finaldigit;
        int getindex;

        for (int i = 0; i < otpdigit; i++)
        {
            do
            {
                getindex = new Random().Next(0, len);
                finaldigit = num.ToCharArray()[getindex].ToString();

            }
            while (otp.IndexOf(finaldigit) != -1);
            otp += finaldigit;
            txtOid.Text = otp;
        }

        if(Session["uid"]!=null)
        {
            lblUid.Text = Session["uid"].ToString();
            txtEmail.Visible = false;
            lblEemail.Visible = false;
        }
        else
        {

            lblUid.Text = txtEmail.Text;
        }
        


        //if (!Page.IsPostBack)
        //Total = 0;
        txtPstatus.Text = "Payment Pending";
        txtsalary.Text = "00.00";

    }

    protected void ddlPmode_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnCorder_Click(object sender, EventArgs e)
    {
        string picname = FileUpload1.FileName.ToString();
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/image/OrderImage/") + picname);
        string filepath = "~/image/OrderImage/" + picname;
        imgList.ImageUrl = filepath;

        bool r1 = DbConnection.InsertData("insert into tblCart values('" + lblUid.Text + "','" + "" + "','" + "" + "','" + "" + "','" + "" + "','" + txtsalary.Text + "','" + imgList.ImageUrl + "')");
        if (r1 == true)
        {
            bool r = DbConnection.InsertData("insert into tblOrder values('" + txtOid.Text + "','" + txtName.Text + "','" + txtMno.Text + "','" + txtAddress.Text + "','" + txtLand.Text + "','" + txtPin.Text + "','" + ddlPmode.Text + "','" + txtPcard.Text + "','" + txtPstatus.Text + "','" + lblUid.Text + "','" + txtsalary.Text + "','" + "Confirmed" + "','" + txtOrderdate.Text + "','" + "waiting" + "')");
            if (r == true)
            {


                Response.Redirect("Finish.aspx");
            }
        }



        //}

        //else
        //{
        //    Response.Write("<script>alert('im main if')</script>");
        //    Response.Redirect("Finish.aspx");
        //}

    }
    
}