using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class MyCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if(Session["uid"]==null)
        {
            
        }
        
    }

    protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    

    protected void btnPorder_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Shipping.aspx");
    }

    protected void btnCshopping_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }



    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Label cid = ((Label)((ImageButton)sender).Parent.FindControl("lblcid"));
        Label itemid = ((Label)((ImageButton)sender).Parent.FindControl("lblitemid"));
        Label quantity = ((Label)((ImageButton)sender).Parent.FindControl("lblqunt"));
        Label qunit = ((Label)((ImageButton)sender).Parent.FindControl("lblqu"));
        if(qunit.Text=="kg")
        {
            DataSet ds = DbConnection.FetchData("select * from tblItem where itemid='" + itemid.Text + "'");
            var stock = ds.Tables[0].Rows[0]["stockQuantity"].ToString();
            float oldstock = Convert.ToSingle(stock);
            float rstock = Convert.ToSingle(quantity.Text);
            float newstock = oldstock + rstock;
            var ss=ds.Tables[0].Rows[0]["stockStatus"].ToString();
            DbConnection.InsertData("update tblItem set stockQuantity='" + newstock.ToString() + "'where itemid='" + itemid.Text + "' ");

            if(ss== "Out Of Stock")
            {
                DbConnection.InsertData("update tblItem set stockStatus='" + "Instock" + "'where itemid='" + itemid.Text + "' ");

            }

            DbConnection.FetchData("delete from tblCart where cid='" + Convert.ToInt32(cid.Text) + "'");

            Response.Redirect("MyCart.aspx");

        }

        else if(qunit.Text == "gm")
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
            Response.Redirect("MyCart.aspx");

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
            Response.Redirect("MyCart.aspx");

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
            Response.Redirect("MyCart.aspx");

        }





    }
}