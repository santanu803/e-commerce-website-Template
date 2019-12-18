using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.IO;

public partial class ForgotPass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblnpass.Visible = false;
        txtNpass.Visible = false;
        btnUpdate.Visible = false;
        btnClose.Visible = false;
        //if(lblOtp.Text==null)
        //{
            lblMsgformail.Visible = false;
            lblEnterOtp.Visible = false;
            txtOtp.Visible = false;
            btnSubmit.Visible = false;

            
        

    }

    protected void btnClose_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if(txtUid.Text=="")
        {
            Response.Write("<script>alert('Please Enter a email id')</script>");

        }
        else if(txtNpass.Text=="")
        {
            Response.Write("<script>alert('Please give a new password')</script>");
        }
        else
        {
            DataSet ds = DbConnection.FetchData("select * from user_table update user_table set password='" + txtNpass.Text + "',cpasssword='" + txtNpass.Text + "' where user_email='" + txtUid.Text + "'");
            lblmsg.Text = "Password Updated sucessffully.For login ";
            lblClick.Text = "Click here";
        }
    }

    protected void txtUid_TextChanged(object sender, EventArgs e)
    {
        DataSet ds = DbConnection.FetchData("select user_email from user_table where user_email='" + txtUid.Text + "'");
        if (ds.Tables[0].Rows.Count == 1)
        {
            txtNpass.Enabled = true;
        }
        else
        {
            Response.Write("<script>alert('Sorry this email id is not registered.Please enter a registered email id')</script>");
        }
    }

    protected void btnGotp_Click(object sender, EventArgs e)
    {

        string num = "0123456789";
        int len = num.Length;
        string otp = string.Empty;
        int otpdigit = 4;
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
            lblOtp.Text = otp;
        }
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("sastabazzr.mail@gmail.com");
        msg.To.Add(txtUid.Text);
        msg.Subject = "YOUR OTP ";
        msg.Body = "Your one time pass word  is "+lblOtp.Text;
        msg.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
        NetworkCred.UserName = "homebazzar.com@gmail.com";
        NetworkCred.Password = "gdpgroup4";
        smtp.UseDefaultCredentials = true;
        smtp.Credentials = NetworkCred;
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.Send(msg);
        smtp.Timeout = 25000;
        lblMsgformail.Text = "Please check your mail for OTP";
        lblMsgformail.Visible = true;
        lblEnterOtp.Visible = true;
        txtOtp.Visible = true;
        btnSubmit.Visible = true;
        lblOtp.Visible = false;
        lblUid.Visible = false;
        txtUid.Visible = false;
        btnGotp.Visible = false;



    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if(lblOtp.Text==txtOtp.Text)
        {
            lblnpass.Visible = true;
            txtNpass.Visible = true;
            btnUpdate.Visible = true;
            btnClose.Visible = true;

        }
        else
        {
            lblEnterOtp.Visible = true;
            txtOtp.Visible = true;
            btnSubmit.Visible = true;
            Response.Write("<script>alert('Please check your OTP and Try again')</script>");
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}