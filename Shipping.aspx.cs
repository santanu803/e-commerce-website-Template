using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Shipping : System.Web.UI.Page
{
    float Total;
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
        lblUid.Text = Session["uid"].ToString();

       


        if (!Page.IsPostBack)
        Total = 0; 



    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        
    }

    float totalPrice = 0;
    float fa;
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            float s = 10;
            totalPrice += Convert.ToSingle(DataBinder.Eval(e.Row.DataItem, "price"));
            fa = s + totalPrice;

        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[6].Text =fa.ToString() ;
            
          
            txtsalary.Text =fa.ToString();
                
            
        }

       
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
    }

    protected void btnCorder_Click(object sender, EventArgs e)
    {
        

        bool r = DbConnection.InsertData("insert into tblOrder values('" + txtOid.Text + "','" + txtName.Text + "','" + txtMno.Text + "','" + txtAddress.Text + "','" + txtLand.Text + "','" + txtPin.Text + "','" + ddlPmode.Text + "','"+txtPcard.Text+"','"+txtPstatus.Text+"','"+lblUid.Text+"','"+txtsalary.Text+"','"+"Confirmed"+"','"+txtOrderdate.Text+"','"+"waiting"+"')");
        if(r==true)
        {
            foreach (GridViewRow gvr in GridView1.Rows)
            {

                string iname = ((Label)gvr.FindControl("lblName")).Text;
                string iid = ((Label)gvr.FindControl("lblitemid")).Text;
                string iq = ((Label)gvr.FindControl("lblqunt")).Text;
                string iqu = ((Label)gvr.FindControl("lblqu")).Text;
                string price = ((Label)gvr.FindControl("lblSalary")).Text;
                string image = ((Label)gvr.FindControl("lblImage")).Text;
                //lblitemname.Text = iname;
                bool r1 = DbConnection.InsertData("insert into myOrder values('" + txtOid.Text + "','" +iid+ "','" +iname+ "','" +iq+ "','" +iqu+ "','" +price+ "','" +image+ "','" + Session["uid"].ToString() + "')");

                
            }
            DbConnection.FetchData("delete from tblCart where emailid='"+Session["uid"]+ "'");

          
            if (ddlPmode.Text == "Payback Card")
            {
                DataSet ds1 = DbConnection.FetchData("select balance from tblPcard where cardno='" + txtPcard.Text + "'");
                if (ds1.Tables[0].Rows.Count == 1)
                {
                    lblnpblance.Text = ds1.Tables[0].Rows[0]["balance"].ToString();
                    double PB = Convert.ToDouble(lblnpblance.Text);
                    double TB = Convert.ToDouble(txtsalary.Text);
                    if (TB <= PB)
                    {
                        txtPstatus.Text = "Done";
                        double nbalance = PB - TB;

                        DbConnection.InsertData("update tblPcard set balance='" + nbalance + "'where cardno='" + txtPcard.Text + "'");
                        Response.Redirect("Finish.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('youhave not sufficient money')</script>");
                    }
                }
            }
            else {

                if (txtPstatus.Text == "Done")
                {

                    DataSet ds = DbConnection.FetchData("select balance from tblPcard where cardno='" + txtPcard.Text + "'");
                    if (ds.Tables[0].Rows.Count == 1)
                    {
                        lblPbalance.Text = ds.Tables[0].Rows[0]["balance"].ToString();
                        double TP = Convert.ToDouble(txtsalary.Text);
                        double cashback = (2 * TP) / 100;

                        double pbalance = Convert.ToDouble(lblPbalance.Text);
                        double newbalance = pbalance + cashback;

                        //Session["cardno"] = txtPcard.Text;

                        //Session["orderid"] = txtOid.Text;
                        DbConnection.InsertData("update tblPcard set balance='" + newbalance + "'where cardno='" + txtPcard.Text + "'");
                        Session["cashback"] = "Your Cashback is recieved";
                        Response.Redirect("Finish.aspx");
                    }
                    else
                    {
                        Response.Redirect("Finish.aspx");
                    }
                }
                else
                {


                    Response.Redirect("Finish.aspx");
                }
            }
           }

       
    }

    protected void ddlPmode_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlPmode.SelectedValue == "Cash On Delivery")
        {
            txtPstatus.Text = "Payment Pending";
        }
        else if (ddlPmode.SelectedValue == "Online Banking")
        {
            txtPstatus.Text = "Done";
        }
        else if (ddlPmode.SelectedValue == "Debit Card")
        {
            txtPstatus.Text = "Done";
        }
        else if (ddlPmode.SelectedValue == "Cradit Card")
        {
            txtPstatus.Text = "Done";
        }
        else if (ddlPmode.SelectedValue == "Payback Card")
        {
            txtPstatus.Text = "Done";
        }
        else if (ddlPmode.SelectedValue == "Select One")
        {
            txtPstatus.Text = "NULL";
        }
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Label cid = ((Label)((ImageButton)sender).Parent.FindControl("lblcid"));
        Label itemid = ((Label)((ImageButton)sender).Parent.FindControl("lblitemid"));
        Label quantity = ((Label)((ImageButton)sender).Parent.FindControl("lblqunt"));
        Label qunit = ((Label)((ImageButton)sender).Parent.FindControl("lblqu"));
        if (qunit.Text == "kg")
        {
            DataSet ds = DbConnection.FetchData("select * from tblItem where itemid='" + itemid.Text + "'");
            var stock = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
            float oldstock = Convert.ToSingle(stock);
            float rstock = Convert.ToSingle(quantity.Text);
            float newstock = oldstock + rstock;
            var ss = ds.Tables[0].Rows[0]["stockStatus"].ToString();
            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock.ToString() + "'where itemid='" + itemid.Text + "' ");
            if (ss == "Out Of Stock")
            {
                DbConnection.InsertData("update tblItem set stockStatus='" + "Instock" + "'where itemid='" + itemid.Text + "' ");

            }

            DbConnection.FetchData("delete from tblCart where cid='" + Convert.ToInt32(cid.Text) + "'");
            Response.Redirect("Shipping.aspx");
         

        }

        else if (qunit.Text == "gm")
        {
            DataSet ds = DbConnection.FetchData("select * from tblItem where itemid='" + itemid.Text + "'");
            var stock = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
            float oldstock = Convert.ToSingle(stock);
            float rstock = Convert.ToSingle(quantity.Text);
            float newrstock = rstock / 1000;

            float newstock = oldstock + newrstock;
            var ss = ds.Tables[0].Rows[0]["stockStatus"].ToString();
            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock.ToString() + "'where itemid='" + itemid.Text + "' ");
            if (ss == "Out Of Stock")
            {
                DbConnection.InsertData("update tblItem set stockStatus='" + "Instock" + "'where itemid='" + itemid.Text + "' ");

            }

            DbConnection.FetchData("delete from tblCart where cid='" + Convert.ToInt32(cid.Text) + "'");
            Response.Redirect("Shipping.aspx");

        }

        else if (qunit.Text == "ltr")
        {
            DataSet ds = DbConnection.FetchData("select * from tblItem where itemid='" + itemid.Text + "'");
            var stock = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
            float oldstock = Convert.ToSingle(stock);
            float rstock = Convert.ToSingle(quantity.Text);
            float newstock = oldstock + rstock;
            var ss = ds.Tables[0].Rows[0]["stockStatus"].ToString();
            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock.ToString() + "'where itemid='" + itemid.Text + "' ");
            if (ss == "Out Of Stock")
            {
                DbConnection.InsertData("update tblItem set stockStatus='" + "Instock" + "'where itemid='" + itemid.Text + "' ");

            }

            DbConnection.FetchData("delete from tblCart where cid='" + Convert.ToInt32(cid.Text) + "'");
            Response.Redirect("Shipping.aspx");

        }
        else if (qunit.Text == "piece")
        {
            DataSet ds = DbConnection.FetchData("select * from tblItem where itemid='" + itemid.Text + "'");
            var stock = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
            float oldstock = Convert.ToSingle(stock);
            float rstock = Convert.ToSingle(quantity.Text);
            float newstock = oldstock + rstock;
            var ss = ds.Tables[0].Rows[0]["stockStatus"].ToString();
            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock.ToString() + "'where itemid='" + itemid.Text + "' ");
            if (ss == "Out Of Stock")
            {
                DbConnection.InsertData("update tblItem set stockStatus='" + "Instock" + "'where itemid='" + itemid.Text + "' ");

            }

            DbConnection.FetchData("delete from tblCart where cid='" + Convert.ToInt32(cid.Text) + "'");
            Response.Redirect("Shipping.aspx");

        }

    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {

    }
}