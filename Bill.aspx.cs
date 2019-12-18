using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Bill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDate.Text = DateTime.Now.ToString("dd-MM-yy");
        //DateTime now = DateTime.Now;

        lbltprice.Visible = false;

        
       
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
            lblInvno.Text = otp;
        }

        lbluserid.Visible = false;

         bool r = DbConnection.InsertData("update tblOrder set invoiceno='" + lblInvno.Text + "' where oid=" + Session["orderid"].ToString() + "");
        if (r == true)
        {
            DataSet ds = DbConnection.FetchData("select * from tblOrder where oid='" + Session["orderid"].ToString()+ "'");

           lbluserid.Text= ds.Tables[0].Rows[0]["userid"].ToString();
            lblPmode.Text= ds.Tables[0].Rows[0]["paymentmode"].ToString();
            lblPstatus.Text= ds.Tables[0].Rows[0]["paymentstatus"].ToString();
            lblName.Text= ds.Tables[0].Rows[0]["name"].ToString();
            lblMobile.Text= ds.Tables[0].Rows[0]["mobile"].ToString();
            lblAdress.Text= ds.Tables[0].Rows[0]["address"].ToString();
            lbllandmark.Text= ds.Tables[0].Rows[0]["landmark"].ToString();
            lblPin.Text= ds.Tables[0].Rows[0]["pincode"].ToString();

              }


        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    float totalPrice = 10;
    
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
        if(e.Row.RowType==DataControlRowType.DataRow)
        {
            totalPrice += Convert.ToSingle(DataBinder.Eval(e.Row.DataItem, "price"));
            
        }
        else if(e.Row.RowType==DataControlRowType.Footer)
        {
            e.Row.Cells[4].Text = totalPrice.ToString();
            lbltprice.Text = totalPrice.ToString();
        }
    }



    int totalQuantity;


    protected void btnPrint_Click(object sender, ImageClickEventArgs e)
    {
        bool r1 = DbConnection.InsertData("insert into tblpaymentrecord values('" + lblInvno.Text + "','" + lblName.Text + "','" + lblDate.Text + "','" + lbltprice.Text + "')");
        ScriptManager.RegisterStartupScript(this, GetType(), "Print", "Print()", true);
    }
}