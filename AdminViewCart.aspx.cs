using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminViewCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnFinish.Visible = false;
        btnBill.Visible = false;
        
       lblOid.Text = Session["orderid"].ToString();


        DataSet ds=DbConnection.FetchData("select orderstatus from tblOrder where oid='"+Session["orderid"].ToString()+"'");
        lblStatus.Text= ds.Tables[0].Rows[0]["orderstatus"].ToString();




    }

   

    protected void btnFinish_Click(object sender, EventArgs e)
    {
        DbConnection.InsertData("update tblOrder set orderstatus='" + "Out for Delivery" + "' where oid='" + Session["orderid"].ToString() + "'");
        //DataSet ds = DbConnection.FetchData("select orderstatus from tblOrder where oid='" + Session["orderid"].ToString() + "'");
        //lblStatus.Text = ds.Tables[0].Rows[0]["orderstatus"].ToString();
        Response.Redirect("ShowOrder.aspx");
    }



    protected void btnUpdate_Click1(object sender, EventArgs e)
    {
        DbConnection.InsertData("update tblOrder set orderstatus='" + "Processing" + "' where oid='" + Session["orderid"].ToString() + "'");
        DataSet ds = DbConnection.FetchData("select orderstatus from tblOrder where oid='" + Session["orderid"].ToString() + "'");
        lblStatus.Text = ds.Tables[0].Rows[0]["orderstatus"].ToString();
        btnFinish.Visible = true;
        btnBill.Visible = true;
       
    }







   

    protected void btnBill_Click(object sender, EventArgs e)
    {
        DbConnection.InsertData("update tblOrder set orderstatus='" + "Ready for delivery" + "' where oid='" + Session["orderid"].ToString() + "'");
        DataSet ds = DbConnection.FetchData("select orderstatus from tblOrder where oid='" + Session["orderid"].ToString() + "'");
        lblStatus.Text = ds.Tables[0].Rows[0]["orderstatus"].ToString();

        if (lblPrice.Text =="0")
        {
            Session["oidb"] = lblOid.Text;
            Response.Redirect("MakeBill.aspx");
           
        }
        else
        {
            Response.Redirect("Bill.aspx");
        }

      


       
    }
    int totalPrice = 0;
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            totalPrice += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "price"));

        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            //e.Row.Cells[4].Text = totalPrice.ToString();
            lblPrice.Text = totalPrice.ToString();
            Session["tprice"] = totalPrice.ToString();
        }
    }
}