using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MakeBill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ddldelivery.Enabled = true;
        if(Session["oidb"]!=null)
        {
            lblOid.Text = Session["oidb"].ToString();
            ddldelivery.Text = "Online";
        }
        else
        {
            ddldelivery.Text = "Offline";
        }
            lblDate.Text = DateTime.Now.ToString("dd-MM-yy");

        lblShip.Visible = false;

        lblEname.Visible = false;
        lblName.Visible = false;

        lblEmobile.Visible = false;
        lblMobile.Visible = false;

        lblEadd.Visible = false;
        lblAdress.Visible = false;

        lblEland.Visible = false;
        lbllandmark.Visible = false;

        lblEpin.Visible = false;
        lblPin.Visible = false;






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



        if (ddldelivery.SelectedValue == "Online")
        {
            lblPmode.Text = "COD.    Pending";
            lblBRamount.Text = "N/A";
            lblBreturn.Text = "N/A";

            lblShip.Visible = true;

            lblEname.Visible = true;
            lblName.Visible = true;

            lblEmobile.Visible = true;
            lblMobile.Visible = true;

            lblEadd.Visible = true;
            lblAdress.Visible = true;

            lblEland.Visible = true;
            lbllandmark.Visible = true;

            lblEpin.Visible = true;
            lblPin.Visible = true;

            DataSet ds = DbConnection.FetchData("select * from tblOrder where oid='" + lblOid.Text + "'");

            lblName.Text = ds.Tables[0].Rows[0]["name"].ToString();
            lblMobile.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
            lblAdress.Text = ds.Tables[0].Rows[0]["address"].ToString();
            lbllandmark.Text = ds.Tables[0].Rows[0]["landmark"].ToString();
            lblPin.Text = ds.Tables[0].Rows[0]["pincode"].ToString();
        }

        if(Session["cname"]!=null)
        {
            txtEmail.Text = Session["cname"].ToString();
        }








    }

    protected void btnAdd_Click(object sender, ImageClickEventArgs e)
    {
        bool r = DbConnection.InsertData("insert into tblCart values('" + txtEmail.Text + "','" + lblId.Text + "','" + ddlName.Text + "','" + txtQ.Text + "','" + ddlU.Text + "','" + lblAmount.Text + "','"+""+"')");
        if (r == true)
        {
           if (ddlU.SelectedValue == "gm")
            {
                float quantity = Convert.ToSingle(txtQ.Text);
                float quantityinkg = quantity / 1000;



                DataSet ds = DbConnection.FetchData("select stockQuantity from tblItem where itemid='" + lblId.Text + "'");
                lbltotalstock.Text = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
                float stockquantity = Convert.ToSingle(lbltotalstock.Text);

                float newstock = stockquantity - quantityinkg;
                if (newstock > 0)
                {

                    DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblId.Text + "'");

                }
                else
                {
                    Response.Write("<script>alert('we have not suffient quantity of this product ')</script>");
                    DbConnection.InsertData("update tblItem set stockQuantity='" + "00" + "', stockStatus='" + "Out Of Stock" + "' where itemid='" + lblId.Text + "'");
                }
                // DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblPid.Text + "'");
            }
            else if (ddlU.SelectedValue == "kg")
            {
                float quantity = Convert.ToSingle(txtQ.Text);
                DataSet ds = DbConnection.FetchData("select stockQuantity from tblItem where itemid='" + lblId.Text + "'");
                lbltotalstock.Text = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
                float stockquantity = Convert.ToSingle(lbltotalstock.Text);

                float newstock = stockquantity - quantity;
                if (newstock > 0)
                {

                    DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblId.Text + "'");

                }
                else
                {
                    Response.Write("<script>alert('we have not suffient quantity of this product ')</script>");
                    DbConnection.InsertData("update tblItem set stockQuantity='" + "00" + "', stockStatus='" + "Out Of Stock" + "' where itemid='" + lblId.Text + "'");
                }
            }
            else if (ddlU.SelectedValue == "ltr")
            {
                float quantity = Convert.ToSingle(txtQ.Text);
                DataSet ds = DbConnection.FetchData("select stockQuantity from tblItem where itemid='" + lblId.Text + "'");
                lbltotalstock.Text = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
                float stockquantity = Convert.ToSingle(lbltotalstock.Text);

                float newstock = stockquantity - quantity;
                if (newstock > 0)
                {

                    DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblId.Text + "'");

                }
                else
                {
                    Response.Write("<script>alert('we have not suffient quantity of this product ')</script>");
                    DbConnection.InsertData("update tblItem set stockQuantity='" + "00" + "', stockStatus='" + "Out Of Stock" + "' where itemid='" + lblId.Text + "'");
                }
            }

            else if (ddlU.SelectedValue == "piece")
            {
                float quantity = Convert.ToSingle(txtQ.Text);
                DataSet ds = DbConnection.FetchData("select stockQuantity from tblItem where itemid='" + lblId.Text + "'");
                lbltotalstock.Text = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
                float stockquantity = Convert.ToSingle(lbltotalstock.Text);

                float newstock = stockquantity - quantity;
                if (newstock > 0)
                {

                    DbConnection.InsertData("update tblItem set stockQuantity='" + newstock + "' where itemid='" + lblId.Text + "'");

                }
                else
                {
                    Response.Write("<script>alert('we have not suffient quantity of this product ')</script>");
                    DbConnection.InsertData("update tblItem set stockQuantity='" + "00" + "', stockStatus='" + "Out Of Stock" + "' where itemid='" + lblId.Text + "'");
                }
            }
        }
    }

    protected void ddlName_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds = DbConnection.FetchData("select * from tblItem where iname='" + ddlName.Text + "'");
        lblId.Text = ds.Tables[0].Rows[0]["itemid"].ToString();
        lblPrice.Text = ds.Tables[0].Rows[0]["price"].ToString();
        lblpUnit.Text= ds.Tables[0].Rows[0]["ppu"].ToString();
    }

    protected void ddlU_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlU.SelectedValue == "kg")
        {
            float q = Convert.ToSingle(txtQ.Text);
            float p = Convert.ToSingle(lblPrice.Text);

            float bill = p * q;
            lblAmount.Text = bill.ToString();



           
        }


        else if (ddlU.SelectedValue == "gm")
        {

            float q = Convert.ToSingle(txtQ.Text);
            float p = Convert.ToSingle(lblPrice.Text);
            float bill = (q / 1000) * p;
            lblAmount.Text = bill.ToString();


            //float Ta = Convert.ToSingle(lblTbill.Text);
            //float Sa = Convert.ToSingle(lblSbill.Text);
            //float result = (Ta + Sa);
            //lblTamount.Text = result.ToString();

        }
        else if (ddlU.SelectedValue == "ltr")
        {
            float q = Convert.ToSingle(txtQ.Text);
            float p = Convert.ToSingle(lblPrice.Text);

            float bill = p * q;
            lblAmount.Text = bill.ToString();


            //float Ta = Convert.ToSingle(lblTbill.Text);
            //float Sa = Convert.ToSingle(lblSbill.Text);
            //float result = (Ta + Sa);
            //lblTamount.Text = result.ToString();
        }

        else if (ddlU.SelectedValue == "piece")
        {
            float q = Convert.ToSingle(txtQ.Text);
            float p = Convert.ToSingle(lblPrice.Text);

            float bill = p * q;
            lblAmount.Text = bill.ToString();


            //float Ta = Convert.ToSingle(lblTbill.Text);
            //float Sa = Convert.ToSingle(lblSbill.Text);
            //float result = (Ta + Sa);
            //lblTamount.Text = result.ToString();
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        GridView1.DataSourceID = SqlDataSource1.UniqueID;
    }
    float totalPrice = 0;
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            totalPrice += Convert.ToSingle(DataBinder.Eval(e.Row.DataItem, "price"));

        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[6].Text = totalPrice.ToString();
            lblTotalPrice.Text = totalPrice.ToString();


        }
    }

    //protected void btnSubmit_Click(object sender, EventArgs e)
    //{
    //    lblPmode.Text = ddlPmode.Text;
    //    lblBRamount.Text = txtRamount.Text;
    //    float ramount = Convert.ToSingle(txtRamount.Text);
    //    float totalamount = Convert.ToSingle(lblTotalPrice.Text);
    //    float mainreturn = ramount - totalamount;

    //    lblBreturn.Text = mainreturn.ToString();

    //}

    //protected void btnPrint_Click(object sender, ImageClickEventArgs e)
    //{
       
    //}

    protected void btnPrint_Click(object sender, ImageClickEventArgs e)
    {
        bool r1 = DbConnection.InsertData("insert into tblpaymentrecord values('" + lblInvno.Text + "','" + txtEmail.Text + "','" + lblDate.Text + "','" + lblTotalPrice.Text + "')");
        ScriptManager.RegisterStartupScript(this, GetType(), "Print", "Print()", true);

    }

    protected void ddldelivery_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void btnSubmit_Click1(object sender, ImageClickEventArgs e)
    {
        lblPmode.Text = ddlPmode.Text;
        lblBRamount.Text = txtRamount.Text;
        float ramount = Convert.ToSingle(txtRamount.Text);
        float totalamount = Convert.ToSingle(lblTotalPrice.Text);
        float mainreturn = ramount - totalamount;

        lblBreturn.Text = mainreturn.ToString();
    }

    protected void btnBack_Click(object sender, ImageClickEventArgs e)
    {
        if (ddldelivery.SelectedValue == "Online")
        {
            Session["oidb"] = null;
            Response.Redirect("AdminViewCart.aspx");
        }
        else
        {

            Response.Redirect("AdminPage.aspx");
        }
    }

    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
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
            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock.ToString() + "'where itemid='" + itemid.Text + "' ");


            DbConnection.FetchData("delete from tblCart where cid='" + Convert.ToInt32(cid.Text) + "'");
            Session["cname"] = txtEmail.Text;
            Response.Redirect("MakeBill.aspx");

        }

        else if (qunit.Text == "gm")
        {
            DataSet ds = DbConnection.FetchData("select * from tblItem where itemid='" + itemid.Text + "'");
            var stock = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
            float oldstock = Convert.ToSingle(stock);
            float rstock = Convert.ToSingle(quantity.Text);
            float newrstock = rstock / 1000;

            float newstock = oldstock + newrstock;
            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock.ToString() + "'where itemid='" + itemid.Text + "' ");


            DbConnection.FetchData("delete from tblCart where cid='" + Convert.ToInt32(cid.Text) + "'");
            Session["cname"] = txtEmail.Text;
            Response.Redirect("MakeBill.aspx");

        }

        else if (qunit.Text == "ltr")
        {
            DataSet ds = DbConnection.FetchData("select * from tblItem where itemid='" + itemid.Text + "'");
            var stock = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
            float oldstock = Convert.ToSingle(stock);
            float rstock = Convert.ToSingle(quantity.Text);
            float newstock = oldstock + rstock;
            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock.ToString() + "'where itemid='" + itemid.Text + "' ");


            DbConnection.FetchData("delete from tblCart where cid='" + Convert.ToInt32(cid.Text) + "'");
            Session["cname"] = txtEmail.Text;
            Response.Redirect("MakeBill.aspx");

        }
        else if (qunit.Text == "piece")
        {
            DataSet ds = DbConnection.FetchData("select * from tblItem where itemid='" + itemid.Text + "'");
            var stock = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
            float oldstock = Convert.ToSingle(stock);
            float rstock = Convert.ToSingle(quantity.Text);
            float newstock = oldstock + rstock;
            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock.ToString() + "'where itemid='" + itemid.Text + "' ");


            DbConnection.FetchData("delete from tblCart where cid='" + Convert.ToInt32(cid.Text) + "'");
            Session["cname"] = txtEmail.Text;
            Response.Redirect("MakeBill.aspx");

        }


    }
}