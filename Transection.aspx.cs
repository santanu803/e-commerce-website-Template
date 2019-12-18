using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Transection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDate.Text = DateTime.Now.ToString("dd/MM/yy");
        lblDate.Visible = false;
    }
    int totalPrice = 0;
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            totalPrice += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "amount"));

        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[3].Text = totalPrice.ToString();
          // lblAmount.Text= totalPrice.ToString();
        }
    }

    protected void btnChek_Click(object sender, EventArgs e)
    {
      //SqlDataReader san=DbConnection.FetchData("select invoiceno,date,amount from tblPaymentrecord where date='" + txtFrom.Text + "' ");

        
    }
}