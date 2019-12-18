using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class updatePstatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
        Label3.Visible = false;
        lblStatus.Visible = false;
        DropDownList1.Visible = false;
        btnUpdate.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        lblDelstatus.Visible = false;
        ddlDelivery.Visible = false;
        Label6.Visible = false;
        lblTbill.Visible = false;
        btnClose.Visible = false;
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
            DataSet ds = DbConnection.FetchData("select paymentstatus,orderstatus,totalbill,userid,ourcard from tblOrder where oid='" + txtOid.Text + "'");
            lblStatus.Text = ds.Tables[0].Rows[0]["paymentstatus"].ToString();
            lblDelstatus.Text = ds.Tables[0].Rows[0]["orderstatus"].ToString();
            lblTbill.Text = ds.Tables[0].Rows[0]["totalbill"].ToString();
            lblPbalance.Text = ds.Tables[0].Rows[0]["userid"].ToString();
            lblcardno.Text = ds.Tables[0].Rows[0]["ourcard"].ToString();
            //DataSet ds1= DbConnection.FetchData("select cardno where emailid='" + lblUid.Text + "'");
            //lblcardno.Text= ds.Tables[0].Rows[0]["cardno"].ToString();

            Label2.Visible = true;
            Label3.Visible = true;
            lblStatus.Visible = true;
            DropDownList1.Visible = true;
            btnUpdate.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            lblDelstatus.Visible = true;
            ddlDelivery.Visible = true;
            Label6.Visible = true;
            lblTbill.Visible = true;
            btnClose.Visible = true;
       
        
    }

   

    protected void btnUpdate_Click1(object sender, EventArgs e)
    {
        DbConnection.InsertData("update tblOrder set paymentstatus='" + DropDownList1.Text + "'where oid='" + txtOid.Text + "'");
        DbConnection.InsertData("update tblOrder set orderstatus='" + ddlDelivery.Text + "' where oid='" +txtOid.Text + "'");

        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedIndex==1)
        {
            
                double TP = Convert.ToDouble(lblTbill.Text);
                double cashback = (2 * TP) / 100;
                DataSet ds = DbConnection.FetchData("select balance from tblPcard where cardno='" + lblcardno.Text + "'");
               // lblPbalance.Text = ds.Tables[0].Rows[0]["balance"].ToString();
            if (ds.Tables[0].Rows.Count == 1)
            {
                lblPbalance.Text = ds.Tables[0].Rows[0]["balance"].ToString();
                double pbalance = Convert.ToDouble(lblPbalance.Text);
                double newbalance = pbalance + cashback;
                DbConnection.InsertData("update tblPcard set balance='" + newbalance + "'where cardno='" + lblcardno.Text + "'");
            }

        }
    }

    protected void btnClose_Click1(object sender, EventArgs e)
    {
        Response.Redirect("UpdateDeliverystatus.aspx");

    }
}